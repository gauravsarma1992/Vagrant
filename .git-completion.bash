case "$COMP_WORDBREAKS" in
*:*) : great ;;
*)   COMP_WORDBREAKS="$COMP_WORDBREAKS:"
esac

# Discovers the path to the git repository taking any '--git-dir=<path>' and
# '-C <path>' options into account and stores it in the $__git_repo_path
# variable.
__git_find_repo_path ()
{
  if [ -n "$__git_repo_path" ]; then
    # we already know where it is
    return
  fi

  if [ -n "${__git_C_args-}" ]; then
    __git_repo_path="$(git "${__git_C_args[@]}" \
      ${__git_dir:+--git-dir="$__git_dir"} \
      rev-parse --absolute-git-dir 2>/dev/null)"
  elif [ -n "${__git_dir-}" ]; then
    test -d "$__git_dir" &&
    __git_repo_path="$__git_dir"
  elif [ -n "${GIT_DIR-}" ]; then
    test -d "${GIT_DIR-}" &&
    __git_repo_path="$GIT_DIR"
  elif [ -d .git ]; then
    __git_repo_path=.git
  else
    __git_repo_path="$(git rev-parse --git-dir 2>/dev/null)"
  fi
}
