# LogicalDOC Enterprise Edition with MySQL 
Official Docker image for LogicalDOC Community with MySQL

## What is LogicalDOC ?
The LogicalDOC is a flexible and highly performant Document Management System platform

![LogicalDOC](https://www.logicaldoc.com/images/assets/LogicalDocWhiteH02-167.png)

* **Manuals**: http://docs.logicaldoc.com
* **Twitter**: https://twitter.com/logicaldoc
* **Blog**: http://blog.logicaldoc.com

### How to use this image

## Start a bare LogicalDOC instance
```Shell
$ docker run -d -p 8080:8080 logicaldoc/logicaldoc-ce-mysql
```
This image includes EXPOSE 8080 (the logicaldoc port). The default LogicalDOC configuration is applied. 

The LogicalDOC DMS is accessible at http://${DOCKER_HOST}:8080/ and default User and Password are **admin** / **admin**.

### Not ready for production
This image with LogicalDOC Community inside is not directly supported and is not ready for production.

## Start a LogicalDOC with some settings 
```Shell
$ docker run -d -p 8080:8080 -p 1000:22 --env LDOC_MEMORY=4000 logicaldoc/logicaldoc-ce-mysql
```
This will install the same image as above but comes with 4000 MB memory allocated to LogicalDOC, moreover it opens the SSH access through port 1000.

## Environment Variables
The LogicalDOC image uses environment variables that allow to obtain a more specific setup.

* **LDOC_MEMORY**: memory allocated for LogicalDOC expressed in MB (default is 2000)
* **LDOC_USERNO**: your own license activation code
* **SSH_PSWD**: pasword of the **logicaldoc** SSH user (default is 'logicaldoc')

