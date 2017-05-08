This image is lightweight (relative to most Metasploit images) and
is based on the debian Docker image. It runs a fully functional instance of
the Metasploit Framework with a database already configured.
It also contains tmux, vim-tiny (run with "vi"), and nmap.

Run the "db_rebuild_cache" command in the msfconsole to initialize the database.

### Example Usage
The following command binds the host's ports 4444 and 8080 to the corresponding
ports in the container, creates an interactive TTY session, and runs the image.

```
$ docker run -p 4444:4444 8080:8080 -it watersalesman/debian-metasploit
```
***
### To-Do
-Add instructions to bind ~/.msf4 and other folders
-Flesh out README.md overall
