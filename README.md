# Play with web3-tickets 
#### Blockchain dApp demo project

- Using Ganache UI (RPC Server is: HTTP://127.0.0.1:8545). Import the first account to MetaMask.
- Deploy the contract:
```linux
truffle migrate
```

- Test the contract (optional):
```linux
truffle test test/Tickets.js
```
<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/related_with_test_result.png" alt="drawing" width="580"/>

- Install all the dependencies that was registered in the package.json (including web3, parcel, bootstrap, etc..) and run the project:
```linux
cd client
npm install
npm run start
```
Finally, connect your current account to the localhost server

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/front_end_display.png" alt="drawing" width="600"/>

Buying ticket:

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/buying_ticket.png" alt="drawing" width="570"/>

Ganache Back-end console with current contract balance:

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/back_end_display_2.png" alt="drawing" width="600"/>

Current transaction information:

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/back_end_display_1.png" alt="drawing" width="600"/>

---

### MEMO

Commands used for creating client directory and dependencies:

```linux
mkdir client
cd client
npm init -f
npm install --save-dev parcel
npm install --save web3 bootstrap
```

Connect to MetaMask using HTML & JavaScript
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JavaScript Test</title>
</head>
<body>
    <script>
        async function connect() {
            if ( typeof window.ethereum !== "undefined") {
                ethereum.request({method: "eth_requestAccounts"});
            }
        }
    </script>
    <button id="connectButton" onclick="connect()">Connect!</button>
</body>
</html>
```

**REMINDER**: If reboot and reconnect the Ganache UI, reinstalling npm dependencies is needed:
```linux
rm -rf node_modules
npm install
npm run start
```

### References
Original auther:
https://www.youtube.com/watch?v=FYhZPovlGZQ
https://www.youtube.com/watch?v=JXa_Y-17Oj4
