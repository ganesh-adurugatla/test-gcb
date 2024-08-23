FROM your-base-image
# Add build argument
ARG GIT_COMMIT=unknown
# Set Git commit SHA as an environment variable
ENV GIT_COMMIT=$GIT_COMMIT
# Add Git commit SHA as a label
LABEL git_commit=$GIT_COMMIT
FROM python:3.7-slim
RUN pip install flask
WORKDIR /app
COPY app.py /app/app.py
ENTRYPOINT ["python"]
CMD ["/app/app.py"]
