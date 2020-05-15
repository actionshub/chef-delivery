mkdir _matchers
cp /cookstyle.json _matchers/cookstyle.json
echo "##[add-matcher]_matchers/cookstyle.json"
chef exec delivery local all