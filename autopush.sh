autopush () {
  git diff --quiet && git diff --cached --quiet && {
    echo "⚠️  Nothing to commit"
    return 0
  }

  git add .
  git commit -m "${1:-update}" || return 1
  git push
}
