#! /usr/bin/env bash

chown -R sopel:sopel /sopel

exec sopel -c /sopel/default.cfg
