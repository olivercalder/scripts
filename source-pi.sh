#!/bin/bash

PROFILECONF=$HOME/.profile
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

grep "$DIR/common" $PROFILECONF > /dev/null || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d '$DIR'/common ] ; then' >> $PROFILECONF
    echo '    PATH="'$DIR'/common:$PATH"' >> $PROFILECONF
    echo "fi" >> $PROFILECONF
}

grep "$DIR/pi" $PROFILECONF > /dev/null || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d '$DIR'/pi ] ; then' >> $PROFILECONF
    echo '    PATH="'$DIR'/pi:$PATH"' >> $PROFILECONF
    echo "fi" >> $PROFILECONF
}
