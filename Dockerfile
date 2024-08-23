# Start with the Python 3.7 slim base image
FROM python:3.7-slim

# Add build argument for Git commit
ARG GIT_COMMIT=unknown

# Set Git commit SHA as an environment variable
ENV GIT_COMMIT=$GIT_COMMIT

# Add Git commit SHA as a label
LABEL git_commit=$GIT_COMMIT

# Install Flask
RUN pip install flask

# Set the working directory in the container
WORKDIR /app

# Copy the application file into the container
COPY app.py /app/app.py

# Set the entrypoint to python
ENTRYPOINT ["python"]

# Set the default command to run your app
CMD ["/app/app.py"]