git add -A
git commit --amend --no-edit
git push --force-with-lease
aws cloudfront create-invalidation --distribution-id E22R2PYH1C7WEO --paths "/*"
