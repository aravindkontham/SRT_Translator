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
### Step4: Docker compose with the written yaml file and dockerfile
```
docker-compose up
```