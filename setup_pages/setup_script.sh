#!/bin/bash

# Iterate over each directory in /home
for dir in /home/*; do
    if [ -d "$dir" ]; then
        username=$(basename "$dir")

        # Check if the user already exists
        if id "$username" &>/dev/null; then
            echo "User $username already exists."
        else
            # Create the user with specific UID and GID
            useradd -d "$dir" "$username"
            echo "Created user $username."
        fi

        # Ensure the user owns their home directory
        chown -R "$username:$username" "$dir"
        chmod -R 755 "$dir"
        export PATH="$dir/.local/bin:$PATH"
    fi
done
 
echo "Installing Packages"

sudo rm /usr/bin/python3
sudo ln -s python3.10 /usr/bin/python3
python3 --version
pip install numba

pip install tensorflow
pip install seaborn

echo "Setting up Python virtual environment..."

cd /home/tele/Music/Tantrik_Testcenter

# Create and activate the virtual environment
source .venv/bin/activate

# Upgrade pip and install requirements
pip install --upgrade pip
pip install -r requirements.txt

echo "Virtual environment setup complete."


cd /usr/local/share/custom_pages

cp filemanager.py /usr/local/lib/python3.10/dist-packages/jupyter_server/services/contents/filemanager.py
cp handlers.py /usr/local/lib/python3.10/dist-packages/jupyter_server/services/contents/handlers.py
cp manager.py /usr/local/lib/python3.10/dist-packages/jupyter_server/services/contents/manager.py
cp page_config.json /usr/etc/jupyter/labconfig/page_config.json
cp serverextension.py /usr/local/lib/python3.10/dist-packages/jupyter_server/extension/serverextension.py
cp labextensions.py /usr/local/lib/python3.10/dist-packages/jupyterlab/labextensions.py
cp apihandlers.py /srv/nbgrader/nbgrader/nbgrader/server_extensions/formgrader/apihandlers.py
cp tantrik.png /usr/local/share/jupyterhub/static/images/jupyterhub-80.png



apt install wget
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
sudo apt-get install -y \
    cuda-cudart-12-2 \
    libcusolver-12-2 \
    cuda-nvrtc-12-2 \
    cuda-nvvm-12-2 \
    cuda-driver-dev-12-2

pip install numba
