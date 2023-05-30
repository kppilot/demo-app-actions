# CI WORKFLOW : 
When the PR is created , `ci.yml` workflows is triggered.</br>
`ci.yml` internally calls `build.yml` & `linter-test.yml` workflow. </br>
After all tests pass and the PR is approved and merged in main, `tag_release.yml` workflow is manually triggered ( can be automated also) to tag the repo and push artifact to the artifactory.</br>
</br>
`tag_release.yml` workflow is an automated tagging workflow that creates tags when a PR is succesfully merged and the same tag is used to tag the docker image and push to the dockerhub.</br>
`upload_to_artifactory.yml` is triggered when a tag is manually created by the developer, it uses that tag for docker image and uploads to the dockerhub.

