echo REDMIST MINECRAFT SERVER WIZARD
apt update
apt upgrade -y
apt install tmux wget -y
papermc && cd papermc
wget https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/416/downloads/paper-1.20.4-416.jar

# use your version of minecraft paper in the above line

wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.4.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.4.1_1.tar.gz

tar -xvf OpenJDK* && mv jdk* java

echo "eula=true" > eula.txt
tmux
java/bin/java -Xms4G -Xmx56G -jar paper*.jar nogui

