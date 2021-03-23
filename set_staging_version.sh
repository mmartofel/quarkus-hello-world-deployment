COMMIT_COMMENT='Revision: '$1' in now active on STAGE, submitted: '`date`

git pull
cp staging/kustomization-r$1.yaml staging/kustomization.yaml
git add staging
git commit -m "$COMMIT_COMMENT"
git push

