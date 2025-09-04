# Obstacle race - Tier 3

You're an operator of one of the most successful generalized MEV bots and often prevent exploits before they even happen. But when the CRV/ETH hack happened, your setup wasn't capable of performing a whitehat. You decided to take [the contract deployment transaction](https://etherscan.io/tx/0x09f97e8053ba1b557dd9811d6572328a2cddc7d8576fc048af0a64c644d67edd), modify the bytecode (to learn how to handle similar situations in the future), and test it in a forked environment.

Could you execute the frontrun with this modified contract and then withdraw all saved funds to your wallet?

Run the test case with `forge test --match-test test_Solution -vv`