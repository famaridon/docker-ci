#!/usr/bin/env bash

cat <<EOT >> version.txt
java : 
$(java --version)
javac: $(javac --version)
EOT