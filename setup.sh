rm -rf apps
mkdir apps
cd apps

git clone https://github.com/devforhumans/posts.git
git clone https://github.com/devforhumans/web

cd posts
docker run -it --rm -v $PWD:/posts -w /posts node:18-alpine3.17 yarn
docker run -it --rm -v $PWD:/posts -w /posts node:18-alpine3.17 yarn build

cd ../web
docker run -it --rm -v $PWD:/web -w /web node:20-alpine3.17 npm i