mkdir ._actionshub_problem-matchers
cp /cookstyle.json ._actionshub_problem-matchers/cookstyle.json
cp /rspec.json ._actionshub_problem-matchers/rspec.json
echo "##[add-matcher]._actionshub_problem-matchers/cookstyle.json"
echo "##[add-matcher]._actionshub_problem-matchers/rspec.json"
chef exec delivery local all