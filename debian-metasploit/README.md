This image is lightweight (relative to most Metasploit images) and
is based on the debian Docker image. It runs a fully functional instance of
the Metasploit Framework. It also contains tmux, vim-tiny (run with "vi"), and nmap.

### Example Usage

```
$ docker run -p 4444:4444 8080:8080 -d -it watersalesman/debian-metasploit
```

### To-Do
-Add database support
-Add instructions to bind ~/.msf4 and other folders
-Flesh out description overall
