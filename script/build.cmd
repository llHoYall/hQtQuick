@ECHO Off
CALL ./.venv/Scripts/activate
pyinstaller -y spec/hQtQuick.spec
CALL deactivate