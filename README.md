# Voting Smart Contract

This project contains a smart contract for a decentralized voting system built using Solidity. It includes features such as voter registration, vote casting, and vote tracking. The contract ensures that a voter can only vote once using their CNIC number, and only eligible voters can cast votes.

## Project Files

- `voting.sol`: The Solidity smart contract that handles voting logic.
- `index.html`: The HTML front-end for interacting with the voting system.
- `voting.json`: JSON file containing the compiled smart contract ABI and bytecode.
- `truffle-config.js`: Configuration file for the Truffle framework.
- `package-lock.json`: Automatically generated file for managing dependencies.
- `package.json`: Contains project dependencies and metadata.
- `firestore.rules`: Firestore security rules for accessing data.
- `firestore.indexes.json`: Firebase Firestore indexes configuration.
- `firebase.json`: Firebase project configuration.
- `database.rules.json`: Database security rules for Firebase.
- `.firebaserc`: Firebase project configuration.
- `migrations/.gitkeep`: Git keep file for the migrations directory.
- `migrations/2_deploy_contract.js`: Truffle migration script to deploy the contract.

## Installation

To set up this project locally, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/voting-smart-contract.git
    cd voting-smart-contract
    ```

2. **Install Dependencies**:
    Ensure that you have [Node.js](https://nodejs.org/) installed. Then run:
    ```bash
    npm install
    ```

3. **Setup Firebase**:
    Make sure you have Firebase CLI installed and initialized:
    ```bash
    npm install -g firebase-tools
    firebase login
    firebase init
    ```

4. **Compile the Smart Contract**:
    If you haven't already, you can compile the smart contract using Truffle:
    ```bash
    truffle compile
    ```

5. **Deploy the Smart Contract**:
    Deploy the contract to a local or test network:
    ```bash
    truffle migrate
    ```

6. **Run the Project**:
    You can run the front-end using a web server. You can use the `index.html` as the front-end for interacting with the contract.

## Usage

### Smart Contract Functions:

- **registerVoter(address _voter)**: Registers a voter as eligible to vote.
- **vote(bytes32 _candidate, string memory _voterName, string memory _candidateName, string memory _cnic)**: Allows an eligible voter to cast their vote for a candidate. CNIC is used to prevent multiple votes from the same person.
- **getVoteCount(bytes32 _candidate)**: Returns the number of votes received by a candidate.

### Events:

- **Voted**: Triggered when a vote is cast.
- **VoteCast**: Contains details of the vote, including the voter's name and the candidate's name.

## Firebase Setup

This project uses Firebase for real-time database and Firestore rules. Make sure to set up Firebase and configure your project using the Firebase console.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
