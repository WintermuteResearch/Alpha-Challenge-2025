# Wintermute Alpha Challenge 2025
The Alpha Challenge is our experimental way to reach two goals:
- to provide a way for the crypto community to test their on-chain analysis skills
- to find the best talents for roles requiring a researcher mindset at Wintermute and portfolio/friendly companies

The Wintermute Alpha Challenge 2025 lasted two weeks (August 20 - September 3, 2025), and the final leaderboard is available on [our website](https://alpha.wintermute.com/leaderboard).

This repository contains all case studies, together with the code to run and test solutions for the coding tasks for Wintermute's Alpha Challenge 2025. This code is meant as a resource to research and solve interesting case studies.

Each coding task has a dedicated test file, containing three functions:
- `setUp()`, which contains the code to set up an Ethereum fork at a specified block for the challenge, alongside any required balances for your address.
- `test_Solution()`, where your solution for the task will go. This should include contract deployments and calls required for reaching the intended end state.
- `checkSolve()`, which checks that the expected end state has been reached. This will usually check for a balance in a token for your address, but may also include checks for intended contract state.

For each task, the test command should result in a PASS for the `test_Solution()` case, and a message congratulating on the solve will be logged to the console. To use your own address and RPC URL for the tasks, change the values in `.env` in the challenge directory.

## Write-ups
- [frodan](https://github.com/Frodan/wintermute-alpha-2025-writeups)

## Rules

### Restrictions
- No sharing of solutions, hints, publicly or privately with other participants.
- No creation of public repositories, gists, Dune queries, or other publicly accessible resources containing solutions.
- No attacking the Challenge infrastructure.
- No multi-accounting.
- Treat others with respect, without foul language, hate speech, discrimination, racism, or any other type of anti-social behavior.

### Organizational information
- The Challenge duration is expected to last 2 weeks (Start: Aug 20, 2025, 3:00 PM UTC, End: Sep 3, 2025, 3:00 PM UTC).
- Before starting the Challenge, participants should register the wallet they will use.
- The Challenge consists of two formats based on real events: 8 case studies and 1 one-week onchain PvP competition.
- Case studies will be available for the 2-week duration of the Challenge, but it may be beneficial to finish them before the start of the PvP competition.
- The PvP competition should go live around 3:00 PM UTC, August 27th, 2025, with more information available closer to the date.
- For improving the PvP competition experience, participants should have 100+ score before the start to join it, or 400+ score after the start.
- Participants can access the Challenge Telegram chat after providing Telegram handles in the profile and sending a join request.
- The Telegram chat will be used for various organizational updates, questions, etc.

### Case studies
- First three case studies are open-ended questions, where we expect no more than 4.5k symbols (with the usage of Markdown if necessary) to keep the reviewing process quick.
- Please replicate the same structure for solutions, as we used for questions, to avoid being penalized for making the review more difficult.
- Only one submission per open-ended case study is allowed.
- Submit your solutions for open-ended cases in English, otherwise they will not be reviewed.
- Other case studies include interactions from the registered wallet (funded with ETH and tokens for all tasks) with an RPC, where we expect a certain state transition.
- If the expected state was achieved, participants will receive the full score for the task.
- If a participant believes that they broke the state of the provided environment, they can reset it to its initial state.
- There is an option to enable Tenderly explorer for specific RPC (available through its URL), by doing this, their maximum score will be limited to 75% of marks available.
- In the case of giving up on the automated RPC verification, participants can provide their best solution as a link to a private gist for manual review, by doing this, their maximum score will be limited to half of the maximum marks available.
- Only one gist submission per coding case study is permitted.
- Only the first gist revision will be checked, and the solution should be provided in the format of a Solidity contract (ideally a Foundry script/test) with all important ABI interfaces and comments if needed.

### PvP competition
- We distribute 2.5 ETH (purely for gas, but for fairness, don't add more ETH to the address) and 200,000 acUSDT to your registered wallet on Sepolia if you're qualified according to the rules. Please ping us in the Telegram chat if you achieved 400+ score after the start of PvP.
- Accounts with no activity at the end of the competition will be disqualified - it's not a "hold and forget" game.
- Wash traders only interact with acUSD-acALPHA Uni v3 pairs.
- As in real-life, theoretically [anything can happen](https://x.com/binance/status/1934293977668194694), so no matter what your strategy is, there may be factors that increase volatility.
- We ask all participants to manage funds from their registered wallets, instead of utilizing smart contracts, to avoid miscalculations. For example, it's important to provide liquidity through [the NonfungiblePositionManager](https://sepolia.etherscan.io/address/0x1238536071E1c677A632429e3655c799b22cDA52), otherwise, your net liquidity will be updated only after the position is closed.
- In the case of the smart contract usage for strategies, we will not do any net liquidity calculation changes to account for it at the end of PvP. It's on players to ensure that their final net liquidity is correct.
- Transferring game tokens between registered wallets is prohibited. Any attempts to do this will cause the sender's disqualification, and the receiver will also be disqualified if they use funds in the game instead of burning them.
- The method of token transfer between players doesn't matter, whether it's a direct transfer, a fake swap in a specifically created pool, or something else. We'll investigate all suspicious cases, and we're keen to look at tips.
- Any collusion is also prohibited, because tit moves us further away from the real-world scenario, where it's usually pure PvP most of the time and hard to figure out who controls a certain address and colludes with the owner.
- Similar to real-life, it could be worth searching onchain (within the game universe) for hidden long-tail opportunities that will give you reasonable amount of acUSDT. At least one will be deployed each day at random time and available on a FCFS basis.
- On top of the net liquidity increase, the taker also gets the PvP progression badge for recognition.
- The following day, the hint will be available as the name of its FCFS badge if nobody claims it.
- It's not prohibited to deploy traps or honeypots since other people will likely be searching for FCFS opportunities. However these traps must only include tokens from the game universe, and must not open access to the competition to anyone else.
- Participants can freely use any part of the Sepolia infrastructure in their solutions, if it's not against other rules, feel free to show your skills and creativity.

### Scoring
- The score for each case study varies based on its tier, and there are no bonus points for solving earlier (that's a good way to show up on our radar, though).
- Tier 1, Tier 2, and Tier 3 questions are worth 75, 100, and 150 points, respectively.
- All open-ended questions are Tier 1, except the 'Rabbithole' which is Tier 2.
- The first two coding case studies are Tier 2, and the last ones are Tier 3.
- There is a leaderboard with daily updates for manual reviews (9pm UTC) based on the performance of each participant.
- The PvP score will be linked to the net liquidity and will be added to the leaderboard at the end of the competition.
- The maximum achievable score for the PvP part is equal to the total score available from case studies.
- There is discretion on our side, so in case of similar net liq between the top players, the top-1 will not receive the max score and so on.

### Rewards
- The top 3 of the leaderboard will receive: one month of Dune Plus, one month of Tenderly PRO, 3 months of Lighthouse PRO, and one month of the DefiLlama API.
- We will contact the winners using the provided email to arrange distribution of rewards or set up a communication channel with partners.
- During the Challenge, we'll monitor the performance of each participant.
- In the case of exceptional work, and if a participant has checked the "Consider joining Wintermute" checkbox in the profile, we may initiate the hiring process.
