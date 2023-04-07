# windows moment
$Env:DOCKER_BUILDKIT=0 
$Env:COMPOSE_DOCKER_CLI_BUILD=0

docker build -f ./Dockerfile -t version3.9-alpine . 