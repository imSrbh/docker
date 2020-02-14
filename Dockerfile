# step 1
FROM alpine

# step 2 : install a software
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >>/etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >>/etc/apk/repositories


RUN apk update
RUN apk add mongodb=3.4.4-r0

# apk is like apt-get (how we are bringing that program)
# binutils is like a program/software
# we are creating a image which is having binutils program


# step 3 : configure that software
VOLUME ["/data/db"]
WORKDIR /data
EXPOSE 27017

# step 4 : set default commands
CMD [ "mongod" ]