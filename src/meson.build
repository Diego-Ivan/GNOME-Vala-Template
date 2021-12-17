sources = [
  'main.vala',
  'Widgets/Window.vala',
  'Application.vala',
]

deps = [
  dependency('gtk4'),
  dependency('libadwaita-1'),
]

conf = configuration_data()
conf.set_quoted('APP_ID', app_id)
conf.set_quoted('G_LOG_DOMAIN', pretty_name)
conf.set_quoted('VERSION', meson.project_version())
conf.set_quoted('PRETTY_NAME', pretty_name)
conf.set_quoted('APP_PATH', app_path)
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
conf.set_quoted('DATADIR', join_paths(get_option('prefix'), get_option('datadir')))
conf.set_quoted('GNOMELOCALEDIR', join_paths(get_option('prefix'), get_option('localedir')))
configure_file(output: 'config.h', configuration: conf)

add_project_arguments(
    '-include', 'config.h',
    '-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()),
    language: 'c'
)

gnome = import('gnome')

resources_file = files('Resources/resources.gresources.xml')
sources += gnome.compile_resources(app_id,
  resources_file,
  c_name: meson.project_name ().replace ('-', '_'),
  source_dir: 'Resources'
)

executable(meson.project_name(), sources,
  vala_args: [
    meson.project_source_root() + '/src/vapi/config.vapi',
    '--target-glib=2.50',
    '--gresources', resources_file,
    '--vapidir', meson.project_source_root() / 'vapi',
  ],
  dependencies: deps,
  install: true,
)
