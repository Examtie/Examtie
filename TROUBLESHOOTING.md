# Troubleshooting
> Ports are not available: listen tcp 0.0.0.0/abcde: bind: An attempt was made to access a socket in a way forbidden by its access permissions

Check if there is another service running on that port. 

**If there is:** Change the port that Examtie uses in docker-compose.yml


**If there appear to be none and you're on windows:** try running
`net stop winnat` then start Examtie as usual and then run `net start winnat`

> I don't have Docker / I don't know how to use Docker

Consult the docs :) https://docs.docker.com/get-started/