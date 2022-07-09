FROM python:3.9-slim

RUN pip install pandas
RUN mkdir docker-lab

WORKDIR docker-lab

RUN mkdir input output

COPY py_script.py .

ENV INPUT_DIR=input
ENV OUTPUT_DIR=output

VOLUME $INPUT_DIR $OUTPUT_DIR

CMD ["sh","-c","tail -f /dev/null"]