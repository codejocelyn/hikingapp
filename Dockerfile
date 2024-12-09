# Step 1: Use a base Python image
FROM python:3.9-slim

# Step 2: Set a working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements file into the container
COPY requirements.txt /app/

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the Django project into the container
COPY . /app/

# Step 6: Expose the port the Django app will run on
EXPOSE 8000

# Step 7: Define the command to run the app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
