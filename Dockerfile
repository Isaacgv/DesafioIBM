FROM python:latest
WORKDIR /usr/app/src

# Build the deployment container
FROM gliderlabs/alpine:latest

# Copy compiled musl binary
COPY pingcli-rs ./

# Set executable permissions
RUN ["chmod", "+x", "/pingcli-rs"]

#RUN apt-get install -y python

#WORKDIR /app

#COPY post.py post.py

# Execute binary
CMD /pingcli-rs -e isaac.gonzales@alumni.usp.br
COPY post.py ./
#CMD [ "python3", "./post.py"]
#RUN python3 post.py

RUN python -m pip install requests
#COPY post.py .
CMD ["python", "./post.py"]
