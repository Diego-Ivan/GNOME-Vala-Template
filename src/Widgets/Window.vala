
namespace AdwValaTemplate {
	[GtkTemplate (ui = "/io/github/diegoivanme/AdwValaTemplate/window.ui")]
	public class Window : Adw.ApplicationWindow {
	    public const GLib.ActionEntry[] WIN_ENTRIES = {
            { "preferences", open_preferences },
        };

		public Window (Gtk.Application app) {
			Object (application: app);
		}

		construct {
		    var action_group = new GLib.SimpleActionGroup ();
		    action_group.add_action_entries (WIN_ENTRIES, this);
		    insert_action_group ("win", action_group);
		}

		private void open_preferences () {
		    message ("User has triggered win.preferences");
		}
	}
}
