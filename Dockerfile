FROM tomcat:9-jre21
COPY target/hello-world.war /usr/loacal/tomcat/webapps/
