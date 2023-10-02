include .env

run:
    docker run -p 3000:3000 --name ${CONTAINER_NAME} \
        --mount "type=bind,src=./src,target=/src" \
        --mount "type=bind,src=./package.json,target=/package.json" \
        --mount "type=bind,src=./package-lock.json,target=/package-lock.json" \
        --mount "type=bind,src=./public,target=/public" ${IMAGE_NAME}

up:
    docker build -t ${IMAGE_NAME} .
    make run

down:
    docker stop ${CONTAINER_NAME}
    docker rm ${CONTAINER_NAME}