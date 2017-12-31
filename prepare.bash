#!/usr/bin/env bash

set -e


case "$(uname -s)" in
    Linux)
        PYTHON_EXEC='python3'
        VENV_PATH='./venv/bin/activate'
        ;;
    MINGW64*)
        PYTHON_EXEC='/c/Python34/python.exe'
        VENV_PATH='./venv/Scripts/activate'
        ;;
    *)
        if [[ -z "$VENV_PATH" ]]
        then
            echo 'VENV_PATH is not set, exiting!'
            exit 1
        fi
        if [[ -z "$PYTHON_EXEC" ]]
        then
            echo 'PYTHON_EXEC is not set, exiting!'
            exit 1
        fi
        ;;
esac

virtualenv --python "${PYTHON_EXEC}" venv
source "${VENV_PATH}"

pip install --upgrade --requirement requirements.txt
