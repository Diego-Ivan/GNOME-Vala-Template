namespace AdwValaTemplate {
	public class Application : Adw.Application {
		private const GLib.ActionEntry[] APP_ACTIONS = {
			{ "about", on_about_action },
			{ "quit", quit }
		};

		public Application () {
			Object (
			    application_id: Config.APP_ID,
			    flags: GLib.ApplicationFlags.FLAGS_NONE
			);

			set_resource_base_path (Config.APP_PATH);

			add_action_entries(APP_ACTIONS, this);
			set_accels_for_action("app.quit", {"<Primary>q"});
			set_accels_for_action("win.preferences", {"<Primary>comma"});
		}

		public override void activate () {
			var win = active_window;
			if (win == null) {
				win = new Window (this);
			}
			win.present ();
		}

		private void on_about_action () {
			const string?[] AUTHORS = {
			    "Your Name Here",
			    null
			};

			const string? ARTISTS[] = {
                "Your Artists/Designers here",
                null
            };

			const string COPYRIGHT = "Copyright \xc2\xa9 2021 Your Name Here";

			Gtk.show_about_dialog(
                active_window,
                "program-name", Config.PRETTY_NAME,
                "logo-icon-name", Config.APP_ID,
                "version", Config.VERSION,
                "authors", AUTHORS,
                "artists", ARTISTS,
                "copyright", COPYRIGHT,
                // Authors: Write your license here, use the enum Gtk.License
                "license-type", Gtk.License.UNKNOWN,
                "wrap-license", true,
                // Translators: Write your Name <email> here for credits
                "translator-credits", _("translator-credits"),
                null
            );
		}
	}
}
