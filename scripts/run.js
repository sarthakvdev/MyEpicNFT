const main = async () => {
    // Compile the contract
    const nftContractFactory = await hre.ethers.getContractFactory("MyEpicNFT");
    // deploy it to local blockchain
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
    console.log("NFT contract deployed: ", nftContract.address);

    // call the function
    let txn = await nftContract.makeAnEpicNFT();
    // wait for it to be minted
    await txn.wait();

    // Mint another for fun
    txn = await nftContract.makeAnEpicNFT();
    await txn.wait();
};

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch(error) {
        console.log("Error: ", error);
        process.exit(1);
    }
};

runMain();