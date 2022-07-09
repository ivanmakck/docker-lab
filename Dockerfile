FROM python:3.9-slim

RUN pip install pandas

WORKDIR /docker-lab

COPY py_script.py .

VOLUME /docker-lab/input /docker-lab/output

ENV INPUT_DIR=input
ENV OUTPUT_DIR=output

CMD ["sh","-c","tail -f /dev/null"]