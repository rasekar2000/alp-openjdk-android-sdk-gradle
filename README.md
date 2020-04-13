# alp-openjdk-android-sdk-gradle
alp-openjdk-android-sdk-gradle

To generate APK from 'Android SDK Gradle' installed  *alpine-openjdk-android-sdk-gradle Here*, check out the [Alpine OpenJDK - Android SDK - Gradle](https://github.com/rasekar2000/alp-openjdk-android-sdk-gradle) 

### Table of Contents
**[Installation Instructions](#installation-instructions)**<br>
**[Usage Instructions](#usage-instructions)**<br>
**[Test Results](#test-results)**<br>

## Installation Instructions

1. In MAC/linux, *make sure* have git installed. If not please install them. 
2. In the MAC/linux command prompt go to the terminal and execte the following instruction
   <pre>

   ```unix
   git clone git@github.com:rasekar2000/alp-openjdk-android-sdk-gradle.git
   ```
   </pre>

## Usage Instructions

1. In MAC, *make sure* have docker & curl installed. If not please install them. 
2. In the command prompt go to the *scripts* folder
   <pre>

   ```unix
   chmod +x docker.gradle_android_apk_build.sh
   ```
   </pre>
3. In the command prompt go to the *scripts* folder to 
   <pre>

   **build & run** `docker`.
   ```unix
   ./docker.gradle_android_apk_build.sh stop-build-run
   ```
   </pre>
4. In the command prompt go to the *scripts* folder to 

   <pre>
   **Test** `gradlew clean assembleDebug`.

   ```unix
   docker exec -ti gradle_android_apk_build /bin/sh
   /home/app $ ./gradlew clean assembleDebug
   ```
   </pre>

## Test Results

![screenshot of docker build](https://github.com/rasekar2000/alp-openjdk-android-sdk-gradle/blob/master/misc/DockerBuild.png?raw=true)

![screenshot of docker run](https://github.com/rasekar2000/alp-openjdk-android-sdk-gradle/blob/master/misc/DockerRun.Gradle.build.1.png?raw=true)

![screenshot of gradle build](https://github.com/rasekar2000/alp-openjdk-android-sdk-gradle/blob/master/misc/Gradle.build.2.png?raw=true)
