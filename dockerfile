FROM tomcat:9.0-jdk17-openjdk

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container at /usr/local/tomcat/webapps
COPY surveyform.war .

# Ensure the catalina.sh script has execute permissions
RUN chmod +x /usr/local/tomcat/bin/catalina.sh

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]