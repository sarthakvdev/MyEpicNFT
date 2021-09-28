require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    rinkeby: {
      url: "https://eth-rinkeby.alchemyapi.io/v2/qZZz629EYsvTega0wRy6b4Ll2K_OJqFd",
      accounts: ['1fde47b15c38f17a18d67747e4b730d33ea4d9f02624778a34063279e448308c'],
    },
  },
};

// Contract address on rinkeby: 0xB72a8Bba9512f035427B0D168BbC45F828C85Bf0
