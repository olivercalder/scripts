#!/bin/bash

PROFILECONF=$HOME/.profile

grep '$HOME/coding/scripts/common' $PROFILECONF || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d "$HOME/coding/scripts/common" ] ; then' >> $PROFILECONF
    echo '    PATH="$HOME/coding/scripts/common:$PATH' >> $PROFILECONF
    echo 'fi' >> $PROFILECONF
}

grep '$HOME/coding/scripts/backup' $PROFILECONF || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d "$HOME/coding/scripts/backup" ] ; then' >> $PROFILECONF
    echo '    PATH="$HOME/coding/scripts/backup:$PATH' >> $PROFILECONF
    echo 'fi' >> $PROFILECONF
}

grep '$HOME/coding/scripts/remote' $PROFILECONF || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d "$HOME/coding/scripts/remote" ] ; then' >> $PROFILECONF
    echo '    PATH="$HOME/coding/scripts/remote:$PATH' >> $PROFILECONF
    echo 'fi' >> $PROFILECONF
}

grep '$HOME/coding/scripts/pop' $PROFILECONF || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d "$HOME/coding/scripts/pop" ] ; then' >> $PROFILECONF
    echo '    PATH="$HOME/coding/scripts/pop:$PATH' >> $PROFILECONF
    echo 'fi' >> $PROFILECONF
}

grep '$HOME/coding/scripts/station' $PROFILECONF || { 
    echo "" >> $PROFILECONF
    echo 'if [ -d "$HOME/coding/scripts/station" ] ; then' >> $PROFILECONF
    echo '    PATH="$HOME/coding/scripts/station:$PATH' >> $PROFILECONF
    echo 'fi' >> $PROFILECONF
}
