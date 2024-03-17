# pull python base image
FROM python:3.11

# copy application files
ADD . .

# specify working directory
WORKDIR /

# update pip
RUN pip install --upgrade pip

#RUN pip freeze > requirements.txt

# install dependencies
RUN pip install -r requirements.txt

# expose port for application
EXPOSE 8001

# start fastapi application
CMD ["python", "app/main.py"]