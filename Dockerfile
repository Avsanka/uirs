FROM python
RUN git clone "https://github.com/Avsanka/uirs.git"
RUN echo "running app from docker"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8081/tcp
CMD ["python", "index.py"]