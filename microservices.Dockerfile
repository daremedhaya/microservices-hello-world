# Use the official AWS Lambda base image for Python (or your desired runtime)
FROM public.ecr.aws/lambda/python:3.9
# Set the working directory for your application
WORKDIR /app 
# Copy your microservice code into the container
COPY . /app/ 
# Install any dependencies required by your microservice
RUN pip install --no-cache-dir -r /app/requirements.txt
# Set environment variables for Lambda execution
ENV LAMBDA_TASK_ROOT=/app
# Set the entry point for Lambda function
CMD ["app.lambda_handler"]