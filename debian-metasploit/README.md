This image is lightweight (relative to most Metasploit images) and
is based on the debian Docker image. It runs a fully functional instance of
the Metasploit Framework with a database already configured.
It also contains tmux, vi, and nmap.

Run the "db_rebuild_cache" command in the msfconsole to initialize the database.

### Example Usage
The following command binds the host's ports 4444 and 8080 to the corresponding
ports in the container, creates an interactive TTY session, and runs the image.

```
$ docker run -p 4444:4444 -p 8080:8080 -it watersalesman/debian-metasploit
```
***
The following example only publishes port 4444. It also binds the msf_files folder
on the host to root's .msf4 folder in the container. This allows for continuity
between container instances and easy exfiltration of files from the
container to the host.

```
$ docker run -p 4444:4444 -v ~/msf_files:/root/.msf4 -it watersalesman/debian-metasploit
```
***
