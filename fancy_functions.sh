function gco
{
	inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"

	if [ "$inside_git_repo" ]; then
	{
		current_branch="$(git rev-parse --abbrev-ref HEAD)"
		echo "Vous etes dans branche: [ $current_branch ]"
	}
	else
		echo "ERREUR! Vous n'etes pas dans un projet git"
	fi
}
