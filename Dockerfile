# Use the official Python image from the Docker Hub
FROM python:3.11-slim
# set the working directory in the container
WORKDIR /app
#Copy the source code into the container
COPY . /app

# copy the requirements file into the container
COPY requirements.txt .
# install the dependencies
RUN pip install --no-cache-dir -r requirements.txt
# expose the port the app runs on
EXPOSE 5000
# command to run the application
CMD ["python", "src/app.py"]