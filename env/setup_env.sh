#!/usr/bin/env bash
env_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export HMALLOC_PROFILE_ENV="yes"
export HMALLOC_ENV_DIR="${env_dir}"
export PATH="${env_dir}/bin:${env_dir}/scripts:${PATH}"
export LD_LIBRARY_PATH="${env_dir}/lib:${LD_LIBRARY_PATH}"

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    PS1="(\W: hm-prof)\$ " bash --rcfile ~/.bashrc
else
    echo "setup_env.sh has been sourced.."
    echo "    environment setup"
fi
