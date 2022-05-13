PROJECT_DIRECTORY="/home/user1/mirroring"

git --work-tree=$PROJECT_DIRECTORY --git-dir=$PROJECT_DIRECTORY/.git checkout main $PROJECT_DIRECTORY

docker compose -f $PROJECT_DIRECTORY/docker-compose.yaml up --build
