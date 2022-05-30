// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

uint constant TOTAL_TICKETS = 10;

contract Tickets {
    address public owner = msg.sender;

    struct Ticket {
        uint256 price;
        address owner;
    }

    Ticket[TOTAL_TICKETS] public tickets;

    constructor() {
        for (uint i = 0; i < TOTAL_TICKETS; i++) {
            tickets[i].price = 1e17;  // 0.1 ETH
            tickets[i].owner = address(0x0);
        }
    }

    function buyTicket(uint _index) external payable {
        require(_index < TOTAL_TICKETS && _index >= 0, "Index out of bounds");
        require(tickets[_index].owner == address(0x0), "Ticket already bought");
        require(msg.value >= tickets[_index].price, "Not enough ETH");

        tickets[_index].owner = msg.sender;
    }




}