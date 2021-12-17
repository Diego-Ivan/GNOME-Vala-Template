<div align="center">

# GNOME Vala Template

**Opinionated template for GNOME apps written in Vala**
</div>

## Usage

This template uses Meson utilities in order to reduce the amount of things you have to rename. Still, there are some that must be done and in general cannot be done through this methods that I used. For this, I recommend you to use the following tools:

* GNOME Builder: To search and replace in the files
* Nautilus / GNOME Files: To rename files

It's important that you follow the instructions in this same order, otherwise, there might be some unexpected outputs.

### Step 1:

With the GNOME Builder search and replace utility, replace the string `io.github.diegoivanme.AdwValaTemplate` with your app id, e.g `org.example.Example`

### Step 2:

With the GNOME Builder search and replace utility, replace the string `/io/github/diegoivanme/AdwValaTemplate` with your app's path, e.g `/org/example/Example`.

### Step 3:

With the GNOME Builder search and replace utility, replace the strings `AdwValaTemplate` and `adw-vala-template` with your app's namespace, e.g `Example`.

**Important:** This will make your app's namespace your app's name too. If you don't want this, open the `meson.build` file and change the `pretty_name` variable to the name of your app.

### Step 4:

Open Nautilus in your app's folder, change to the `data` directory, select all the files and (with all of them selected) right click and press rename. Select the *Search and Replace text* option and replace the string: `io.github.diegoivanme.AdwValaTemplate` with your app's id, e.g `org.example.Example`

### Step 5:

Open the directory `data/icons/hicolor/scalable/apps` and rename the file from `io.github.diegoivanme.AdwValaTemplate.svg` your app's id + `.svg`, e.g `org.example.Example.svg`

### Step 6:

Open the directory `data/icons/hicolor/symbolic/apps` and rename the file from `io.github.diegoivanme.AdwValaTemplate-symbolic.svg` to your app's id + `-symbolic.svg`, e.g `org.example.Example-symbolic.svg`

### Step 7:

Rename the `io.github.diegoivanme.AdwValaTemplate.json` file to your app's id + `.json`, e.g `org.example.Example.json`

**Note:** If you will be running your project with GNOME Builder, check that the build profile is right. It will stay with the `io.github.diegoivanme.AdwValaTemplate.json` instead of your new file manifests'. If you don't know how to change it, click on the left top button of the IDE and select the last option.