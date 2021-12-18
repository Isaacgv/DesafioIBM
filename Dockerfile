# Build the deployment container
FROM gliderlabs/alpine:latest

# Copy compiled musl binary
COPY pingcli-rs ./

# Set executable permissions
RUN ["chmod", "+x", "/pingcli-rs"]
RUN apt-get update
RUN apt-get install -y python

# Execute binary
CMD /pingcli-rs -e isaac.gonzales@alumni.usp.br
COPY post.py ./
CMD [ "python", "./post.py"]
