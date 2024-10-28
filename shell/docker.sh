#! /bin/bash

if [[ "$OSTYPE" =~ "darwin" ]]; then
    brew install docker docker-compose colima
    brew services start colima
elif [[ "$OSTYPE" =~ "linux" ]]; then
    sudo apt update && sudo apt install -qq ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
    echo \
      "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update && sudo apt install -qq docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    # Post-install https://docs.docker.com/engine/install/linux-postinstall/
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
fi

# Verify
docker run hello-world
