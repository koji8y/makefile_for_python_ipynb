Makefile for python and jupyter notebook.
----
# Preparation
1. Copy `Makefile` and directory `mk` to your project top directory.
1. Create files `env.mk` and `local.mk` on the same directory as `Makefile`.
    - The former file can be empty if none of the following settings described in mk/util.mk are required.
        - IPYNB_PORT
        - ENV_PROMPT
        - NO_TYPECHECK
        - ADDITIONAL_TOP_TO_FIND_SRC
    - Otherwise, add lines `name=value`.
    - The latter file stores locally defined targets of make.
    - The latter file can be empty.
1. Create `requirements.txt` that lists python packages to be installed.

# Targets
- help
    - Show all the targets to make.
- env_test
    - Check if venv is prepared.
- env
    - Set up a directory for venv if not exists.
- update_env
    - Update packages in venv.
- prepare_pkg
    - Install packages in venv.
- check_wellformed
    - Check code using flake (only for critical check items) and mypy.
- check_quality
    - Check code using flake, mypy, and pylint.
        - Order: flake (critical check items), mypy, pylint, flake (full)
- flake_core
    - Check code using flake only for critical check items.
- flake
    - Check code using flake for all the check items.
- typecheck
    - Check code using mypy.
- lint
    - Check code using pylint.
- test
    - Run test package named testcmd.
- notebook
    - Start jupyter notebook listening specified port.
- set_password_for_notebook
    - Set login password for jupyter notebook.
- open_notebook
    - Start jupyter notebook listening specified port.
- close_notebook
    - Terminate jupyter notebook.
- wait_until_notebook_closed
    - Wait until jupyter notebook is terminated.
- restart_notebook
    - Terminate jupyter notebook if running, then restart it.
- reopen_notebook
    - Terminate jupyter notebook if running, then restart it.
- list_notebook
    - List processes running for jupyter notebook.
- mkpkg
    - Make python package module.
- clean_pkg
    - Remove work files created by mkpkg.
- stub
    - Make stub (*.pyi) of code files in ${STUB_TARGET} directories for mypy.
