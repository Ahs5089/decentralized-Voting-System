Voting System Using Blockchain
This project implements a blockchain-based voting system using Solidity smart contracts and Firebase for vote storage. The system allows eligible voters to cast their votes securely and ensures one vote per CNIC.

Features
Blockchain Voting: The voting mechanism is implemented using a Solidity smart contract deployed on the Ethereum blockchain. It allows voters to cast votes for a selected political party.
Eligibility & CNIC Tracking: The system ensures only eligible voters can vote and prevents multiple votes from the same CNIC.
Real-Time Database Integration: Firebase is used to store vote records and provide an overview of vote counts and history.
User Interface: A simple and intuitive web interface for users to cast their votes, view vote history, and check vote counts for each candidate.
Project Structure
bash
Copy code
/voting_system
├── voting.sol           # Solidity contract for managing the voting logic
├── index.html           # Frontend for interacting with the smart contract
├── script.js            # JavaScript for handling blockchain interactions and Firebase storage
└── README.md            # Project documentation (this file)
Requirements
Ethereum Network: A local Ethereum network or testnet like Ganache.
Web3.js: To interact with the Ethereum blockchain.
Firebase: For storing vote data in real-time.
Smart Contract (voting.sol)
The smart contract defines the logic for registering voters, casting votes, and tracking vote counts. It also prevents voters from voting more than once using their CNIC and Ethereum address.

Key Functions:
registerVoter(address _voter) - Registers an eligible voter.
vote(bytes32 _candidate, string memory _voterName, string memory _candidateName, string memory _cnic) - Casts a vote for a candidate, ensuring that the voter has not already voted and their CNIC has not been used.
getVoteCount(bytes32 _candidate) - Returns the total number of votes received by a specific candidate.
Frontend (index.html)
The frontend is a simple HTML page with input fields for Ethereum address and CNIC, and buttons for selecting a political party. It interacts with the smart contract using Web3.js to cast votes and displays the results using Firebase.

Key Sections:
Ethereum Address: Input field for the user’s Ethereum address.
CNIC: Input field for the voter’s CNIC number (ensures one vote per CNIC).
Party Buttons: Options for the voter to choose which political party they want to vote for (e.g., PTI, PPP, PMLN, MQM, PMLQ).
Vote History: Displays the voting history stored in Firebase.
How to Set Up
1. Clone the Repository
bash
Copy code
git clone https://github.com/your-username/voting-system.git
cd voting-system
2. Install Dependencies
You will need to have a local Ethereum network running (e.g., Ganache) and deploy the smart contract using Remix or Truffle.

Install Web3.js:
bash
Copy code
npm install web3
3. Deploy the Smart Contract
Use Remix or a local Ethereum environment (e.g., Ganache or Infura) to deploy the smart contract.
Get the contract's ABI and deployed address, then update the contractAddress and abi in script.js.
4. Setup Firebase
Create a Firebase project and enable Firebase Realtime Database.
Replace the firebaseConfig in script.js with your Firebase project credentials.
5. Run the Web Interface
Open the index.html file in your browser and interact with the voting system.
Usage
Register Voter: An eligible voter can be registered using the registerVoter function.
Vote: Voters can enter their Ethereum address, CNIC, and select a party to vote for.
Vote History: The system tracks and displays the vote history and vote counts for each party.
License
This project is licensed under the MIT License - see the LICENSE file for details.
