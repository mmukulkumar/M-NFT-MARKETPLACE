const kryptoBird = artifacts.require("KryptoBird");

module.exports = function (deployer) {
  deployer.deploy(kryptoBird);
};
