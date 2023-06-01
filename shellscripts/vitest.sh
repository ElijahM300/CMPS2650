#!/bin/bash
#Elijah Morris
#Lab 1-12
#9-30-21

if [ $# -lt 1 ]; then
  echo ""  
  echo "USAGE:vitest <filename>"
  echo ""
  exit
fi

echo ""
exec vi $1 << EOF
i

Technology is rapidly advancing everyday.
Because of this, programmers are becoming heavily needed.
There is a bright future for programming jobs.
Will you be apart of that future?

ZZ
EOF

echo "End of script."

