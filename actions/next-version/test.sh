#!/usr/bin/env bash
# Checks next-version.sh against the release scenarios. Run: actions/next-version/test.sh
set -euo pipefail
NV="$(cd "$(dirname "$0")" && pwd)/next-version.sh"
T=$(mktemp -d); trap 'rm -rf "$T"' EXIT; cd "$T"
git init -q && git config user.email t@t && git config user.name t
mkdir -p src tests sdks/node .github
echo a > src/a.go; echo 1.2.0 > VERSION; git add -A; git commit -qm init
git tag v1.2.0; git tag 1.2.0; git tag node-v1.2.0
fails=0
check() { # name expected CURRENT PREFIX [SCOPE]
  got=$(CURRENT="$3" PREFIX="$4" SCOPE="${5:-.}" "$NV" | grep -E '^(version|release)=' | tr '\n' ' ')
  if [ "$got" = "$2 " ]; then echo "ok   $1"; else echo "FAIL $1: expected '$2', got '$got'"; fails=$((fails+1)); fi
}
check "no changes" "version=1.2.0 release=false" 1.2.0 v
echo x >> README.md; echo x >> tests/t.go; echo x >> .github/w.yml; echo x >> .gitignore; echo 1.2.0 > VERSION
git add -A; git commit -qm docs
check "docs, tests, CI, .gitignore only" "version=1.2.0 release=false" 1.2.0 v
echo b >> src/a.go; git commit -qam code
check "code change" "version=1.2.1 release=true" 1.2.0 v
check "code change, bare X.Y.Z tags" "version=1.2.1 release=true" 1.2.0 ""
echo 1.5.0 > VERSION; git commit -qam bump
check "version set by hand" "version=1.5.0 release=true" 1.5.0 v
check "manifest behind the tags" "version=1.2.1 release=true" 1.1.0 v
check "scoped, change outside" "version=1.2.0 release=false" 1.2.0 node-v sdks/node
echo y > sdks/node/i.ts; git add -A; git commit -qm node
check "scoped, change inside" "version=1.2.1 release=true" 1.2.0 node-v sdks/node
git tag v1.2.9
check "nothing new since the last tag" "version=1.2.9 release=false" 1.2.0 v
check "first release" "version=0.1.0 release=true" 0.1.0 python-v sdks/python
[ "$fails" = 0 ] && echo "all scenarios pass" || { echo "$fails scenario(s) failed"; exit 1; }
