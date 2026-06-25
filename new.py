from pathlib import Path
import customtkinter as ctk
import subprocess
ctk.set_appearance_mode("System")
ctk.set_default_color_theme("blue")


class HeaderTab(ctk.CTkFrame):
    def __init__(self, master, app):
        super().__init__(master, fg_color="transparent")
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
            "meter":        "Tempo",
            "arranger":     "Arrangeur",
            "copyright":    "Copyrights (en première page)",
            "tagline":      "\"tagline\" (en dernière page)"
        }
        self.available_fields = list(self.fields.keys())
        
        for field in self.fields:
            frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
            self.fields[field] = {
                "name": self.fields[field],
                "label": ctk.CTkLabel(frame, text=self.fields[field], font=self.default_font, width=100),
                "var": ctk.StringVar(),
                "frame": frame,
                "hidden": field not in ("title", "composer", "poet"),
                "remove": ctk.CTkButton(frame, text="-", width=28, height=28, fg_color="#E57373", hover_color="#EF9A9A", command=lambda k=field: self.remove_field(k))
            }

            self.fields[field]["entry"] = ctk.CTkEntry(frame, width=260, height=28, font=self.default_font, textvariable=self.fields[field]["var"])
            self.fields[field]["remove"].pack(side="right", padx=(10, 0))
            self.fields[field]["label"].pack(side="left", padx=(0, 10))
            self.fields[field]["entry"].pack(side="left", padx=0)
            
            if not self.fields[field]["hidden"]:
                frame.pack(pady=4, padx=20, anchor="w")
                self.available_fields.remove(field)

        self.add_field_var = ctk.StringVar()
        self.add_field_menu = ctk.CTkOptionMenu(
            self, values=[self.fields[key]["name"] for key in self.available_fields], variable=self.add_field_var, width=40,
            height=28, font=self.default_font,command=self.on_optional_field_selected
        )
        self.add_field_menu.set("+")
        self.add_field_menu.pack(pady=(8, 4), padx=20, anchor="w")
  
        category_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        ctk.CTkLabel(category_frame, text="Catégorie", font=self.default_font, width=100).pack(side="left", padx=(0, 10))
        self.categories = self._get_categories()
        self.category_var = ctk.StringVar(value=self.categories[0] if self.categories else "Autres")
        
        ctk.CTkOptionMenu(category_frame, values=self.categories, variable=self.category_var, width=260, height=28,
                          font=self.default_font, command=self.on_category_change).pack(side="left", padx=0)
        category_frame.pack(pady=4, padx=20, anchor="w")

        filename_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        ctk.CTkLabel(filename_frame, text="Nom du fichier :", font=self.default_font, width=100).pack(side="left", padx=(0, 10))
        self.filename_var = ctk.StringVar()
        entry_filename = ctk.CTkEntry(filename_frame, width=260, height=28, font=self.default_font, textvariable=self.filename_var)
        entry_filename.pack(side="left", padx=0)
        filename_frame.pack(pady=4, padx=20, anchor="w")
        entry_filename.bind("<KeyRelease>", self.on_filename_edit)

        self.fields["title"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.fields["composer"]["var"].trace_add("write", self.on_title_or_composer_change)

        self.pack(fill="both", expand=True)


    def set_instrument_with_category(self, parts, *choice):
        for instrument in parts:
            if instrument in choice:
                parts[instrument]["btn"].select()
            else:
                parts[instrument]["btn"].deselect()

    def on_category_change(self, choice: str):
        parts = self.app.parts_tab.parts
        if choice == "Piano":
            self.set_instrument_with_category(parts, "Clavier", "Flûte")
        elif choice in ("Chorale", "Chants populaires", "Noël"):
            self.set_instrument_with_category(parts, "Choeur")
        if choice == "Chants populaires":
            parts["Choeur"]["schema"].set("SA-TB")
            parts["Choeur"]["meme_paroles"].set(True)
        elif choice == "Chorale":
            parts["Choeur"]["schema"].set("S-A-T-B")
            parts["Choeur"]["meme_paroles"].set(True)
        self.app.parts_tab.update_parts_ui()

    def build_default_filename(self):
        title = self.fields["title"]["var"].get().strip()
        composer = self.fields["composer"]["var"].get().strip()
        if title and composer:
            return f"{title} - {composer}.ly"
        if title:
            return f"{title}.ly"
        if composer:
            return f"{composer}.ly"
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
            if not self.fields[key]["hidden"]:
                insert_before_widget = self.fields[key]["frame"]
                break

        if insert_before_widget:
            self.fields[selected_key]["frame"].pack(pady=4, padx=20, anchor="w", before=insert_before_widget)
        else:
            self.fields[selected_key]["frame"].pack(pady=4, padx=20, anchor="w", before=self.add_field_menu)

        self.fields[selected_key]["hidden"] = False
        self.available_fields.remove(selected_key)
        
        updated_values = [self.fields[key]["name"] for key in self.available_fields]
        self.add_field_menu.configure(values=updated_values)
        self.add_field_var.set("+")

    def remove_field(self, key: str):
        field_info = self.fields[key]
        field_info["frame"].pack_forget()
        field_info["var"].set("")
        field_info["hidden"] = True

        self.available_fields.append(key)
        self.available_fields.sort(key=lambda k: list(self.fields.keys()).index(k))
        
        updated_values = [self.fields[key]["name"] for key in self.available_fields]
        self.add_field_menu.configure(values=updated_values)
        self.add_field_var.set("+")

    def get_target_filename(self) -> str:
        filename = Path(self.filename_var.get().strip()).name
        if not filename:
            filename = self.build_default_filename()

        if not filename.lower().endswith(".ly"):
            filename += ".ly"
        return filename

    def _get_categories(self) -> list[str]:
        base_dir = Path(__file__).resolve().parent
        categories = [
            entry.name for entry in base_dir.iterdir()
            if entry.is_dir()
            and not entry.name.startswith('.')
            and not entry.name.startswith('__')
            and entry.name not in ("Modèles", "Grégorien")
        ]
        categories.sort(key=str.casefold)
        return categories or ["Autres"]


class PartsTab(ctk.CTkFrame):
    def __init__(self, master, app):
        super().__init__(master, fg_color="transparent")
        self.app = app
        self.default_font = app.default_font

        left_frame = ctk.CTkFrame(self, width=150)
        left_frame.pack(side="left", fill="y", padx=(0, 10))
        left_frame.pack_propagate(False)

        ctk.CTkLabel(left_frame, text="Voix", font=("Arial", 12, "bold")).pack(pady=(10, 6))

        right_frame = ctk.CTkFrame(self)
        right_frame.pack(side="left", fill="both", expand=True)

        self.parts = {
            "Flûte": {
                "paroles": ctk.IntVar(value=0)
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
                "type": ctk.StringVar(value="Piano")
            }
        }

        for part in self.parts:
            self.parts[part]["btn"] = ctk.CTkSwitch(
                left_frame, text=part, width=130, font=self.default_font,
                border_width=1, command=self.update_parts_ui
            )
            self.parts[part]["btn"].pack(pady=3, padx=10)
            
            voice_frame = ctk.CTkFrame(right_frame)
            self.parts[part]["frame"] = voice_frame
            
            ctk.CTkLabel(voice_frame, text=part, font=("Arial", 12, "bold"), width=70, anchor="w").pack(side="top", padx=15, pady=(8, 2), anchor="w")
            
            if part in ("Solo", "Choeur"):
                couplets_frame = ctk.CTkFrame(voice_frame, fg_color="transparent", border_width=0)
                ctk.CTkLabel(couplets_frame, text="Couplets :", font=self.default_font).pack(side="left", padx=(0, 5), pady=0)
                ctk.CTkEntry(couplets_frame, width=50, height=28, font=self.default_font,
                             textvariable=self.parts[part]["couplets"], justify="center").pack(side="left", padx=5, pady=0)
                couplets_frame.pack(side="top", padx=15, pady=2, anchor="w")
            
            if part == "Choeur":
                ctk.CTkOptionMenu(voice_frame, width=100, height=28, variable=self.parts[part]["schema"],
                                values=("SA-TB", "S-A-T-B", "SA-H","S-S-A", "T-T-B", "T-T-B-B"),
                                command=self.schema_voices_changed).pack(side="top", padx=15, pady=0, anchor="w")
                self.parts[part]["meme_paroles_switch"] = ctk.CTkSwitch(voice_frame, text="Même paroles pour toutes les voix", font=self.default_font,
                                                        border_width=1, variable=self.parts[part]["meme_paroles"])
            
            elif part == "Clavier":
                ctk.CTkOptionMenu(voice_frame, width=100, height=28, variable=self.parts[part]["type"],
                                  values=("Piano", "Orgue")).pack(side="top", padx=15, pady=(2, 8), anchor="w")

            elif part == "Flûte":
                ctk.CTkSwitch(voice_frame, text="Paroles", width=130, font=self.default_font,
                              border_width=1, variable=self.parts[part]["paroles"]).pack(side="top", padx=15, pady=(2, 8), anchor="w")

        self.pack(fill="both", expand=True)

    def schema_voices_changed(self, selected_schema):
        switch = self.parts["Choeur"]["meme_paroles_switch"]
        if selected_schema.count("-") > 1:
            switch.pack(side="top", padx=15, pady=(2, 8), anchor="w")
        else:
            switch.pack_forget()


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

NUMBERS = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
VOICES  = {"S": "soprano", "A": "alto", "T": "tenor", "B": "bass", "H": "homme"}

def Voice(voice, indice = None):
    return (
        f"\t\t\\new Voice = \"{VOICES[voice]}\" "
        "{ "
        "\\clef bass " if voice in "BH" else '\\clef "treble_8 "' if voice == "T" else ""
        f"{"\\voice"+NUMBERS[indice] if indice else ""}"
        f" \\{VOICES[voice]}"
        "}\n"
    )

def Lyrics(voice, nb=None):
    return (
        "\t\\new Lyrics \\with { \\override VerticalAxisGroup.staff-affinity = #CENTER\n\t}"
        f'\\lyricsto "{VOICES[voice]}" \\verse{NUMBERS[nb]}\n'
    )

def ChoirStaff(schema: str, lyrics: int):
    staffes = schema.split("-")
    st = "\\new ChoirStaff <<\n"
    
    for nb, staff in enumerate(staffes):
        polyph = len(staff) > 1
        #with
        st += (
            "\t\\new Staff \\with {\n"
            "\t\tmidiInstrument = \"choir aahs\""
        )
        if any(len(stf) > 1 for stf in staffes):
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
        st += "\t}"

        #voice
        if polyph:
            st += "<<\n"
            for indice, voice in enumerate(staff):
                st += Voice(voice, indice)
            st += "\t>>\n"
        else:
            st += Voice(staff)
        
        #lyrics
        if len(staffes) > 2 or nb == indice == 0:
            for lyr in range(lyrics):
                st += Lyrics(staff, lyr)
            st += "\n"
    st += ">>"
    return st



class LilypondCreator(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Assistant de création de partition Lilypond")
        self.geometry("500x650")

        self.default_font = ("Arial", 12)

        tabview = ctk.CTkTabview(self, anchor="nw")
        tabview.pack(padx=10, pady=(10, 0), fill="both", expand=True, side="top")
        self.header_tab = HeaderTab(tabview.add("Titres et en-têtes"), self)
        self.parts_tab = PartsTab(tabview.add("Parties"), self)
        
        button_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        ctk.CTkButton(button_frame, text="Créer", width=160, font=self.default_font, command=self.create_lilypond_file).pack(side="left", padx=(0, 10))
        ctk.CTkButton(button_frame, text="Annuler", width=120, font=self.default_font, fg_color="#ff0000", hover_color="#8f8f8f", command=self.destroy).pack(side="left")
        button_frame.pack(pady=15)

    def create_lilypond_file(self):
        values = {}
        for key, field in self.header_tab.fields.items():
            if not field["hidden"]:
                value = field["var"].get().strip()
                values[key] = value

        filename = self.header_tab.get_target_filename()
        category = self.header_tab.category_var.get().strip() or "Autres"
        
        folder_name = Path(filename).stem
        base_dir = Path(__file__).resolve().parent
        target_folder = base_dir / category / folder_name
        
        try:
            target_folder.mkdir(parents=True, exist_ok=True)
            filepath = target_folder / filename
            if filepath.exists():
                raise OSError(f"Le fichier '{filename}' existe déjà dans la catégorie '{category}'. Veuillez modifier le nom du fichier.")
            
            content = (
                "\\version \"2.26.0\"\n"
                "\\include \"../../settings.ly\"\n"
                "\n"
                "global = { \n\n"
                "\t\n"
                "}\n\n"
            )
            voices_parts = self.parts_tab.parts
            voice_settings = {
                "Solo": {
                    "nb": 1,
                    "couplets": voices_parts["Solo"]["couplets"].get()
                },
                "Choeur": {
                    "nb": len(voices_parts["Choeur"]["schema"].get().replace("-", "")),
                    "couplets": voices_parts["Choeur"]["couplets"].get()
                },
                "Clavier": {
                    "nb": 2 + (voices_parts["Clavier"]["type"].get() == "Orgue"),
                    "couplets": 0
                },
                "Flûte": {
                    "nb": 1,
                    "couplets": voices_parts["Flûte"]["paroles"].get()
                }
            }
            
            for part in voices_parts:
                if voices_parts[part]["btn"].get():
                    for voice in range(voice_settings[part]["nb"]):
                        if part == "Choeur":
                            name_voice = VOICES[voices_parts[part]["schema"].get().replace("-", "")[voice]]
                        else:
                            name_voice = part.lower() + ("I"*voice if part == "Clavier" else "")
                        
                        ishigh = (voice < voice_settings[part]["nb"]/2)
                        content += (
                            f"{name_voice} = \\fixed c{"'" if ishigh else ""}"
                            " {\n"
                            "\t\\global\n"
                            "\t\n}"
                            "\n"
                            )
                        
                        if voice_settings[part]["couplets"]:
                            content += (
                                name_voice + "Verse = \\lyricmode {\n"
                                "\t\n"
                                "}\n"
                                )
                        content += "\n"
                

                    content += f"{part}Part = "
                    if part == "Choeur":
                        content += ChoirStaff(voices_parts[part]["schema"].get(), voice_settings["Choeur"]["couplets"])
                    
                        
            if values.get("title"):
                if values.get("composer"):
                    content += (
                        "\\tocItemComposer "
                        f"\"{values.get('title', '')}\" "
                        f"\"{values.get('composer', '')}\"\n"
                        )
                else:
                    content += (
                        "\\tocItem "
                        f"\"{values['title']}\"\n"
                    )
            content += (
                "\n\\score {\n"
                "\t\\header {\n"
            )
            for key in values:
                if key == "title":
                    values[key] = values[key].upper()
                content += f"\t\t{key} = \"{values[key]}\"\n"

            content += "\t}\n\t<<\n"
            for part in voices_parts:
                content += f"\t\t{part}Part\n"
            content += (
                "\t>>\n"
                "\t\\layout {}\n"
                "\t\\midi{}\n"
                "}\n"
            )
            
            filepath.write_text(content, encoding="utf-8")
            subprocess.Popen(["flatpak", "run", "org.frescobaldi.Frescobaldi", str(filepath)])
            self.destroy()
        
        except OSError as error:
            error_window = ctk.CTkToplevel(self)
            error_window.title("Erreur de création")
            error_window.geometry("400x150")
            
            label = ctk.CTkLabel(
                error_window, text=f"Une erreur est survenue :\n{str(error)}", 
                text_color="#D32F2F", wraplength=360, justify="center", font=self.default_font
            )
            label.pack(expand=True, fill="both", pady=20, padx=20)
            


if __name__ == "__main__":
    app = LilypondCreator()
    app.mainloop()