FROM alpine
CMD mkdir foo && echo "test" > foo/output-file && chmod -R go-rwx foo
