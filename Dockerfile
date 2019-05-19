FROM python:3

WORKDIR /notebooks

EXPOSE 8888

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY install.sh ./
RUN chmod +x install.sh && ./install.sh

COPY notebook.sh /
CMD ["/notebook.sh"]
