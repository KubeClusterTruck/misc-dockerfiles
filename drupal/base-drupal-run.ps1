# Test Runing Linked Drupal/MySQl Containers
docker run -e MYSQL_ROOT_PASSWORD=admin123 -d --name mysql mysql
#
docker run -it --link mysql:msql -e MYSQL_PASSWORD=admin123 -p 8080:80 --name drupal1 drupal
