echo import os, sys; sys.stdout.write('\\{}'.format(os.path.normpath("%cd%\\").split(':\\')[1]).replace('\\', '/')) | python > 32a4dd3e-342d-11e6-ac61-9e71128cae77
set /P builder_root= < 32a4dd3e-342d-11e6-ac61-9e71128cae77
del 32a4dd3e-342d-11e6-ac61-9e71128cae77

set builder_download=%builder_root%/download
set builder_install=%builder_root%/install
set builder_ext_build=%builder_root%/ext_build
set builder_build=%builder_root%/build
set builder_src=%builder_root%/src

set path=%path%;%cd%\install
set path=%path%;%cd%\install\bin
set path=%path%;%cd%\install\lib


