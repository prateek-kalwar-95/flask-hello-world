# set base image (host OS)
FROM python:3.8-alpine

# set the working directory in the container
WORKDIR /face-api

# copy the dependencies file to the working directory
COPY . .

# install dependencies
RUN pip install -r requirements.txt
# copy the content of the local src directory to the working directory
# COPY app.py .

# command to run on container start
CMD [ "python", "./app.py" ]