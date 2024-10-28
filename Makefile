.PHONY: all pull-submodules update-submodules

all: pull-submodules update-submodules

# Pull the latest changes from the main branch
pull-submodules:
	git pull origin main

# Initialize and update all submodules
update-submodules:
	git submodule update --init --recursive --remote --merge

update:
	make update-submodules

	git commit -m "Update submodule references to latest commits" || echo "No changes in submodule references"

	git push origin main
	