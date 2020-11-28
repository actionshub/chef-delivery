echo "::warning ::Github Action: actionshub/chef-delivery has migrated to the main branch as default, the master branch will be removed"

mkdir ._actionshub_problem-matchers
cp /cookstyle.json ._actionshub_problem-matchers/cookstyle.json
cp /rspec.json ._actionshub_problem-matchers/rspec.json
echo "##[add-matcher]._actionshub_problem-matchers/cookstyle.json"
echo "##[add-matcher]._actionshub_problem-matchers/rspec.json"
<<<<<<< HEAD
=======
if [ -n "${INPUT_GEMS}" ] ; then
  echo "Installing gem(s): ${INPUT_GEMS}"
  chef gem install -N "${INPUT_GEMS}"
fi
>>>>>>> 7e40ff675b0bf50312f2316433acd6e1fa2aac9e
chef exec delivery local all
