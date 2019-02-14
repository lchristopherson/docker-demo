FROM arm32v7/python:3.7.2-stretch

COPY . /app
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

CMD ["python", "app.py"]
