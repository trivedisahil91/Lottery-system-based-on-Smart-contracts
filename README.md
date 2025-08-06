# Blockchain Smart Contract Project

This project is a collection of Solidity smart contracts developed using the [Remix IDE](https://remix.ethereum.org) as part of a college assignment. It demonstrates the development, deployment, and basic testing of Ethereum-based smart contracts.

---

## 🧰 Tech Stack

- **Solidity**
- **Remix IDE**
- **Ethereum (EVM)**
- **MetaMask** (for testing, optional)
- **Remix VM / JavaScript VM**

---

## 📁 Project Structure

contracts/
│
├── 1_Storage.sol        --> Basic storage contract
├── 2_Owner.sol          --> Contract for ownership logic
├── 3_Ballot.sol         --> Voting system (Ballot)
├── Lottery.sol          --> Lottery-based contract
│
scripts/
├── deploy_with_ethers.ts --> Deployment script using ethers.js
├── deploy_with_web3.ts   --> Deployment script using web3.js
│
tests/
├── Ballot_test.sol        --> Solidity test for Ballot contract
├── test_lottery.js        --> JavaScript test (optional)

README.txt                --> Project description and instructions
.prettierrc.json          --> Prettier config

---
## 📸 Project Screenshots
<img width="337" height="640" alt="Screenshot 2025-03-03 122925" src="https://github.com/user-attachments/assets/e4cc5102-c50b-4fd9-bb9a-e5426f1ef6b3" />

<img width="1845" height="865" alt="Screenshot 2025-03-03 122745" src="https://github.com/user-attachments/assets/22063e41-800f-4c18-8cce-db998ad70b20" />

---

## 📜 Contracts Overview

### 1. `1_Storage.sol`
A simple contract that stores and retrieves a number on the blockchain.

### 2. `2_Owner.sol`
Implements ownership of the contract, allowing only the owner to perform certain actions.

### 3. `3_Ballot.sol`
Implements a basic voting system where voters can vote for proposals.

### 4. `Lottery.sol`
A lottery contract where participants can enter and a random winner is chosen.

---

## 🚀 How to Use

1. **Open Remix IDE:**
   [https://remix.ethereum.org](https://remix.ethereum.org)

2. **Load the Project:**
   - Use the "Upload files" feature or use `remixd` to connect your local folder.

3. **Compile Contracts:**
   - Navigate to the Solidity Compiler tab.
   - Select the desired contract and compile.

4. **Deploy & Interact:**
   - Go to the Deploy & Run Transactions tab.
   - Choose the environment: Remix VM (or Injected Web3 if using MetaMask).
   - Deploy any contract and interact using its UI.

## 🧪 Testing

- Basic testing is provided using a sample Solidity test file for the Ballot contract.
- Scripts can be extended with JavaScript tests using frameworks like Hardhat or Truffle.
---


## 🧑‍🎓 Author

**Trivedi Sahil**  

GitHub: [trivedisahil91](https://github.com/trivedisahil91)  
LinkedIn: [https://www.linkedin.com/in/trivedi-sahil-5212002b0](https://www.linkedin.com/in/trivedi-sahil-5212002b0?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)  
Blog: [UPI Tax Article](https://trivedisahil.blogspot.com/2025/08/upi-transactions-to-attract-tax-from.html?m=1)


---

## 📄 License

This project is for educational purposes only. Feel free to use and modify it.

