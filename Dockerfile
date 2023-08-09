FROM python:3.8.8

COPY ./app /app

WORKDIR /app

RUN python -m pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install streamlit-img-label

CMD streamlit run app.py --server.port 8501