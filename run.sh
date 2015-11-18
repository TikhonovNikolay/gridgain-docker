#!/bin/bash
#
#  Copyright (C) GridGain Systems. All Rights Reserved.
#  _________        _____ __________________        _____
#  __  ____/___________(_)______  /__  ____/______ ____(_)_______
#  _  / __  __  ___/__  / _  __  / _  / __  _  __ `/__  / __  __ \
#  / /_/ /  _  /    _  /  / /_/ /  / /_/ /  / /_/ / _  /  _  / / /
#  \____/   /_/     /_/   \_,__/   \____/   \__,_/  /_/   /_/ /_/
#

if [ ! -z "$OPTION_LIBS" ]; then
  IFS=, LIBS_LIST=("$OPTION_LIBS")

  for lib in ${LIBS_LIST[@]}; do
    cp -r $GRIDGAIN_HOME/gridgain-enterprise-fabric-$GRIDGAIN_VERSION/libs/optional/"$lib"/* \
        $GRIDGAIN_HOME/gridgain-enterprise-fabric-$GRIDGAIN_VERSION/libs/
  done
fi

if [ -z $CONFIG_URI ]; then
  $GRIDGAIN_HOME/gridgain-enterprise-fabric-$GRIDGAIN_VERSION/bin/ignite.sh -v
else
  $GRIDGAIN_HOME/gridgain-enterprise-fabric-$GRIDGAIN_VERSION/bin/ignite.sh -v $CONFIG_URI
fi
