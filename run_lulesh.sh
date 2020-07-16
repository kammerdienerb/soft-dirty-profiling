#!/usr/bin/env bash

source env/setup_env.sh

BENCH_DIR=benchmarks/lulesh bench_run.sh hmalloc small
