#!/bin/bash
helm package continuous-delivery/jenkins-agent/
mv *.tgz docs/
helm repo index docs
git add -u
git commit --amend
git push -f
helm repo update
#helm dependency build continuous-delivery/jenkins
helm package continuous-delivery/jenkins
mv *.tgz docs/
helm repo index docs
git add -u
git commit --amend
git push -f
helm repo update
