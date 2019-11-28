de=$(which docker | grep "not found")
if [ ! -z "$de" ]; then
    echo "Installing docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
fi