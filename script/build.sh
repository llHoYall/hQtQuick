#!/bin/sh
. ./.venv/bin/activate
pyinstaller -y spec/hQtQuick.spec
deactivate