# sftp-alpine
This is a fully functional SFTP/SSH server for the cost of only 13.1 MB! The default configuration has a non-privileged user *sftp* and is exposed on port 2222.

Example Usage
===
cp `env.example` to `.env` and fill in passwords
```
docker-compose build
docker-compose up -d
```
