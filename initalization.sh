CONFIG_FILE=config.yml
CONFIG_DIRECTORY=config

if ! test -f "$CONFIG_DIRECTORY/$CONFIG_FILE"; then
    echo "Creating config directory"
    mkdir "$CONFIG_DIRECTORY"
    
    cd "$CONFIG_DIRECTORY"
    echo "Creating config.yml"
    touch "$CONFIG_FILE"
    
