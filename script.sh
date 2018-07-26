#!/bin/bash

git init
echo "build the app"
#wget http://central.maven.org/maven2/org/sonarsource/scanner/maven/sonar-maven-plugin/3.3.0.603/sonar-maven-plugin-3.3.0.603.jar
#mvn clean package -B 
export MAVEN_OPTS="-Xmx4G"
mvn clean verify sonar:sonar
# In some situation you may want to run sonar:sonar goal as a dedicated step. Be sure to use install as first step for multi-module projects
mvn clean install
mvn sonar:sonar
# Specify the version of sonar-maven-plugin instead of using the latest. See also 'How to Fix Version of Maven Plugin' below.
mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.3.0.603:sonar
#mvn -X org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar -Dsonar.host.url=http://staging.imaginepartners.com:9000  -Dsonar.login=1f625092d76459a3731e8fff28c516863ed47877
#mvn -X install sonar:sonar\
#  -Dsonar.host.url=http://staging.imaginepartners.com:9000 \
#  -Dsonar.login=062439a8567964714c70e11bc13927d1ec913040

#mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent package sonar:sonar 
#echo "mvn sonar"
#mvn -X sonar:sonar \
 # -Dsonar.host.url=http://staging.imaginepartners.com:9000 \
 # -Dsonar.login=062439a8567964714c70e11bc13927d1ec913040
#mvn clean 
#echo "mvn install"
#mvn -X  install
#mvn sonar:sonar \
#  -Dsonar.host.url=http://staging.imaginepartners.com:9000 \
#  -Dsonar.login=062439a8567964714c70e11bc13927d1ec913040


#mvn clean install




#mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.3.0.603:sonar
echo "done"
 
# echo "mvn install"
# mvn clean install   > /dev/null 2>&1
# echo "end mvn install"

#echo "mvn clean install sonar"  
#mvn clean install  \
#  -Dsonar.host.url=http://staging.imaginepartners.com:9000 \
#  -Dsonar.login=2bfff46db24f482286f74f6aacff63f3f569033b
#echo "fin mvn clean install sonar"  

#echo "sonaqube sonar sonar"
# mvn sonar:sonar #\
  #-Dsonar.host.url=http://staging.imaginepartners.com:9000 \
  #-Dsonar.login=4976f5b433de5d6cd64be95d1cf743c231960057
#echo "done sonar sonar"

#echo "final mvn org .. "
#mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.3.0.603:sonar \
 # -Dsonar.host.url=http://staging.imaginepartners.com:9000 \
  #-Dsonar.login=2bfff46db24f482286f74f6aacff63f3f569033b
#echo "end mvn sonar"

  


/bin/bash
