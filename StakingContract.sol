// Auto-generated Staking Smart Contract Skeleton for GlobalBlockInc
pragma solidity ^0.8.0;

contract StakingContract {
    mapping(address => uint256) public stakes;

    function stake() external payable {
        stakes[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        require(stakes[msg.sender] >= amount, 'Not enough balance');
        stakes[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}
