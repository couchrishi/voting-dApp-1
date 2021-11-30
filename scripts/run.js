const web3 = require("web3");

const main = async (names) => {
  const [owner, civilian1, civilian2, civilian3] =
    await hre.ethers.getSigners();
  const ballotFactory = await hre.ethers.getContractFactory("Ballot");
  console.log(typeof names);
  const ballotContract = await ballotFactory.deploy(names);

  await ballotContract.deployed();
  console.log("Contract Deployed to:", ballotContract.address);
  console.log("Contract deployed by:", owner.address);

  await ballotContract.vote(1);
  await ballotContract.connect(civilian1).vote(1);
  await ballotContract.connect(civilian2).vote(2);
  await ballotContract.connect(civilian3).vote(1);

  const winner = await ballotContract.getElectionResult();
  console.log("The winner is: ", winner);
};

const runMain = async (names) => {
  try {
    await main(names);
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMain(["candidate-1", "candidate-2", "candiate-3"]);
