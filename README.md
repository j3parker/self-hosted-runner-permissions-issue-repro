# self-hosted-runner-permissions-issue-repro

Reproducing a problem with file permissions + self-hosted runners.

If a container step writes a file it will be owned by root. `git clean` will fail to remove this file if it is `-w`, so checkout will attempt to `rm -rf` the repo which will ultimately fail as well. The self-hosted runner is effectively bricked for this repo.
