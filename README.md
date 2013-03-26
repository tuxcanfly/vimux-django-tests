# Vimux Django tests

Requires

* [vimux](https://github.com/benmills/vimux)
* [tagbar](https://github.com/majutsushi/tagbar)

# What

This vimux plugin runs the django tests on the current file/function.

# Default keybindings

* F7 - Run tests on the file
* Shift+F7 - Run tests on the current function

# Config

The default test command is

    python manage.py test

it can be configured using

    let g:vimux_django_tests_cmd            = "python manage.py test --settings=settings.test"


# TODO

Currently works only with nose test runner.
