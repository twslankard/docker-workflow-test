Toy example of using a "builder" Docker container that uses the host's clone of the repository to build the artifacts, which are then put back onto the host, and then copied into a "runner" for deployment.

Run `./do_everything.sh` to try it.

While running, you'll see all sorts of Docker output. The last line should be from the app that's being run by the runner container:

    Out here in Amish...

TODO: make sure we're using best practices.
TODO: figure out how to get build artifacts to be owned by local user?
