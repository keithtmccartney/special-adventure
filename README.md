# special-adventure
[Dapp University] How to Build Ethereum Dapp (Decentralized Application Development Tutorial)

Grab the tutorial at [https://www.youtube.com/watch?v=3681ZYbDSSk](https://www.youtube.com/watch?v=3681ZYbDSSk)

# Instructions
* 1: Install Node @ https://nodejs.org/en/download/;
* 2: Install Truffle @ http://truffleframework.com;
* 3: Install Ganache @ http://truffleframework.com/ganache/;
* 4: Install MetaMask @ https://metamask.io;
* 4: Install Sublime @ https://www.sublimetext.com;
* 5: Install Ethereum Solidity language syntax @ https://packagecontrol.io/packages/Ethereum;

# To Do
* Install the pet-shop [package](http://truffleframework.com/tutorials/pet-shop); Done;
* Migrate the Election contract via Truffle ("truffle migrate") (see changes in 'contracts' directory - Election.sol - and 'migrations' directory - '2_deploy_contracts.js'); Done;

# Smoke Test
* MINGW64 /.../special-adventure/election (master)
$ truffle console

* truffle(development)> Election.deployed().then(function(instance) { app = instance })
undefined

* truffle(development)> app.address
'0x345ca3e014aaf5dca488057592ee47305d9b3e10'

* truffle(development)> app.candidate()
'Candidate 1'

* See './images/ganache_smoke_test.png'; "Reads on the blockchain are free but writes on the blockchain cost gas.";

## Thanks

Thanks goes out to Dapp University for the FREE stuff!

* [Dapp University YouTube](https://www.youtube.com/channel/UCY0xL8V6NzzFcwzHCgB8orQ) ..."Donate Ether to this channel: 0x39C7BC5496f4eaaa1fF75d88E079C22f0519E7b9"...
* [Dapp University Twitter](https://twitter.com/DappUniversity) ..."@DappUniversity"...
* [Dapp University Email](mailto:gregory@dappuniversity.com) ..."Email me"...