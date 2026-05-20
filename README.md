# Wrapper Project to public sablecc 3 in a maven repository

Origin: https://sablecc.org

## To deploy distriuted binary

* Calling `deploy-sablecc-3.7-to-mavencentral.sh` will deploy the distributed binary in Central Maven Repository.
  This can be done only once.

* Calling `deploy-sablecc-3.7-to-repo.sh` will deploy the distributed binary in *your* internal repository. If
  you are the admin, you can remove the artifact and then deploy it again.

## To compile the distributed source  

A copy of sablecc-3.7 is placed in `src`. Check `src/README.md` for more information. This task may nessesary.



