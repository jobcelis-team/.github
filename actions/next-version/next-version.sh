#!/usr/bin/env bash
# Decides the next release version from the last release tag and what changed.
#   CURRENT  version in the package manifest
#   PREFIX   tag prefix ("v", "" for bare X.Y.Z, "node-v", ...)
#   SCOPE    path whose changes count (default ".")
#   IGNORE   regex of paths that never trigger a release
# Prints version=, tag=, release=, reason= lines (GITHUB_OUTPUT format).
set -euo pipefail
PREFIX="${PREFIX-v}"; SCOPE="${SCOPE:-.}"
IGNORE="${IGNORE:-(^|/)(README|CHANGELOG|CONTRIBUTING|CODE_OF_CONDUCT|SECURITY|LICENSE|VERSION)[^/]*$|\.md$|(^|/)\.(gitignore|gitattributes|editorconfig|github/)|(^|/)(tests?|spec|docs|examples?)/}"

gt() { [ "$1" != "$2" ] && [ "$(printf '%s\n%s\n' "$1" "$2" | sort -V | tail -1)" = "$1" ]; }

latest=$(git tag -l | grep -E "^${PREFIX}[0-9]+\.[0-9]+\.[0-9]+$" | sed "s/^${PREFIX}//" | sort -V | tail -1 || true)

if [ -z "$latest" ]; then
  version="$CURRENT"; release=true; reason="first release"
elif gt "$CURRENT" "$latest"; then
  version="$CURRENT"; release=true; reason="version set to $CURRENT by hand (last release $latest)"
else
  changed=$(git diff --name-only "${PREFIX}${latest}" HEAD -- "$SCOPE" | grep -vE "$IGNORE" || true)
  if [ -n "$changed" ]; then
    IFS=. read -r major minor patch <<< "$latest"
    version="$major.$minor.$((patch + 1))"; release=true
    reason="changes since ${PREFIX}${latest}: $(echo "$changed" | head -5 | tr '\n' ' ')"
  else
    version="$latest"; release=false; reason="nothing to release since ${PREFIX}${latest}"
  fi
fi
echo "version=$version"
echo "tag=${PREFIX}${version}"
echo "release=$release"
echo "reason=$reason"
