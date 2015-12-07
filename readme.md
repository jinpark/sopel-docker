# Sopel on Docker

------

Runs Sopel on Docker (You could have probably done this yourself in 5 minutes)

Few small notes:

1. Sopel requires you to not run as root. So it creates a sopel user and uses that
2. Your .sopel folder that you pass in to the container requires write permissions for the sopel user
3. The `.cfg` file that sopel looks for is in `.sopel/default.cfg`


To run:
`docker run -it --rm -v $HOME/.sopel:/sopel jinpark/sopel-docker`
