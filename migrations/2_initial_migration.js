const kryptoBird = artifacts.require("kryptoBird");

module.exports = function (deployer) {
  deployer.deploy(kryptoBird);
};
