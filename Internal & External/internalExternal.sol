function _createZombie(string memory _name, uint _dna) internal {
  uint id = zombies.push(Zombie(_name, _dna)) - 1;
  zombieToOwner[id] = msg.sender;
  ownerZombieCount[msg.sender]++;
  emit NewZombie(id, _name, _dna);
}