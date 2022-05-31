# Play with web3-tickets

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

- Install web3 library and run the project front end:
```linux
cd client
npm install --save-dev parcel
npm run start
```
Finally, connect your current account to the localhost server

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/front_end_display.png" alt="drawing" width="600"/>

Buying ticket:

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/buying_ticket.png" alt="drawing" width="570"/>

Ganache Back-end console with current contract balance:

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/back_end_display_2.png" alt="drawing" width="600"/>

current transaction information:

<img src="https://github.com/hyc0812/web3-tickets/blob/master/pics/back_end_display_1.png" alt="drawing" width="600"/>

---

### MEMO

commands used for creating client directory and dependencies:

```linux
mkdir client
cd client
npm init -f
npm install --save-dev parcel
```

### References
https://www.youtube.com/watch?v=FYhZPovlGZQ
https://www.youtube.com/watch?v=JXa_Y-17Oj4
