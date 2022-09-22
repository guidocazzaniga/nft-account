import { ethers } from "hardhat";

async function main() {

  const Account = await ethers.getContractFactory("NFTAccount");
  const account = await Account.deploy("Account","ACC");

  await account.deployed();

  console.log(`Contract deployed with address:${account.address}`);

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
