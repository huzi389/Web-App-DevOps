# Use a base image with the desired operating system

FROM ubuntu:latest



# Install necessary dependencies (e.g., browsers, drivers, Python, etc.)

RUN apt-get update \

    && apt-get install -y \

       chromium-browser \

       chromium-chromedriver \

       python3 \

       python3-pip



# Set up environment variables

ENV PATH="/usr/lib/chromium-browser/:${PATH}"



# Set the working directory

WORKDIR /app



# Copy your Selenium test code into the container

COPY . /app



# Install Python dependencies (if using Python)

RUN pip3 install selenium



# Define the command to run your Selenium tests

CMD ["python3", "testcase.py"]



