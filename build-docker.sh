docker stop api_gateway
docker rm api_gateway
docker rmi api_gateway
docker build -t api_gateway .
docker run -d -p 2492:2492 --name api_gateway api_gateway
