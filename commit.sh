echo -n \"commit message:\"
read c_m

git add .
git commit -m $c_m
git pull origin main
git push origin main