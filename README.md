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
* Run a reset-flag on migrating the contract/s through Truffle ("truffle migrate --reset"); (push a new copy of the contract/s to the local blockchain to run the updates as the previous copy/ies are immutable; we will lose the contract state and wil also be assigned a new address); Done;
* Check web3 account access - run 'web3' or 'web3.eth' or 'web3.eth.accounts' or 'web3.eth.accounts[4]' (for 5th account - index of zero - out of the 10 Ganache holds); (See './images/web3_smoke_test.png';); Done;

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

# Smoke Test 2 (after reset)
* truffle(development)> Election.deployed().then(function(i) { app = i; })
undefined

* truffle(development)> app.candidates()
Error: Invalid number of arguments to Solidity function...

* truffle(development)> app.candidates(1)
[ { [String: '1'] s: 1, e: 0, c: [ 1 ] },
  'Candidate 1',
  { [String: '0'] s: 1, e: 0, c: [ 0 ] } ]

* truffle(development)> app.candidates(99)
[ { [String: '0'] s: 1, e: 0, c: [ 0 ] },
  '',
  { [String: '0'] s: 1, e: 0, c: [ 0 ] } ]

* truffle(development)> app.candidatesCount()
{ [String: '3'] s: 1, e: 0, c: [ 3 ] }

* truffle(development)> var candidate = app.candidates()
(node:11044) UnhandledPromiseRejectionWarning: Unhandled promise rejection (rejection id: 3): Error: Invalid number of arguments to Solidity function
 DeprecationWarning: Unhandled promise rejections are deprecated. In the future, promise rejections that are not handled will terminate the Node.js process with a non-zero exit code.

* truffle(development)> app.candidates(1).then(function(c) { candidate = c; })
undefined

* truffle(development)> c
ReferenceError: c is not defined
    at evalmachine.<anonymous>:1:1
    at ContextifyScript.Script.runInContext (vm.js:53:29)
    at Object.runInContext (vm.js:108:6)
    at TruffleInterpreter.interpret (C:\Program Files\nodejs\node_modules\truffle\build\cli.bundled.js:209587:17)
    at bound (domain.js:301:14)
    at REPLServer.runBound [as eval] (domain.js:314:12)
    at REPLServer.onLine (repl.js:433:10)
    at emitOne (events.js:115:13)
    at REPLServer.emit (events.js:210:7)
    at REPLServer.Interface._onLine (readline.js:278:10)

* truffle(development)> candidate
[ { [String: '1'] s: 1, e: 0, c: [ 1 ] },
  'Candidate 1',
  { [String: '0'] s: 1, e: 0, c: [ 0 ] } ]

* (the EVM doesn't understand how to build a struct so running the following results in an 'undefined' return) truffle(development)> candidate.id
undefined

* (however) truffle(development)> candidate[0]
{ [String: '1'] s: 1, e: 0, c: [ 1 ] }

* (and...) truffle(development)> candidate[1]
'Candidate 1'

* (...and...) truffle(development)> candidate[0].toNumber()
1

* See './images/ganache_smoke_test.png'; (...and...) truffle(development)> candidate[2].toNumber()
0

## Thanks

Thanks goes out to Dapp University for the FREE stuff!

* [Dapp University YouTube](https://www.youtube.com/channel/UCY0xL8V6NzzFcwzHCgB8orQ) ..."Donate Ether to this channel: 0x39C7BC5496f4eaaa1fF75d88E079C22f0519E7b9"...
* [Dapp University Twitter](https://twitter.com/DappUniversity) ..."@DappUniversity"...
* [Dapp University Email](mailto:gregory@dappuniversity.com) ..."Email me"...