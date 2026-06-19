from pathlib import Path
import customtkinter as ctk

ctk.set_appearance_mode("System")
ctk.set_default_color_theme("blue")


class LilypondCreator(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Assistant de création de partition Lilypond")
        self.resizable(True, True)
        self.geometry("500x600")

        self.default_font = ("Arial", 12)
        self.filename_modified = False

        tabview = ctk.CTkTabview(self)
        tabview.pack(padx=10, pady=(10, 0), fill="both", expand=True)
        
        tabview.add("Titres et en-têtes")
        tabview.add("Parties")
        
        ong_creation = tabview.tab("Titres et en-têtes")
        
        self.fields = {
            "title":        "Titre",
            "composer":     "Compositeur",
            "poet":         "Paroles",
            "dedication":   "Dédicace",
            "subtitle":     "Sous-titre",
            "subsubtitle":  "Sous-sous-titre",
            "instrument":   "Instrument",
            "meter":        "Tempo",
            "arranger":     "Arrangeur",
            "tagline":      "\"tagline\" (en dernière page)",
            "copyright":    "Copyrights (en première page)"
        }
        self.available_fields = list(self.fields.keys())
        
        for field in self.fields:
            frame = ctk.CTkFrame(ong_creation, fg_color="transparent", border_width=0)
            self.fields[field] = {
                "name": self.fields[field],
                "label": ctk.CTkLabel(frame, text=self.fields[field], font=self.default_font, width=100),
                "var": ctk.StringVar(),
                "entry": None,
                "frame": frame,
                "hidden": field not in ("title", "composer", "poet"),
                "remove": ctk.CTkButton(frame, text="-", width=28, height=28, fg_color="#E57373", hover_color="#EF9A9A", command=lambda k=field: self.remove_field(k))
            }

            self.fields[field]["remove"].pack(side="right", padx=(10, 0))
            self.fields[field]["entry"] = ctk.CTkEntry(frame, width=260, height=28, font=self.default_font, textvariable=self.fields[field]["var"])
            self.fields[field]["label"].pack(side="left", padx=(0, 10))
            self.fields[field]["entry"].pack(side="left", padx=0)
            
            if not self.fields[field]["hidden"]:
                frame.pack(pady=4, padx=20)
                self.available_fields.remove(field)

        self.add_field_var = ctk.StringVar()
        self.add_field_menu = ctk.CTkOptionMenu(
            ong_creation, values=[self.fields[key]["name"] for key in self.available_fields], variable=self.add_field_var, width=40, height=28, font=self.default_font, command=self.on_optional_field_selected
        )
        self.add_field_menu.set("+")
        self.add_field_menu.pack(pady=(8, 4), padx=20)
  
        category_frame = ctk.CTkFrame(ong_creation, fg_color="transparent", border_width=0)
        ctk.CTkLabel(category_frame, text="Catégorie", font=self.default_font, width=100).pack(side="left", padx=(0, 10))
        self.categories = self._get_categories()
        default_category = self.categories[0] if self.categories else "Autres"
        self.category_var = ctk.StringVar(value=default_category)
        ctk.CTkOptionMenu(category_frame, values=self.categories, variable=self.category_var, width=260, height=28, font=self.default_font).pack(side="left", padx=0)
        category_frame.pack(pady=4, padx=20)

        filename_frame = ctk.CTkFrame(ong_creation, fg_color="transparent", border_width=0)
        ctk.CTkLabel(filename_frame, text="Nom du fichier :", font=self.default_font, width=100).pack(side="left", padx=(0, 10))
        self.filename_var = ctk.StringVar()
        entry_filename = ctk.CTkEntry(filename_frame, width=260, height=28, font=self.default_font, textvariable=self.filename_var)
        entry_filename.pack(side="left", padx=0)
        filename_frame.pack(pady=4, padx=20)
        entry_filename.bind("<KeyRelease>", self.on_filename_edit)
        
        
        ong_parties = tabview.tab("Parties")

        parties_main = ctk.CTkFrame(ong_parties, fg_color="transparent")
        parties_main.pack(fill="both", expand=True, padx=10, pady=10)

        left_frame = ctk.CTkFrame(parties_main, width=150)
        left_frame.pack(side="left", fill="y", padx=(0, 10))
        left_frame.pack_propagate(False)

        ctk.CTkLabel(left_frame, text="Voix", font=self.default_font).pack(pady=(10, 6))

        self.parts_buttons = {}
        self.selected_part_key = None

        for part in (
            ("Solo", self.solo_selected),
            ("Choeur", self.choeur_selected),
            ("Orgue", self.orgue_selected)
        ):
            btn = ctk.CTkButton(
                left_frame, text=part[0], width=130, font=self.default_font,
                fg_color="transparent", text_color=("black", "white"),
                hover_color=("gray75", "gray35"), border_width=1,
                command=part[1]
            )
            btn.pack(pady=3, padx=10)
            self.parts_buttons[part[0]] = btn

        right_frame = ctk.CTkFrame(parties_main)
        right_frame.pack(side="left", fill="both", expand=True)
        ctk.CTkLabel(right_frame, text="Nombre de parties", font=self.default_font).pack(pady=(20, 10))
        self.part_count_var = ctk.IntVar(value=1)
        ctk.CTkEntry(right_frame, width=56, height=28, font=self.default_font,
                     textvariable=self.part_count_var, justify="center").pack()
        

        button_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        ctk.CTkButton(button_frame, text="Créer", width=160, font=self.default_font, command=self.create_lilypond_file).pack(side="left", padx=(0, 10))
        ctk.CTkButton(button_frame, text="Annuler", width=120, font=self.default_font, fg_color="#ff0000", hover_color="#8f8f8f", command=self.destroy).pack(side="left")
        button_frame.pack(pady=15)
        
        
        self.fields["title"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.fields["composer"]["var"].trace_add("write", self.on_title_or_composer_change)

    def select_part(self, key: str):
        if self.selected_part_key:
            self.parts_buttons[self.selected_part_key].configure(fg_color="transparent")
        self.selected_part_key = key
        self.parts_buttons[key].configure(fg_color=("#3B8ED0", "#1F6AA5"))

    def choeur_selected(self):
        self.select_part("Choeur")

    def orgue_selected(self):
        self.select_part("Orgue")

    def solo_selected(self):
        self.select_part("Solo")

    def change_part_count(self, delta: int):
        self.part_count_var.set(max(1, self.part_count_var.get() + delta))

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
        if self.filename_modified:
            return
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
            self.fields[selected_key]["frame"].pack(pady=4, padx=20, before=insert_before_widget)
        else:
            self.fields[selected_key]["frame"].pack(pady=4, padx=20, before=self.add_field_menu)

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

    def create_lilypond_file(self):
        values = {}
        for key, field in self.fields.items():
            if not field["hidden"]:
                value = field["var"].get().strip()
                values[key] = value

        filename = self.get_target_filename()
        category = self.category_var.get().strip() or "Autres"
        
        folder_name = Path(filename).stem
        base_dir = Path(__file__).resolve().parent
        target_folder = base_dir / category / folder_name
        
        try:
            target_folder.mkdir(parents=True, exist_ok=True)
            filepath = target_folder / filename
            if filepath.exists():
                raise OSError(f"Le fichier '{filename}' existe déjà dans la catégorie '{category}'. Veuillez choisir un autre nom de fichier.")
            
            content = (
                "\\version \"2.26.0\"\n"
                "\\include \"../../settings.ly\"\n"
            )
            
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

            content += (
                "\t}\n"
                "}\n"
            )
            
            filepath.write_text(content, encoding="utf-8")
            self.destroy()
        
        except OSError as error:
            error_window = ctk.CTkToplevel(self)
            error_window.title("Erreur de création")
            error_window.geometry("400x150")
            
            error_window.lift()
            error_window.attributes("-topmost", True)
            
            label = ctk.CTkLabel(
                error_window, text=f"Une erreur est survenue :\n{str(error)}", 
                text_color="#D32F2F", wraplength=360, justify="center", font=self.default_font
            )
            label.pack(expand=True, fill="both", pady=20, padx=20)


if __name__ == "__main__":
    app = LilypondCreator()
    app.mainloop()