FROM jupyter/tensorflow-notebook
# COPY requirements.txt Google_trans.ipynb ./
# # Copy requirements.txt into the Docker image
# COPY requirements.txt /tmp/requirements.txt
     
USER $NB_UID
RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    pip install googletrans==4.0.0-rc1 && \
    fix-permissions "/home/${NB_USER}"
COPY Captions_eng.srt SrtTranslator.ipynb Google_trans.ipynb ./

