# Too old for optimizing - Tier 2

It's November 10, 2022, and you see [Twitter threads](https://x.com/DeFiyst/status/1590679489905729537) about how USDT is becoming the dominant asset in the 3CRV Curve pool. You're confident that USDT will be fine, so you already ported all stablecoins to it ($7M). The question is, could you get even more USDT exposure?

You think that lending is a good option, but there is almost no USDC supply for borrowing on Aave v2, so you need to be creative. Although Aave v1 was deprecated (we rolled this back for the sake of the challenge), you see that there are still funds there. You also remember that some yield optimizers have integrations with Aave v1, so maybe there is a way to utilise the optimizers to increase v1 USDC reserve by 700k?

You should finish the challenge with 7M USDT lent to Aave v1 and 3.5M+ USDT balance on the registered wallet. You should borrow ~3.5M USDC from Aave v1 after using optimizers to solve this case study.

Run the test case with `forge test --match-test test_Solution -vv`