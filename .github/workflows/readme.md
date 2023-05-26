# CI WORKFLOW : 
When the PR is created , ci.yml workflows is triggered.</br>
ci.yml internally calls build.yml & linter-test.yml workflow. </br>
After all tests pass and the PR is approved and merged in main, tag_release.yml workflow is manually triggered to tag the repo and push artifact to the artifactory.</br>


# CD WORKFLOWS
cd.yml workflow is manually triggered which handles the deployment jobs like spinning up infrastructure , push image to ecr , update task definition.

