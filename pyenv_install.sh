#!/bin/bash
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
#linux
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv
#macOS
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zprofile

exec "$SHELL"

sudo apt install gcc g++ make zlib1g-dev libbz2-dev libc6-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev openssl sqlite3 tcl-dev tk-dev uuid-dev
v=3.7.4;wget http://npm.taobao.org/mirrors/python/$v/Python-$v.tar.xz -P ~/.pyenv/cache/;pyenv install $v
v=2.7.16;wget http://npm.taobao.org/mirrors/python/$v/Python-$v.tar.xz -P ~/.pyenv/cache/;pyenv install $v

