#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "Usage $0 <chal_num>"
  echo "Usage $0 <chal_num> <password>"
  exit 1
fi

if [[ $# -eq 2 ]]; then
  PASSWORD=$2
fi

PREFIX="Natas"
NUM=$1

DIRECTORY=$PREFIX$NUM

echo "Preparing for $DIRECTORY"

if [[ -d $DIRECTORY ]]; then
  echo "Directory Already Exists"
else
  echo "Creating Directory"
  mkdir $DIRECTORY
fi

SCRIPT_FILE_PATH=$DIRECTORY/solve.sh

if [[ ! -f $SCRIPT_FILE_PATH ]]; then
  echo "Creating solve.sh file"

  cat >"$SCRIPT_FILE_PATH" <<EOF
#!/bin/bash
USER=natas$NUM
PASS='$PASSWORD'

curl -fsSL -u \$USER:\$PASS \\
http://natas$NUM.natas.labs.overthewire.org
EOF

  chmod +x $SCRIPT_FILE_PATH
fi
