project('adw-vala-template', ['c', 'vala'],
          version: '0.1.0',
    meson_version: '>= 0.58.0',
  default_options: [ 'warning_level=2',
                   ],
)

app_id = 'io.github.diegoivanme.AdwValaTemplate'
pretty_name = 'AdwValaTemplate'

app_path = '/' + app_id.replace('.', '/')
i18n = import('i18n')



subdir('data')
subdir('src')
subdir('po')

meson.add_install_script('build-aux/meson/postinstall.py')
