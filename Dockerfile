FROM alpine
LABEL author="bala"
#CD /media/sf_GoWorkspace/src/go-docker-poc/
COPY docker-poc /app/docker-poc
ENTRYPOINT [ "/app/docker-poc" ] 

#FROM golang:alpine
 #LABEL author=babuj

 #ENV SOURCES /media/sf_GoWorkspace/src/go-docker-poc
 #COPY . ${SOURCES}
 #RUN cd ${SOURCES} && CGO_ENABLED=0 go install

#ENV PORT 8080
 
#ENV NAME Echo
 #EXPOSE 8080
 #ENTRYPOINT [ "/media/sf_GoWorkspace/bin/docker-poc" ]
