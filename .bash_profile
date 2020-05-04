export PATH="${HOME}/.local/bin:${HOME}/.cargo/bin:${HOME}/go/bin:/usr/lib/ccache/bin:/usr/local/MATLAB/R2019b/bin/glnxa64${PATH:+:}${PATH}"
export LD_LIBRARY_PATH="${HOME}/.local/lib64:${HOME}/.local/lib${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
export CMAKE_PREFIX_PATH="${HOME}/.local${CMAKE_PREFIX_PATH:+:}${CMAKE_PREFIX_PATH}"
export PKG_CONFIG_PATH="${HOME}/.local/lib/pkgconfig${PKG_CONFIG_PATH:+:}${PKG_CONFIG_PATH}"
export GOPATH="${HOME}/go"

export CCACHE_DIR="/var/cache/ccache"

export CC=`which gcc`
export CXX=`which g++`
COMMON_FLAGS='-pipe -march=native -pedantic -Wall -Wcast-qual -Wconversion -Wextra -Wshadow'
export CPPFLAGS="-isystem${HOME}/.local/include -isystem/usr/local/include"
export CFLAGS="${COMMON_FLAGS} -Wmissing-prototypes"
export CXXFLAGS="${COMMON_FLAGS}"
export LDFLAGS="-fuse-ld=gold -L${HOME}/.local/lib64 -L${HOME}/.local/lib -L/usr/local/lib64 -L/usr/local/lib -Wl,-rpath=${HOME}/.local/lib64 -Wl,-rpath=${HOME}/.local/lib -Wl,-rpath=/usr/local/lib64 -Wl,-rpath=/usr/local/lib"

export RUSTFLAGS='-C target-cpu=native'

export EDITOR=$(which vim)
export SSH_ASKPASS=/usr/libexec/seahorse/ssh-askpass

if [ -n "$DESKTOP_SESSION" ]; then
    eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
    export SSH_AUTH_SOCK
fi

if [[ -f "${HOME}/.bashrc" ]]; then
    source "${HOME}/.bashrc"
fi
