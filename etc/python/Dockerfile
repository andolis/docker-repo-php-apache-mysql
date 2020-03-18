ARG PYTHON_NAME=""
ARG PYTHON_VERSION=""

FROM python:${PYTHON_VERSION}

ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

WORKDIR $PATH

#COPY m_func_sql.py .
#COPY rankchecker.py .
#COPY mysql_connect.txt .

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt
RUN pip uninstall -y Werkzeug
RUN pip install Werkzeug==0.16.0
ENV PYTHONUNBUFFERED 1

#CMD ["python","rankchecker.py"]