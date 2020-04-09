# My Blog
http://blog.auska.win

## Usage

```
docker create --name=webdav \
-v <path to webdav>:/wedav \
-v <path to config>:/config \
-e PGID=<gid> -e PUID=<uid> \
-e TZ=<timezone> \
-p 80:80\
auska/docker-webdav
```