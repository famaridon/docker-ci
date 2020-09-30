#!/usr/bin/env bash

cat <<EOT >> version.txt
yarn : $(yarn -v)
EOT