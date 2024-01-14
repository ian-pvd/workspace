#!/bin/zsh

# workspace

# this syntax: `$ workspace`
# In the folder: ~/Developer/some-project/
# result: opens `~/Developer/Projects/pvd-workspace/workspaces/some-project.code-workspace` in vscode.

# this syntax: `$ workspace another-project`
# In any folder: ./
# result: opens `~/Developer/Projects/pvd-workspace/workspaces/another-project.code-workspace` in vscode.

# TODO:
# this syntax: `$ workspace -l`
# In any folder: ./
# result: lists contents of `~/Developer/Projects/pvd-workspace/workspaces/` in terminal.

workspace() {
	# Check if the optional project_name is not set or is not a valid string.
	if [ -z "$1" ] || ! [[ "$1" =~ ^[a-zA-Z0-9_-]+$ ]]; then

		# TODO: find the git root folder and use that as the project_name

		# Get project_name from the current directory
		current_directory=$(basename "$(pwd)")
		project_name="$current_directory"
	else
		# Use the provided value
		project_name="$1"
	fi

	# Set the workspace path
	workspace_path="$HOME/Developer/Projects/pvd-workspace/workspaces/$project_name.code-workspace"

	# Try to open the workspace
	# if [ -f "$workspace_path" ]; then
		printf "Opening workspace: %s\n" "$workspace_path"
		# Creates a new workspace or opens an existing workspace.
		code "$workspace_path"
	# else
	# 	printf "Workspace not found: %s\n" "$workspace_path"
	#   TODO: create a workspace file from a template.
	# fi
}

# Call the function with the provided arguments
workspace "$@"
