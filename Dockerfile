# Use the python:3-slim base image
FROM python:3-slim

# Install Django version 3.2
RUN pip install django==3.2


# Copy the current directory contents into the container
COPY . .

RUN python manage.py migrate

# Set the default command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]

