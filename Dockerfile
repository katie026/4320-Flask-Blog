# use an official python runtime as base image
FROM python:3.8-slim-buster

# set the working directory
WORKDIR /app

# copy the code base in the current diectory to the container /app
COPY . /app

# upgrade pip
RUN pip install --upgrade pip

# install any needed packages
RUN pip install -r requirements.txt

# set default command to run when starting the container
CMD ["python", "app.py"]