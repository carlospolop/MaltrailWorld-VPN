# MaltrailWorld-VPN

This project runs an Open-VPN server whose traffic will be automatically inspected by [MaltrailWord](https://github.com/carlospolop/MaltrailWorld)

## Quick instructions

```bash
# Run a new docker container with carlospolop/maltrailworld-vpn
docker run -d --privileged --name "maltrailworld-vpn" -p 1194:1194/udp -p 443:443/tcp -p 8338:8338/tcp carlospolop/maltrailworld-vpn
# Listen in port 8080 where a valid client configuration file will be provided
docker run -t -i -p 8080:8080 --volumes-from "maltrailworld-vpn" carlospolop/maltrailworld-vpn serveconfig
```

## VPN + Malicious packet analysis

This project takes advantage of the high privacy obtained by the use of a VPN in your own VPS and takes advantage of the power of malicious packets analysis provided by [MaltrailWord](https://github.com/carlospolop/MaltrailWorld)

Please, visit [MalwareWorld](https://github.com/carlospolop/MalwareWorld) to know more about this project

Please, visit [Maltrail](https://github.com/stamparm/MalTrail) to know more about this project

Please, visit [dockvpn](https://github.com/jpetazzo/dockvpn) to know more about this project

  
