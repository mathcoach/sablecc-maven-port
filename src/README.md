In some situation you may need to recompile sablecc with
your preferred java compiler. In this case you can use scripts
in this directory to get this task done.



## To check effective Java Version


run `ant -f maven-build.xml mavendebug`



## To build the jar files:


Run `ant -f maven-build.xml mavendist`! The jar files are created in `./sablecc-3.7/lib/maven-dist`



## To deploy to internal repository


Run `redeploy-sablecc-3.7-to-repo.sh`!


To deploy maven central repository
##################################
Run `redeploy-sablecc-3.7-to-mavencentral.sh`!

