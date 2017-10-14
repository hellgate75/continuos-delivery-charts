#!/bin/bash
helm package continuous-delivery/jenkins-agent/
helm package continuous-delivery/nexus3/
helm package continuous-delivery/sonar/
helm package continuous-delivery/sonardb/
helm package continuous-delivery/jenkins/
mv *.tgz docs/
helm repo index docs
git add -u
git add docs
git commit --amend
git push -f
helm repo update
sleep 2
helm repo update
sleep 2
helm repo update
sleep 2
helm repo update
#helm dependency build continuous-delivery/jenkins
# helm package continuous-delivery/jenkins
# mv *.tgz docs/
# helm repo index docs
# git add -u
# git commit --amend
# git push -f
# helm repo update
