import os
import customtkinter as ctk

ctk.set_appearance_mode("System")
ctk.set_default_color_theme("blue")


class LilypondCreator(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Assistant de création de partition Lilypond")
        self.resizable(True, True)

        self.default_font = ("Arial", 12)
        self.filename_modified = False

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
            frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
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
            self, values=[self.fields[key]["name"] for key in self.available_fields], variable=self.add_field_var, width=40, height=28, font=self.default_font, command=self.on_optional_field_selected
        )
        self.add_field_menu.set("+")
        self.add_field_menu.pack(pady=(8, 4), padx=20)
  
        self.category_frame = ctk.CTkFrame(self, fg_color="transparent", border_width=0)
        self.label_category = ctk.CTkLabel(self.category_frame, text="Catégorie", font=self.default_font, width=100)
        self.categories = self._get_categories()
        default_category = self.categories[0] if self.categories else "Autres"
        self.category_var = ctk.StringVar(value=default_category)
        self.category_menu = ctk.CTkOptionMenu(self.category_frame, values=self.categories, variable=self.category_var, width=260, height=28, font=self.default_font)
        self.label_category.pack(side="left", padx=(0, 10))
        self.category_menu.pack(side="left", padx=0)
        self.category_frame.pack(pady=4, padx=20)

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
        self.button_frame.pack(pady=18)
        self.button_create.pack(side="left", padx=(0, 10))
        self.button_cancel.pack(side="left")
        
        self.update_idletasks()
        
        self.fields["title"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.fields["composer"]["var"].trace_add("write", self.on_title_or_composer_change)
        self.entry_filename.bind("<KeyRelease>", self.on_filename_edit)


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
        
        self.update_idletasks()

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
        
        self.update_idletasks()


    def get_target_filename(self) -> str:
        filename = os.path.basename(self.filename_var.get().strip())
        if not filename:
            filename = self.build_default_filename()

        if not filename.lower().endswith(".ly"):
            filename += ".ly"
        return filename


    def _get_categories(self) -> list[str]:
        base_dir = os.path.dirname(__file__)
        categories = [
            entry for entry in os.listdir(base_dir)
            if os.path.isdir(os.path.join(base_dir, entry))
            and not entry.startswith('.')
            and not entry.startswith('__')
            and entry not in ("Modèles", "Grégorien")
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
        folder_name = os.path.splitext(filename)[0]
        target_folder = os.path.join(os.path.dirname(__file__), category, folder_name)
        os.makedirs(target_folder, exist_ok=True)
        filepath = os.path.join(target_folder, filename)


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
        
        try:
            with open(filepath, "w", encoding="utf-8") as lily_file:
                lily_file.write(content)
            self.destroy()
        except OSError as error:
            error_window = ctk.CTkToplevel(self)
            label = ctk.CTkLabel(error_window, text=error.strerror, text_color="#D32F2F", font=self.default_font)
            label.pack(pady=20, padx=20)
            

if __name__ == "__main__":
    app = LilypondCreator()
    app.mainloop()
