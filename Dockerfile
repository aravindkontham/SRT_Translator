FROM jupyter/tensorflow-notebook
COPY requirements.txt /tmp/requirements.txt
USER $NB_UID
RUN pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt && \
    fix-permissions "/home/${NB_USER}"


