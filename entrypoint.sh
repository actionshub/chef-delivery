mkdir ._actionshub_problem-matchers
cp /cookstyle.json ._actionshub_problem-matchers/cookstyle.json
cp /rspec.json ._actionshub_problem-matchers/rspec.json
echo "##[add-matcher]._actionshub_problem-matchers/cookstyle.json"
echo "##[add-matcher]._actionshub_problem-matchers/rspec.json"
if [ -n "${INPUT_GEMS}" ] ; then
  echo "Installing gem(s): ${INPUT_GEMS}"
  chef gem install -N "${INPUT_GEMS}"
fi
chef exec rspec spec/
chef exec cookstyle --display-cop-names --extra-details
