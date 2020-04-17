FROM alpine
CMD echo "test" > output-file && chmod a-w output-file
