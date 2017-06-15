echo off
set comment=%1
echo %comment%
echo 'initiating site generation...'
hugo --theme=hugo_theme_robust
echo 'site generated in public folder...'
cd public
echo 'moved to public folder...'
echo 'adding files...'
git add --all
echo 'commiting changes...'
git commit -m%comment%
echo 'pushing to repo...'
git push -f origin gh-pages
echo 'finished publishing site!!!'
cd..
echo 'moved back to arcanvas folder...'
echo 'adding files...'
git add --all
echo 'commiting changes...'
git commit -m%comment%
echo 'pushing to repo...'
git push -f origin master
echo 'finished publishing site changes!!!'
