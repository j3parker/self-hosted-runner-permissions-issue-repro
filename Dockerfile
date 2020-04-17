FROM alpine
CMD echo "test" > output-file && chmod o-w output-file
