FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*



 RUN mkdir /workspace/my-gitpod-android-install-02/android \
   && wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip \
   && unzip sdk-tools-linux-4333796.zip -d /workspace/my-gitpod-android-install-02/android \
   && rm sdk-tools-linux-4333796.zip \
   && ./workspace/my-gitpod-android-install-02/android/tools/bin/sdkmanager --list 
 
 
# ./tools/bin/sdkmanager --list 

# ./tools/bin/sdkmanager --list 

 #./tools/bin/sdkmanager "platforms;android-28" "build-tools;28.0.3" done

# ./tools/bin/sdkmanager --update

 
 
 

USER gitpod
# Apply user-specific settings
# ENV ...

# Give back control
USER root
