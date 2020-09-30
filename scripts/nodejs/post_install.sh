#!/usr/bin/env bash

cat <<EOT >> version.txt
node : $(node -v)
npm : $(npm -v)
EOT