FROM python:3.9.5-alpine3.13
RUN mkdir p /data
COPY ./SNAFU-Serve.py /
COPY ./requirements.txt /
RUN chmod +x /SNAFU-Serve.py
RUN pip install -r /requirements.txt
WORKDIR /data
ENTRYPOINT ["/SNAFU-Serve.py"]
CMD [""]