# Build the deployment container
FROM gliderlabs/alpine:latest

# Copy compiled musl binary
COPY pingcli-rs ./

# Set executable permissions
RUN ["chmod", "+x", "/pingcli-rs"]

# Execute binary
CMD /pingcli-rs -e isaac.gonzales@alumni.usp.br

CMD [ "python3", "./post.py"]
