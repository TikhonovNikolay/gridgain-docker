## GridGain Docker Image

This repo contains docker image for GridGain in-memory data-grid.

# Usage

You need to pull GridGain docker image from Docker registry via command below which gets latest stable release
of GridGain by default.

`docker pull ntikhonov/gridgain`

After that you should be able to run GridGain docker image by :

`docker run -it ntikhonov/gridgain`

# Environment Variables

You can give environment variables to GridGain instance in your docker command. You can also define more than one VM
arguments to your GridGain instance via JAVA_OPTS environment variables:

`docker run -it -e JVM_OPTS="-Xms1g -Xmx1g -server -XX:+AggressiveOpts -XX:MaxPermSize=256m" ntikhonov/gridgain`

# Deploy Artifacts

For deploying artifacts need to mount those jars to docker container.

`docker run -v localPathToLibs:$GRIDGAIN_HOME/gridgain-enterprise-fabric-$GRIDGAIN_VERSION/libs -it ntikhonov/gridgain`

# Using GridGain Configuration File

You need to give path of your configuration file as `CONFIG_URI`.

`docker run -it -e CONFIG_URI="https://s3-us-west-1.amazonaws.com/public-config-files/docker-example-config.xml" ntikhonov/gridgain`
