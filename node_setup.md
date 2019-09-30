1. Unzip the binary archive to any directory you wanna install Node, I use /usr/local/lib/nodejs
```bash
 VERSION=v10.16.3
 DISTRO=linux-x64
 sudo mkdir -p /usr/local/lib/nodejs
 sudo tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs 
```

2. Set the environment variable `~/.zprofile`, add below to the end.
```bash
# Nodejs
VERSION=v10.16.3
DISTRO=linux-x64
export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH
```
4. Refresh profile
```bash
. ~/.profile
```

5. Test installation using
```bash
$ node -v
$ npm version
$ npx -v
```


the normal output is:
```bash
➜  node -v
v10.15.1
➜  npm version
{ npm: '6.4.1',
 ares: '1.15.0',
 cldr: '33.1',
 http_parser: '2.8.0',
 icu: '62.1',
 modules: '64',
 napi: '3',
 nghttp2: '1.34.0',
 node: '10.15.1',
 openssl: '1.1.0j',
 tz: '2018e',
 unicode: '11.0',
 uv: '1.23.2',
 v8: '6.8.275.32-node.12',
 zlib: '1.2.11' }
```


To create a sudo link:
```sh
sudo ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/node /usr/bin/node

sudo ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npm /usr/bin/npm

sudo ln -s /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin/npx /usr/bin/npx
```