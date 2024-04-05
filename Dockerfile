FROM python
WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN python ./train.py
CMD ["python","./test.py"]