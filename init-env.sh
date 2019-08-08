#!/bin/bash

if [[ ! -e .env ]]; then
    virtualenv .env
    . .env/bin/activate
    pip install ansible
fi

