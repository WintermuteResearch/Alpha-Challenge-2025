# Shedding light - Tier 1

Throughout this year, liquidity provision on Solana has shifted towards so-called "dark AMMs", which are proprietary programs run by market makers. In contrast to usual AMMs, dark AMMs are actively managed and can be updated as frequently as every slot. They are frontend-less; instead, they adhere to interfaces defined by popular aggregators such as Jupiter, allowing users to access this liquidity implicitly. SolFi is one of the originals and a good example to understand how they work better.

Briefly describe the methodology that was used to achieve the result, and [provide a link](https://docs.dune.com/learning/how-tos/share-your-query) to a private Dune query if necessary.

1. Focusing only on the SOL/USDC market during July 2025 and for only flow via Jupiter, find:
 - The top 3 dark AMMs by volume. 
 - For each of the top 3, the top taker by volume. Note, if you find it difficult to get accurate prices at trade time, you can fix SOL to \$150 and USDC to \$1.
2. Short written answers are enough for this part. 
 - Explain how you would estimate PNL for dark AMMs. 
 - How can sophisticated actors take advantage of dark AMMs? 
 - How can dark AMMs manage the threats from sophisticated actors?
3. Assume actors are rational and would only operate a dark AMM if `pnl >= 0`. Calculate the lower bound for revenue for SolFi since the start of 2025.
