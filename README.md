# hacking-spark-with-mongo

Uses Pyspark and Jupyter to perform spark ops against MongoDB.

### setup
Make sure you have Docker Desktop up and running then run the following Make targets,
- `make create` will setup MongoDB as a local container populated w/ data
- `make install-spark` if you haven't installed spark yet run this (Mac/Brew needed)

### running Jupyter notebooks
I am using PyCharm so it takes care of running Jupyter server for me. You'll need that running and targeting the __notebooks__ folder.

Once you've run the make targets and have Jupyter up and viewing these notebooks just run them.
