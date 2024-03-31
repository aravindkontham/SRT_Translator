# SRT_Translator
### Step1: Search the image of Jupiter
```
docker search tensorflow
```
### step2: Pull the jupiter/tensorflow-notebook
```
docker pull jupiter/tensorflow-notebook
```
### step3: Create a container with the pulled image
```
docker run -it -p 8000:8888 --name jupiter jupiter/tensorflow-notebook
```
### step4: Create yaml file 
```services:
   transformers-notebook:
      build: ./
      # image: jupyter/tensorflow-notebook
      ports:
        - 8000:8888
      environment:
        - JUPYTER_TOKEN=imvirat
      volumes:
        - ./:/home/jovyan

```
### step5: Create a dockerfile
```
ROM jupyter/tensorflow-notebook
# COPY requirements.txt Google_trans.ipynb ./
# # Copy requirements.txt into the Docker image
# COPY requirements.txt /tmp/requirements.txt
     
USER $NB_UID
RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    pip install googletrans==4.0.0-rc1 && \
    fix-permissions "/home/${NB_USER}"
```

### Step5: Docker compose with the written yaml file and dockerfile
```
docker-compose up
```