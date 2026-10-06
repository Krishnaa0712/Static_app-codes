FROM python
WORKDIR /restarent_booking/
EXPOSE 5000
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python","app.py"]
