# Easy Owncast + Caddy HTTPs setup using docker-compose

These steps are to run on the server you want to run owncast on.
Ideally your server is running a flavour of Linux but these steps
might work in WSL2 as well.

0. Install docker and docker-compose
1. Clone this repo and open a terminal at root of this dir.
2. Run the setup with the URL you will be using for owncast - you will need a DNS entry pointing to your server.
    Run the setup script, exporting the `OWNCAST_URL` like:

    ```
    OWNCAST_URL=live.example.com ./setup.sh
    ```

    This should create the docker networks and create the Caddyfile in ./caddy
    You can add your email by updating the global options block at the top of ./caddy/Caddyfile.
    If you don't need the www.<your_domain> block you can remove this as well. 

3. Run `docker-compose up -d` or `./start.sh` and check you can access the owncast instance.
    
    In case of any problems you can run `docker-compose logs` to see what logs the containers are outputting.
