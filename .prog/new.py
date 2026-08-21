from pathlib import Path
import customtkinter as ctk
import subprocess
import math

PARTITIONS = Path(__file__).resolve().parent.parent
NUMBERS = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
VOICES  = {"S": "soprano", "A": "alto", "T": "tenor", "B": "bass", "H": "homme"}
PIANOSTAFFES = ["right", "left", "pedal"]
PIANOFRANCAISSTAFFES = ["Main droite", "Main gauche", "Pédalier"]
RYTHM = ["𝅝", "𝅗𝅥", "𝅘𝅥", "𝅘𝅥𝅮", "𝅘𝅥𝅯"]

class HeaderTab(ctk.CTkFrame):
    def __init__(self, master, app):
        super().__init__(master)
        self.app = app
        self.default_font = app.default_font
        self.filename_modified = False

        self.fields = {
            "dedication":   "Dédicace",
            "title":        "Titre",
            "subtitle":     "Sous-titre",
            "subsubtitle":  "Sous-sous-titre",
            "instrument":   "Instrument",
            "composer":     "Compositeur",
            "poet":         "Paroles",
            "meter":        "Mètre",
            "arranger":     "Arrangeur",
            "copyright":    "Copyrights (en première page)",
            "tagline":      "Slogan (en dernière page)"
        }
        self.available_fields = []
        
        for field in self.fields:
            frame = ctk.CTkFrame(self, fg_color="transparent")
            self.fields[field] = {
                "name": self.fields[field],
                "var": ctk.StringVar(),
                "frame": frame,
                "remove": ctk.CTkButton(frame, text="-", width=28, height=28, fg_color="#E57373", hover_color="#EF9A9A", command=lambda k=field: self.remove_field(k))
            }

            if field == "composer":
                self.fields[field]["entry"] = ctk.CTkComboBox(
                    frame, width=260, height=28, font=self.default_font,
                    variable=self.fields[field]["var"],
                    values=list(self.get_composers().keys())
                )
            else:
                self.fields[field]["entry"] = ctk.CTkEntry(frame, width=260, height=28, font=self.default_font, textvariable=self.fields[field]["var"])
            self.fields[field]["remove"].pack(side="left", padx=10)
            self.fields[field]["entry"].pack(side="left", padx=0)
            ctk.CTkLabel(frame, text=self.fields[field]["name"], font=self.default_font
                         ).pack(side="left", padx=5, anchor="w")
            
            if field in ("title", "composer"):
                frame.pack(pady=4, anchor="w")
            else:
                self.available_fields.append(field)

        self.add_field_var = ctk.StringVar()
        self.add_field_menu = ctk.CTkOptionMenu(
            self, values=[self.fields[key]["name"] for key in self.available_fields], variable=self.add_field_var,
            width=40, font=self.default_font,command=self.on_optional_field_selected
        )
        self.add_field_menu.set("+")
        self.add_field_menu.pack(padx=10, pady=10, anchor="w")

        ctk.CTkLabel(self, text="Catégorie").pack(side="top", pady=10, anchor="w")
        self.categories = self._get_categories()
        self.category_var = ctk.StringVar(value=self.categories[0] if self.categories else "X_Autres")
        
        for cat in self.categories:
            ctk.CTkRadioButton(
                self, text=cat[3:], variable=self.category_var, value=cat,
                font=self.default_font, command=self.on_category_change,
                radiobutton_height=15, radiobutton_width=15
            ).pack(side="top", padx=5, pady=2, anchor="w")
        
        filename_frame = ctk.CTkFrame(self, fg_color="transparent")
        self.filename_var = ctk.StringVar()
        entry_filename = ctk.CTkEntry(filename_frame, width=260, height=28, font=self.default_font, textvariable=self.filename_var)
        entry_filename.pack(side="left", padx=0)
        entry_filename.bind("<KeyRelease>", self.on_filename_edit)
        filename_frame.pack(pady=4, padx=20, anchor="w")
        ctk.CTkLabel(filename_frame, text="Nom du fichier", font=self.default_font, width=100).pack(side="left", padx=(0, 10))
        
        self.fields["title"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.fields["composer"]["var"].trace_add("write", self.on_title_or_composer_change)


    def set_instrument_with_category(self, parts, *choice):
        for instrument in parts:
            if instrument in choice:
                parts[instrument]["btn"].select()
            else:
                parts[instrument]["btn"].deselect()

    def on_category_change(self):
        choice=self.category_var.get()
        parts = self.app.parts_tab.parts
        if choice == "Piano":
            self.set_instrument_with_category(parts, "Clavier", "Flûte")
            self.app.parts_tab.clavier_changed()
        elif choice in ("Chorale", "Chants populaires", "Noël"):
            self.set_instrument_with_category(parts, "Choeur")
            parts["Choeur"]["schema"].set("SA-TB")
            parts["Choeur"]["meme_paroles"].set(True)
        if choice in ("Chants populaires", "Chorale"):
            self.app.parts_tab.schema_voices_changed()
        self.app.parts_tab.update_parts_ui()

    def build_default_filename(self):
        title = self.fields["title"]["var"].get().strip()
        composer = self.fields["composer"]["var"].get().strip()
        if title and composer:
            return f"{title} - {composer}.ly"
        if title:
            return f"{title}.ly"
        if composer:
            return f"Sans titre - {composer}.ly"
        return ""

    def on_title_or_composer_change(self, *_args):
        if not self.filename_modified:
            default_name = self.build_default_filename()
            self.filename_var.set(default_name)

    def on_filename_edit(self, _event=None):
        self.filename_modified = True

    def on_optional_field_selected(self, selected_label: str):
        selected_key = next(
            (key for key, info in self.fields.items() if info["name"] == selected_label),
            None,
        )
        
        insert_before_widget = None
        all_keys = list(self.fields.keys())
        selected_index = all_keys.index(selected_key)

        for key in all_keys[selected_index + 1:]:
            if self.fields[key]["frame"].winfo_manager() == "pack":
                insert_before_widget = self.fields[key]["frame"]
                break

        self.fields[selected_key]["frame"].pack(
            before=(insert_before_widget if insert_before_widget else self.add_field_menu),
            pady=4, anchor="w")
        
        self.available_fields.remove(selected_key)
        
        updated_values = [self.fields[key]["name"] for key in self.available_fields]
        self.add_field_menu.configure(values=updated_values)
        self.add_field_var.set("+")

    def remove_field(self, key: str):
        field_info = self.fields[key]
        field_info["frame"].pack_forget()
        field_info["var"].set("")
        
        self.available_fields.append(key)
        self.available_fields.sort(key=lambda k: list(self.fields.keys()).index(k))
        
        updated_values = [self.fields[key]["name"] for key in self.available_fields]
        self.add_field_menu.configure(values=updated_values)
        self.add_field_var.set("+")

    def get_target_filename(self) -> str:
        filename = self.filename_var.get().strip()
        if not filename:
            filename = "Sans titre.ly"
        elif "." not in filename:
            filename += ".ly"
        return filename

    def _get_categories(self) -> list[str]:
        categories = [
            entry.name for entry in PARTITIONS.iterdir()
            if entry.name[:2].isdecimal()
            and entry.name[:2] not in ("09", "08", "99")
        ]
        categories.sort(key=str.casefold)
        return categories or ["X_Autres"]

    def get_composers(self):
        file_composers = Path(PARTITIONS / ".utils" / "composers.ily")
        content = file_composers.read_text()
        content = content.removeprefix("\\version \"2.26.0\"\n\n")
        content = [line.split(" = ") for line in content.splitlines()]
        for i, val in enumerate(content):
            content[i][0] = "\\"+content[i][0]
        return dict(content)

    
class PartsTab(ctk.CTkFrame):
    def __init__(self, master, app):
        super().__init__(master)
        self.app = app
        self.default_font = app.default_font

        left_frame = ctk.CTkFrame(self)
        left_frame.pack(side="left", fill="y", padx=(0, 10))
        
        right_frame = ctk.CTkFrame(self)
        right_frame.pack(side="left", fill="both", expand=True)

        self.parts = {
            "Flûte": {
                "paroles": ctk.BooleanVar(value=False)
            },
            "Solo": {
                "couplets": ctk.IntVar(value=1)
            },
            "Choeur": {
                "schema": ctk.StringVar(value="SA-TB"),
                "couplets": ctk.IntVar(value=1),
                "meme_paroles": ctk.BooleanVar(value=True)
            },
            "Clavier": {
                "type": ctk.StringVar(value="Piano"),
                "staffs": [ctk.IntVar(value=1), ctk.IntVar(value=1), ctk.IntVar(value=1)]
            }
        }

        for part in self.parts:
            self.parts[part]["btn"] = ctk.CTkCheckBox(
                left_frame, text=part, font=self.default_font,
                command=self.update_parts_ui
            )
            self.parts[part]["btn"].pack(pady=3, padx=10)
            
            voice_frame = ctk.CTkFrame(right_frame)
            self.parts[part]["frame"] = voice_frame
            
            ctk.CTkLabel(voice_frame, text=part, font=("Arial", 12, "bold"), width=70, anchor="w").pack(side="top", padx=15, pady=(8, 2), anchor="w")
            
            if part in ("Solo", "Choeur"):
                couplets_frame = ctk.CTkFrame(voice_frame, fg_color="transparent")
                ctk.CTkLabel(couplets_frame, text="Couplets :", font=self.default_font).pack(side="left", padx=(0, 5), pady=0)
                ctk.CTkEntry(couplets_frame, width=50, height=28, font=self.default_font,
                             textvariable=self.parts[part]["couplets"], justify="center").pack(side="left", padx=5, pady=0)
                couplets_frame.pack(side="top", padx=15, pady=2, anchor="w")
            
            if part == "Choeur":
                ctk.CTkComboBox(
                    voice_frame, variable=self.parts[part]["schema"],
                    values=("SA-TB", "S-A-T-B", "SA-H","S-S-A", "T-T-B", "T-T-B-B")
                ).pack(side="top", padx=15, pady=5, anchor="w")
                self.parts[part]["schema"].trace_add("write", self.schema_voices_changed)

                self.parts[part]["meme_paroles_switch"] = ctk.CTkCheckBox(
                    voice_frame, text="Même paroles pour toutes les voix", font=self.default_font,
                    variable=self.parts[part]["meme_paroles"]
                )
            
            elif part == "Clavier":
                ctk.CTkOptionMenu(
                    voice_frame, width=100, height=28, variable=self.parts[part]["type"],
                    values=("Piano", "Orgue"), command=self.clavier_changed
                ).pack(side="top", padx=15, pady=(2, 8), anchor="w")
                self.piano_staffes = []
                for indice, staff in enumerate(PIANOFRANCAISSTAFFES):
                    self.piano_staffes.append(ctk.CTkFrame(voice_frame, fg_color="transparent"))
                    ctk.CTkEntry(
                        self.piano_staffes[indice],
                        textvariable=self.parts["Clavier"]["staffs"][indice]
                    ).pack(side="left", padx=5)
                    ctk.CTkLabel(
                        self.piano_staffes[indice],
                        text=staff, font=self.default_font
                    ).pack(side="left")
                    if indice < 2:
                        self.piano_staffes[indice].pack(side="top", pady=5, anchor="w")
            
            elif part == "Flûte":
                ctk.CTkCheckBox(
                    voice_frame, text="Paroles", font=self.default_font,
                    variable=self.parts[part]["paroles"]
                ).pack(side="top", padx=15, pady=(2, 8), anchor="w")


    def schema_voices_changed(self, *args):
        switch = self.parts["Choeur"]["meme_paroles_switch"]
        if self.parts["Choeur"]["schema"].get().count("-") > 1:
            switch.pack(side="top", padx=15, pady=(2, 8), anchor="w")
        else:
            switch.pack_forget()

    def clavier_changed(self, *args):
        organ_voices = self.piano_staffes[2]
        ispacked = organ_voices.winfo_manager() == "pack"
        if self.parts["Clavier"]["type"].get() == "Piano":
            if ispacked:
                organ_voices.pack_forget()
        else:
            if not ispacked:
                organ_voices.pack(side="top", pady=5, anchor="w")

    def update_parts_ui(self):
        order = list(self.parts.keys())
        for i, part in enumerate(order):
            frame = self.parts[part]["frame"]
            is_active = self.parts[part]["btn"].get() == 1
            is_visible = frame.winfo_manager() == "pack"
            
            if is_active and not is_visible:
                frame.pack(fill="x", pady=4, padx=10,
                           before=next((self.parts[p]["frame"] for p in order[i+1:] if self.parts[p]["frame"].winfo_manager() == "pack"), None))
            elif not is_active and is_visible:
                frame.pack_forget()

class MusicTab(ctk.CTkFrame):
    def __init__(self, master, app):
        super().__init__(master)
        self.app = app
        self.default_font = app.default_font
        
        self.vars = {
            "Armure": {
                "var": ctk.StringVar(value="c"),
                "val": ["c", "cis", "d", "dis", "e", "f", "fis", "g", "gis", "a", "bes", "b"],
                "ly": "key"
            },
            "Chiffre de mesure": {
                "var": ctk.StringVar(value="4/4"),
                "val": ["4/4", "2/2", "2/4", "3/4", "3/2", "6/8", "9/8", "12/8"],
                "ly": "time"
            },
            "Anacrouse": {
                "def": "0",
                "var": ctk.StringVar(value="0"),
                "val": ["0"] + [str(2**i) for i in range(5)] + [str(2**i)+"." for i in range(5)],
                "ly": "partial"
            },
            "Indication de tempo": {
                "def": "",
                "var": ctk.StringVar(value=""),
                "val": ["Lento", "Adagio", "Andante", "Maestoso", "Presto", "Allegro", "Andantino", "Adagio ma non troppo"],
                "ly":"tempo"
            },
            "Tempo du midi": {
                "var": ctk.StringVar(value="70")
            }
        }

        for texte in self.vars:
            frame = ctk.CTkFrame(self, fg_color="transparent")
            
            if "val" in self.vars[texte]:
                ctk.CTkComboBox(
                    frame, variable=self.vars[texte]["var"],
                    values=self.vars[texte]["val"]
                ).pack(side="left", padx=5)
            else:
                ctk.CTkEntry(
                    frame, font=self.default_font,
                    textvariable=self.vars[texte]["var"],
                ).pack(side="left", padx=5)
            
            ctk.CTkLabel(
                frame, font=self.default_font, text=texte
            ).pack(side="left", padx=5)
            frame.pack(side="top", pady=5, anchor="w")

def Voice(voice, indice):
    return (
        (" " if indice is None else "\t\t") +
        f'\\new Voice = "{VOICES[voice]}" '+ '{' +
        (f"\\voice{NUMBERS[indice]} " if indice is not None else "") +
        f"\\{VOICES[voice]} " + "}\n"
    )

def strophemode(nb):
    return f"\\strophemode {nb+1} ##{"t" if nb%2 else "f"}" + " \\lyricmode {\n\t\n}\n\n"

def lyricName(voice, nb, to_voice):
    return f"{VOICES[voice] if to_voice else ""}Verse{NUMBERS[nb]}"

def Lyrics(voice, nb, to_voice: bool):
    return (
        "\t\\new Lyrics \\with { \\override VerticalAxisGroup.staff-affinity = #CENTER\n\t}"
        f' \\lyricsto "{VOICES[voice]}" \\{lyricName(voice, nb, to_voice)}\n'
    )

def ChoirVars(schema: str, lyrics: int, same_lyrics: bool):
    st = ""
    parts = schema.replace("-", "")
    for voice in parts:
        st += (
            f"{VOICES[voice]} = \\"
            f"{"relative" if voice == "T" else "fixed"}"
            f" c{"" if voice in "BH" else "'"}"
            " {\n\t\\global\n\t\n}\n"
        )
        if not same_lyrics:
            for nb in range(lyrics):
                st += f"{lyricName(voice, nb, True)} = {strophemode(nb)}"
        st += "\n"
    if same_lyrics:
        for nb in range(lyrics):
            st += f"{lyricName(voice, nb, False)} = {strophemode(nb)}"
    st += "\n"
    return st


def ChoirStaff(schema: str, lyrics: int, same_lyrics: bool):
    staffes = schema.split("-")
    st = "ChoeurPart = \\new ChoirStaff <<\n"
    
    for nb, staff in enumerate(staffes):
        polyph = len(staff) > 1
        
        st += (
            "\t\\new Staff \\with {\n"
            "\t\tmidiInstrument = \"choir aahs\"\n"
        )
        if any(len(stf) != 2 for stf in staffes):
            st += "\t\tinstrumentName = "
            if polyph:
                st += "\\markup \\center-column { "
                for voice in staff:
                    st += f"\"{voice}.\" "
                st += "}\n"
            else:
                st += f'"{staff}."\n'  
        if polyph:
            st += "\t\t\\consists Merge_rests_engraver\n"
        else:
            st += '\t\t\\consists "Ambitus_engraver"\n'
        
        if "B" in staff or "H" in staff:
            st += "\t\t\\clef bass\n"
        elif staff == "T":
            st += "\t\t\\clef \"treble_8\"\n"

        st += "\t} "

        if polyph:
            st += "<<\n"
            for indice, voice in enumerate(staff):
                st += Voice(voice, indice)
            st += "\t>>\n"
        else:
            st += Voice(staff, None)
        
        if (len(staffes) > 2 and same_lyrics) or nb == 0:
            for lyr in range(lyrics):
                st += Lyrics(staff[0], lyr, not same_lyrics)
            st += "\n"
    st += ">>\n\n"
    return st

def ChoirPack(part):
    schema, lyrics, same_lyrics = part["schema"].get(), part["couplets"].get(), part["meme_paroles"].get()
    return ChoirVars(schema, lyrics, same_lyrics)+ChoirStaff(schema, lyrics, same_lyrics)


def pianoPartName(num, indice):
    return PIANOSTAFFES[num]+(NUMBERS[indice] if indice != None else "")

def PianoVars(staffes):
    st = ""
    for nb, staff in enumerate(staffes):
        if staff != 0:
            if staff == 1:
                st += (
                    pianoPartName(nb, None) + " = \\fixed c" +
                    ("'" if nb > len(staffes)/2 else "") + " {\n"
                    "\t\\global\n"
                    "\t\n}\n\n"
                )
            else:
                for indice in range(staff):
                    st += (
                        pianoPartName(nb, indice) + " = \\fixed c" +
                        ("'" if nb > len(staffes)/2 else "") + " {\n"
                        "\t\\global\n"
                        "\t\n}\n\n"
                    )
    return st

def PianoStaff(staffes):
    st = (
        "ClavierPart = \\new PianoStaff \\with {\n"
        f'\tinstrumentName = "'+("Org" if len(staffes) == 3 else "Pian")+'."\n'
        f'\tmidiInstrument = "{'acoustic grand' if len(staffes) == 2 else 'church organ'}"\n'
        "} <<\n"
    )
    for num, staff in enumerate(staffes):
        if staff != 0:
            st += (
                f'\t\\new Staff = "{PIANOSTAFFES[num]}" '+
                ("{ \\clef bass " if num > staff/2 else "{ ")
                )
            if staff == 1:
                st += "\\"+pianoPartName(num, None)+" }\n"
            else:
                st += "<< "
                for voice in range(staff):
                    st += "\\" + pianoPartName(num, voice) + (" \\\\ " if voice < staff-1 else "")
                st += ">> }\n"
    return st + ">>\n\n"


def PianoPack(staffes):
    return PianoVars(staffes)+PianoStaff(staffes)


def SoloVars(lyrics):
    st = (
        "soloVoice = \\fixed c' {\n"
        "\t\\global\n"
        "\t\\dynamicUp\n"
        "\t\n"
        "}\n\n"
    )
    for lyr in range(lyrics):
        st += f"soloVerse{NUMBERS[lyr]} = {strophemode(lyr)}"
    return st

def SoloStaff(lyrics):
    st = (
        "SoloPart = \\new Staff \\with {\n"
        '\tinstrumentName = "Solo"\n'
        '\tshortInstrumentName = "Sl."\n'
        '\tmidiInstrument = "choir aahs"\n'
        '\t\\consists "Ambitus_engraver"\n'
        "} \\soloVoice\n"
    )
    for lyr in range(lyrics):
        st += f"\\addlyrics \\soloVerse{NUMBERS[lyr]}\n"
    return st+"\n\n"

def SoloPack(lyrics):
    return SoloVars(lyrics) + SoloStaff(lyrics)


def FluteVars(lyrics):
    st = (
        "flute = \\fixed c' {\n"
        "\t\\global\n"
        "\t\n"
        "}\n\n"
    )
    if lyrics:
        st += (
            "fluteVerse = \\lyricmode {\n"
            "\t\n}\n\n"
        )
    return st

def FluteStaff(lyrics):
    st = (
        "FlûtePart = \\new Staff \\with {\n"
        '\tinstrumentName = "Flûte"\n'
        '\tshortInstrumentName = "Fl."\n'
        '\tmidiInstrument = "flute"\n'
        "} \\flute\n"
    )
    if lyrics:
        st += "\\addlyrics \\fluteVerse\n"
    return st+"\n\n"

def FlutePack(lyrics):
    return FluteVars(lyrics)+FluteStaff(lyrics)


class LilypondCreator(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Assistant de création de partition Lilypond")
        self.geometry("500x650")

        self.default_font = ("Arial", 12)
        self.alert_same_path = True
        tabview = ctk.CTkTabview(self, anchor="nw")
        tabview.pack(padx=10, pady=(10, 0), fill="both", expand=True, side="top")
        self.header_tab = HeaderTab(tabview.add("Titres et en-têtes"), self)
        self.parts_tab = PartsTab(tabview.add("Parties"), self)
        self.music_tab = MusicTab(tabview.add("Réglages musicaux"), self)

        self.header_tab.pack(fill="both", expand=True)
        self.parts_tab.pack(fill="both", expand=True)
        self.music_tab.pack(fill="both", expand=True)

        button_frame = ctk.CTkFrame(self)
        ctk.CTkButton(button_frame, text="Créer", width=160, font=self.default_font, command=self.create_lilypond_file).pack(side="left", padx=(0, 10))
        ctk.CTkButton(button_frame, text="Annuler", width=120, font=self.default_font, fg_color="#ff0000", hover_color="#8f8f8f", command=self.destroy).pack(side="left")
        button_frame.pack(pady=15)

    def create_lilypond_file(self):
        values = {}
        for key, field in self.header_tab.fields.items():
            if field["frame"].winfo_manager() == "pack":
                value = field["var"].get().strip()
                values[key] = value

        filename = self.header_tab.get_target_filename()
        category = self.header_tab.category_var.get().strip() or "X_Autres"
        
        folder_name = Path(filename).stem
        target_folder = PARTITIONS / category / folder_name
        
        try:
            target_folder.mkdir(parents=True, exist_ok=True)
            self.filepath = target_folder / filename
            if self.filepath.exists() and self.alert_same_path:
                if filename == "Sans titre.ly":
                    new_name, i = "Sans titre ({})", 1
                    while Path(new_name.format(i)).exists():
                        i += 1
                    self.filepath = target_folder / new_name.format(i)
                else:
                    raise OSError(f"Le fichier '{filename}' existe déjà dans la catégorie '{category}'. Veuillez modifier le nom du fichier.")
            
            content = (
                "\\version \"2.26.0\"\n"
                "\\include \"settings.ily\"\n"
                "\\include \"composers.ily\"\n"
                "\n"
                "global = {\n"
                "\t\\autoBeamOff\n"
                "\t\\mergeDifferentlyHeadedOn\n"
                "\t\\mergeDifferentlyDottedOn\n"
            )
            for settings in self.music_tab.vars.values():
                if "ly" in settings and ("def" not in settings or settings["var"].get() != settings["def"]):
                    content += (
                        f"\t\\{settings["ly"]} {'"' if settings["ly"] == "tempo" else ""}"
                        f"{settings["var"].get()}{'"' if settings["ly"] == "tempo" else ""}" +
                        (" \\major" if settings["ly"] == "key" else "") + "\n"
                    )
            content += "}\n\n"
            
            voices_parts = {k: v for k, v in self.parts_tab.parts.items() if v["btn"].get()}
            for part in voices_parts:
                if part == "Choeur":
                    content += ChoirPack(voices_parts[part])
                elif part == "Clavier":
                    content += PianoPack(
                        [voice.get() for voice in voices_parts["Clavier"]["staffs"]][:2 + (voices_parts["Clavier"]["type"].get() == "Orgue")]
                    )
                elif part == "Solo":
                    content += SoloPack(voices_parts[part]["couplets"].get())
                elif part == "Flûte":
                    content += FlutePack(voices_parts[part]["paroles"].get())
            
            content += "\n"     
            if values.get("title"):
                if values.get("composer"):
                    content += f'\\tocItemComposer "{values["title"]}" "{values["composer"]}"\n'
                else:
                    content += f'\\tocItem \\markup "{values["title"]}\n'
            
            content += (
                "\\score {\n"
                "\t\\header {\n"
            )
            for key, val in values.items():
                if key == "composer" and val != "" and val[0] == "\\":
                    content += f'\t\t{key} = {val}\n'
                else:
                    content += f'\t\t{key} = "{val.upper() if key == "title" else val}"\n'
            content += "\t}\n"

            if len(voices_parts) == 1:
                content += f"\t\\{part}Part\n"
            else:
                content += "\t<<\n"
                for part in voices_parts:
                    content += f"\t\t\\{part}Part\n"
                content += "\t>>\n"
            content += (
                "\t\\layout {\\context{\\Staff \\RemoveAllEmptyStaves }}\n"
                "\t\\midi {\\tempo 4=" + self.music_tab.vars["Tempo du midi"]["var"].get() + " }\n"
                "}\n"
            )
            self.filepath.write_text(content)
            self.happy_end()

        except OSError as error:
            self.error_window = ctk.CTkToplevel(self)
            self.error_window.title("Erreur de création")
            self.error_window.resizable(False, False)
            
            ctk.CTkLabel(
                self.error_window, text=f"Une erreur est survenue :\n{str(error)}", 
                text_color="#D32F2F", wraplength=360, justify="center", font=self.default_font
            ).pack(expand=True, fill="both", pady=20, padx=20)
            
            btn_frame = ctk.CTkFrame(self.error_window)
            ctk.CTkButton(
                btn_frame, text="Rééssayer",
                font=self.default_font, command=self.relaunch
            ).pack(side="left")
            ctk.CTkButton(
                btn_frame, text="Ecraser le fichier existant",
                font=self.default_font, command=self.ecrase
            ).pack(side="left", padx=5)
            ctk.CTkButton(
                btn_frame, text="Travailler sur le fichier existant",
                font=self.default_font, command=self.happy_end
            ).pack(side="left", padx=5)
            btn_frame.pack(pady=10)


    def happy_end(self):
        subprocess.Popen(["frescobaldi", str(self.filepath)])
        self.destroy()
    
    def ecrase(self):
        self.alert_same_path = False
        self.create_lilypond_file()

    def relaunch(self):
        self.error_window.destroy()
        self.create_lilypond_file()

LilypondCreator().mainloop()
