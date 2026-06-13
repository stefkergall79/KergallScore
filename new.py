import os
import customtkinter as ctk

ctk.set_appearance_mode("System")
ctk.set_default_color_theme("blue")


def build_default_filename(title: str, composer: str) -> str:
    if title and composer:
        return f"{title} - {composer}.ly"
    if title:
        return f"{title}.ly"
    if composer:
        return f"Pièce de {composer}.ly"
    return ""


class LilypondCreator(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Assistant de création de partition Lilypond")
        self.resizable(True, True)

        self.default_font = ("Arial", 12)
        self.filename_modified = False


        self.title_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        self.composer_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        self.poet_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)

        self.fields = {}
        for field in "title", "composer", "poet":
            self.fields[field] = {
                "label": None,
                "var": ctk.StringVar(),
                "entry": None,
            }

        self.fields["title"]["label"] = ctk.CTkLabel(self.title_frame, text="Titre", font=self.default_font, width=100)
        self.fields["title"]["entry"] = ctk.CTkEntry(self.title_frame, width=260, height=28, font=self.default_font, textvariable=self.fields["title"]["var"])
        self.fields["title"]["label"].pack(side="left", padx=(0, 10))
        self.fields["title"]["entry"].pack(side="left", padx=0)

        self.fields["composer"]["label"] = ctk.CTkLabel(self.composer_frame, text="Compositeur", font=self.default_font, width=100)
        self.fields["composer"]["entry"] = ctk.CTkEntry(self.composer_frame, width=260, height=28, font=self.default_font, textvariable=self.fields["composer"]["var"])
        self.fields["composer"]["label"].pack(side="left", padx=(0, 10))
        self.fields["composer"]["entry"].pack(side="left", padx=0)

        self.fields["poet"]["label"] = ctk.CTkLabel(self.poet_frame, text="Poète", font=self.default_font, width=100)
        self.fields["poet"]["entry"] = ctk.CTkEntry(self.poet_frame, width=260, height=28, font=self.default_font, textvariable=self.fields["poet"]["var"])
        self.fields["poet"]["label"].pack(side="left", padx=(0, 10))
        self.fields["poet"]["entry"].pack(side="left", padx=0)

        self.title_frame.pack(pady=4, padx=20)
        self.composer_frame.pack(pady=4, padx=20)
        self.poet_frame.pack(pady=4, padx=20)

        self.optional_fields = {
            "dedication": "Dédicace",
            "subtitle": "Sous-titre",
            "subsubtitle": "Sous-sous-titre",
            "instrument": "Instrument",
            "meter": "Tempo",
            "arranger": "Arrangeur",
            "tagline": "\"tagline\" (en dernière page)",
            "copyright": "Copyrights (en première page)",
        }
        self.extra_fields = {}
        self.available_optional_fields = list(self.optional_fields.keys())

        self.add_field_var = ctk.StringVar(value="+")
        self.add_field_menu = ctk.CTkOptionMenu(self, values=[self.optional_fields[key] for key in self.available_optional_fields], variable=self.add_field_var, width=40, height=28, font=self.default_font, command=self.on_optional_field_selected)
        self.add_field_menu.set("+")
        self.add_field_menu.pack(pady=(8, 4), padx=20)
 
        # Category frame
        self.category_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        self.label_category = ctk.CTkLabel(self.category_frame, text="Catégorie", font=self.default_font, width=100)
        self.categories = self._get_categories()
        default_category = self.categories[0] if self.categories else "Autres"
        self.category_var = ctk.StringVar(value=default_category)
        self.category_menu = ctk.CTkOptionMenu(self.category_frame, values=self.categories, variable=self.category_var, width=260, height=28, font=self.default_font)
        self.label_category.pack(side="left", padx=(0, 10))
        self.category_menu.pack(side="left", padx=0)
        self.category_frame.pack(pady=4, padx=20)

        # Filename frame
        self.filename_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        self.label_filename = ctk.CTkLabel(self.filename_frame, text="Nom du fichier :", font=self.default_font, width=100)
        self.filename_var = ctk.StringVar()
        self.entry_filename = ctk.CTkEntry(self.filename_frame, width=260, height=28, font=self.default_font, textvariable=self.filename_var)
        self.label_filename.pack(side="left", padx=(0, 10))
        self.entry_filename.pack(side="left", padx=0)
        self.filename_frame.pack(pady=4, padx=20)

        self.button_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        self.button_cancel = ctk.CTkButton(self.button_frame, text="Annuler", width=120, font=self.default_font, fg_color="#ff0000", hover_color="#8f8f8f", command=self.destroy)
        self.button_create = ctk.CTkButton(self.button_frame, text="Créer", width=160, font=self.default_font, command=self.create_lilypond_file)
        self.label_status = ctk.CTkLabel(self, text="", text_color="#4B8BBE", font=self.default_font)
        self.button_frame.pack(pady=18)
        self.button_create.pack(side="left", padx=(0, 10))
        self.button_cancel.pack(side="left")
        self.label_status.pack(pady=(6, 10))

        self.update_idletasks()
        self.geometry(f"420x{self.winfo_reqheight()}")

        self.fields["title"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.fields["composer"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.entry_filename.bind("<KeyRelease>", self.on_filename_edit)

    def on_title_or_composer_change(self, *_args):
        if self.filename_modified:
            return
        title = self.fields["title"]["var"].get().strip()
        composer = self.fields["composer"]["var"].get().strip()
        default_name = build_default_filename(title, composer)
        self.filename_var.set(default_name)

    def on_filename_edit(self, _event=None):
        self.filename_modified = True

    def on_optional_field_selected(self, selected_label: str):
        if not selected_label:
            return
        
        selected_key = next(
            (key for key, label in self.optional_fields.items() if label == selected_label),
            None,
        )
        if not selected_key or selected_key not in self.available_optional_fields:
            return

        field_var = ctk.StringVar()
        field_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        field_label = ctk.CTkLabel(field_frame, text=f"{selected_label}", font=self.default_font, width=100)
        field_entry = ctk.CTkEntry(field_frame, width=260, height=28, font=self.default_font, textvariable=field_var)
        field_label.pack(side="left", padx=(0, 10))
        field_entry.pack(side="left", padx=0)
        field_frame.pack(pady=2, padx=20, before=self.add_field_menu)

        self.extra_fields[selected_key] = {
            "label": field_label,
            "var": field_var,
            "entry": field_entry,
            "frame": field_frame,
        }
        self.available_optional_fields.remove(selected_key)
        
        updated_values = [self.optional_fields[key] for key in self.available_optional_fields]
        self.add_field_menu.configure(values=updated_values)
        self.add_field_var.set("+")
        
        if not self.available_optional_fields:
            self.add_field_menu.configure(state="disabled")

        self.update_idletasks()
        self.geometry(f"420x{self.winfo_reqheight()}")

    def get_target_filename(self) -> str:
        filename = os.path.basename(self.filename_var.get().strip())
        if not filename:
            filename = build_default_filename(
                self.fields["title"]["var"].get().strip(),
                self.fields["composer"]["var"].get().strip(),
            )

        if not filename.lower().endswith(".ly"):
            filename += ".ly"
        return filename

    def create_lilypond_file(self):
        values = {
            "title": self.fields["title"]["var"].get().strip(),
            "composer": self.fields["composer"]["var"].get().strip(),
            "poet": self.fields["poet"]["var"].get().strip(),
        }
        values.update({
            key: field["var"].get().strip()
            for key, field in self.extra_fields.items()
        })

        filename = self.get_target_filename()
        category = self.category_var.get().strip() or "Autres"
        folder_name = os.path.splitext(filename)[0]
        target_folder = os.path.join(os.path.dirname(__file__), category, folder_name)
        os.makedirs(target_folder, exist_ok=True)
        filepath = os.path.join(target_folder, filename)

        content = (
            "\\version \"2.26.0\"\n"
            "\\include \"../../settings.ly\"\n"
            "\\score {\n"
            "\t\\header {\n"
        )
        for key in values:
            if values[key]:
                content += f"\t\t{key} = \"{values[key]}\"\n"

        content += (
            "\t}\n"
            "}\n"
        )
        
        try:
            with open(filepath, "w", encoding="utf-8") as lily_file:
                lily_file.write(content)
            self.destroy()
        except OSError as error:
            self.label_status.configure(text=f"Erreur d'écriture : {error}", text_color="#D32F2F")


    def _get_categories(self) -> list[str]:
        base_dir = os.path.dirname(__file__)
        excluded = {"Modèles", "Grégorien"}
        categories = [
            entry for entry in os.listdir(base_dir)
            if os.path.isdir(os.path.join(base_dir, entry))
            and not entry.startswith('.')
            and not entry.startswith('__')
            and entry not in excluded
        ]
        categories.sort(key=str.casefold)
        return categories or ["Autres"]

    def _get_categories(self) -> list[str]:
        base_dir = os.path.dirname(__file__)
        excluded = {"Modèles", "Grégorien"}
        categories = [
            entry for entry in os.listdir(base_dir)
            if os.path.isdir(os.path.join(base_dir, entry))
            and not entry.startswith('.')
            and not entry.startswith('__')
            and entry not in excluded
        ]
        categories.sort(key=str.casefold)
        return categories or ["Autres"]


if __name__ == "__main__":
    app = LilypondCreator()
    app.mainloop()
