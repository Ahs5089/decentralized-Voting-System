// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public hasVoted;
    mapping(address => bool) public isEligible;
    mapping(bytes32 => uint256) public votesReceived;
    mapping(string => bool) public cnicVoted; // New mapping to track CNIC votes

    event Voted(address indexed voter, bytes32 candidate);
    event VoteCast(string voterName, address voterAddress, string candidateName, uint256 timestamp);

    modifier onlyEligible() {
        require(isEligible[msg.sender], "You are not eligible to vote.");
        _;
    }

    modifier notVoted() {
        require(!hasVoted[msg.sender], "You have already voted.");
        _;
    }

    function registerVoter(address _voter) external {
        isEligible[_voter] = true;
    }

    function vote(bytes32 _candidate, string memory _voterName, string memory _candidateName, string memory _cnic) external onlyEligible notVoted {
        require(!cnicVoted[_cnic], "You have already voted with this CNIC number."); // Check if CNIC already voted
        votesReceived[_candidate]++;
        hasVoted[msg.sender] = true;
        cnicVoted[_cnic] = true; // Mark CNIC as voted
        emit Voted(msg.sender, _candidate);
        emit VoteCast(_voterName, msg.sender, _candidateName, block.timestamp);
    }

    function getVoteCount(bytes32 _candidate) external view returns (uint256) {
        return votesReceived[_candidate];
    }
}