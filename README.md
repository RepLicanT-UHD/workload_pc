## Installing
```
git clone https://github.com/Stormle/gr-miner-docker
cd gr-miner-docker
```
* Replace Dockerfile's wallet address with your own
```
docker-compose up
```


####
FAQ:

```
Q: Why does this docker use a pool IP-address and not a web address?

A: For some reason the miner is not able to solve DNS requests normally but it works with IP-addresses.
```
```
Q: What pool does this script run on?

A: The pool built in to this script is r-pool.net
```