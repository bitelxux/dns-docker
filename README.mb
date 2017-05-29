# dns-docker

```
sudo docker build --rm -t dns .

and then something like

# case 1 You have created a docker network and you want to specify an IP
sudo docker run --restart always --name dns --net 10.1.1.0 --ip 10.1.1.2  -itd dns

or

# case 2 You don't need to configure any specific network/IP
sudo docker run -p53:53/udp --restart always --name dns -itd dns
```

If the net and ip are omitted, the host's IP will need to be specified as DNS server's IP

```
#/etc/resolv.conf

search shifters.com
nameserver 10.1.1.2 # if an IP was given
#nameserver 10.1.1.1 # host's IP, if no IP was given to the container
```

## To get a shell in the container

```
sudo docker exec -it dns bash
```

## How to change the dns configuration

- get a shell in the container
- edit the relevant files
- restart bind with
  ```
  service bind9 restart
  ```
