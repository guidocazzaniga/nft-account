# NFT Account

This repository is an experiment of account tokenization using NFTs. Token metadata are stored directly on-chain and can evolve while being reflected on the cover image of the NFT.

## Getting Started

Navigate to project directory and install the dependencies
```shell
cd <path-to-repo>
npm i
```
then add a network to `hardhat.config.ts` and deploy the contracts:
```shell
npx hardhat compile
npx hardhat run scripts/deploy.ts --network <your-network>
```
