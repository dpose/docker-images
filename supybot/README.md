# supybot image
**Using this image from docker-compose:**

**docker-compose.yml:**
```
supybot:
  restart: "always"
  image: dpose/supybot:latest
  environment:
    - SUPYBOT_CONF_FILE=absolute_path_inside_container_to_file_supybot.conf
  volumes:
    - absolute_path_in host_to_supybot_workdir:absolute_path_inside_container_to_supybot_workdir
```
