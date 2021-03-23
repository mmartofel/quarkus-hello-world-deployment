COMMIT_COMMENT='Revision: '$1' in now active on PRODUCTION, submitted: '`date`

git pull
cp production/kustomization-r$1.yaml production/kustomization.yaml
git add production
git commit -m "$COMMIT_COMMENT"
git push

