# LogicalDOC Community Edition with MySQL 
Docker image for LogicalDOC Community with MySQL

## What is LogicalDOC CE ?
LogicalDOC Community Edition (AKA LogicalDOC CE) is an open-source document management system platform

![LogicalDOC](https://www.logicaldoc.com/images/assets/LogicalDocWhiteH02-167.png)

* **WebSite**: https://www.logicaldoc.com
* **Community Forums**: https://forums.logicaldoc.com
* **Manuals**: https://docs.logicaldoc.com

LogicalDOC provides modern and flexible architecture that meet today's IT demands, based on open technology (Java, Tomcat, Google GWT, Lucene, Hibernate, Spring), powerful and scalable multiplatform application. 

It is a Web 2.0 application that works with the main browsers used today: Microsoft Edge, Google Chrome, Firefox and Safari.

LogicalDOC CE is 100% free software and supports major DMBS like MYSQL, MS SQL, PostgreSQL and Oracle; in this distribution it comes already installed with an handy MySQL 5.7

Due to its technological architecture design, LogicalDOC meets the document management needs of businesses of all sizes (from SMEs to big corporations). Thanks to its elegant and intuitive interface, LogicalDOC transforms complex operations into easy tasks. 

One of the most relevant function of LogicalDOC lies in its ability to index some of the the common used office documents: text, PDF, HTML, XML etc.

For a complete feature list take a look at https://goo.gl/jVt46s

### How to use this image

## Start a bare LogicalDOC instance
```Shell
$ docker run -d -p 8080:8080 logicaldoc/logicaldoc-ce-mysql
```
This image includes EXPOSE 8080 (the logicaldoc port). The default LogicalDOC configuration is applied. 

The LogicalDOC DMS is accessible at http://${DOCKER_HOST}:8080/ and default User and Password are **admin** / **admin**.


## Start a LogicalDOC with some settings 
```Shell
$ docker run -d -p 8080:8080 -p 1000:22 --env LDOC_MEMORY=4000 logicaldoc/logicaldoc-ce-mysql
```
This will install the same image as above but comes with 4000 MB memory allocated to LogicalDOC, moreover it opens the SSH access through port 1000.

## Environment Variables
The LogicalDOC image uses environment variables that allow to obtain a more specific setup.

* **LDOC_MEMORY**: memory allocated for LogicalDOC expressed in MB (default is 2000)
* **SSH_PSWD**: pasword of the **logicaldoc** SSH user (default is 'logicaldoc')

## Feature List


Feature Name  | Feature Name  | Feature Name
------------- | ------------- | -------------
Web-based document management software     | keyword cloud and metadata navigator  | Quick & Easy document search and retreival
Mobile Apps ( iPhone, iPad, Android )  | Complete activity log  | Dropbox integration
Permission based access control  | Intuitive and Easy User Interface  | Full-text search across document content and metadata
Extensible metadata model  | Preview of documents  | Standards-based API (CMIS) simplifies building custom front-ends
Import from compressed .ZIP archives  | Document versioning, document version control  | Webservices API
Document Repository Statistics  | Complete Document History with metadata comparison  | Joomla file-browser extension
Bookmarks on documents  | Notes on documents  | WebDAV interface
WordPress explorer component  |    |  


Web-based document management software
keyword cloud and metadata navigator
Quick & Easy document search and retreival
Mobile Apps ( iPhone, iPad, Android )
Complete activity log
Dropbox integration
Permission based access control
Intuitive and Easy User Interface
Full-text search across document content and metadata
Extensible metadata model
Preview of documents
Standards-based API (CMIS) simplifies building custom front-ends
Import from compressed .ZIP archives
Document versioning, document version control
Webservices API
Document Repository Statistics
Complete Document History with metadata comparison
Joomla file-browser extension
Bookmarks on documents
Notes on documents
WebDAV interface
WordPress explorer component




