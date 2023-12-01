#!/bin/zsh

# workspace

# In the folder: ~/Developer/some-project/
# this syntax: `$ workspace`
# result: opens `~/Developer/workspaces/some-project.json`

# In any folder: ./
# this syntax: `$ workspace another-project`
# result: opens `~/Developer/workspaces/another-project.json`

workspace() {
	# get pathname from optional option value `workspace pathname`

	# Determine path to use

	# if a pathname is set, validate it's a valid folder name string.
	# if the pathname string is not valid, uset it.

	# if no pathname
		# get `some-project` from `~/Developer/Projects/some-project/`
	# else
		# use pathname option value: `workspace different-project` => `different-project`
	# fi

	# open workspace
	code $(~/Developer/workspaces/{keyword}.code-workspace)
}
