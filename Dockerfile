FROM python:3.10-slim-buster

RUN pip install jupyter

ENV PATH="/home/jupyter/.local/bin:${PATH}"

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

#COPY . .

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root" ]
