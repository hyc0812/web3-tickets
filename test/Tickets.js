const Tickets = artifacts.require("Tickets");
const assert = require('assert');

contract('Tickents', (accounts) => {
    const BUYER = accounts[0];
    const TICKET_ID = 0;
    
    it('should be able to buy a ticket', async () => {
        const instance = await Tickets.deployed();
        const originalTicket = await instance.tickets(
        TICKET_ID
    );
    await instance.buyTicket(TICKET_ID, {
        from:BUYER,
        value:originalTicket.price,
    });
    const updatedTicket = await instance.tickets(TICKET_ID);
    assert.equal(
        updatedTicket.owner,
        BUYER,
        'The ticket owner should be the buyer');
    });
});