pandoc -f markdown -t html day1.md -s -o pages/day1.html --metadata pagetitle="day1"
pandoc -f markdown -t html day3.md -s -o pages/day3.html --metadata pagetitle="day3"
pandoc -f markdown -t html day4.md -s -o pages/day4.html --metadata pagetitle="day4"

if [ "$(git status --porcelain | wc -l | xargs)" -eq 0 ]; then
  echo "Not exist deploying contents."
  exit 0
fi

git config --global user.name "Circle CI"
git config --global user.email "<>"
git checkout master
git add -A
git commit -m "[ci skip] Deploy by CI"
git remote -v
git push origin master:master

echo "Deploy a site!"
