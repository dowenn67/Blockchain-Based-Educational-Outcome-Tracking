# Blockchain-Based Educational Outcome Tracking

This project implements a blockchain solution for tracking educational outcomes through a series of smart contracts that create a transparent, immutable record of student journeys from enrollment through employment.

## Overview

Our system uses four primary smart contracts to create a comprehensive educational tracking ecosystem:

1. **Institution Verification Contract**: Establishes legitimacy of educational entities
2. **Student Cohort Contract**: Manages and analyzes groups of learners
3. **Assessment Tracking Contract**: Records academic performance data
4. **Employment Outcome Contract**: Monitors post-graduation career metrics

## Key Features

- Tamper-proof record of educational achievements
- Privacy-preserving student data management
- Real-time tracking of student performance and outcomes
- Analytics capabilities for educational effectiveness
- Verifiable credentials for employers

## Getting Started

### Prerequisites

- Ethereum development environment (Truffle, Hardhat, etc.)
- Node.js and npm
- MetaMask or similar wallet for testing
- Basic knowledge of blockchain concepts and smart contracts

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/blockchain-edu-tracking.git
   cd blockchain-edu-tracking
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Compile smart contracts:
   ```
   npx hardhat compile
   ```

4. Deploy to local network:
   ```
   npx hardhat node
   npx hardhat run scripts/deploy.js --network localhost
   ```

## Contract Details

### Institution Verification Contract
Validates and manages authorized educational entities with reputation scoring and periodic revalidation requirements.

### Student Cohort Contract
Groups students for analytical purposes while maintaining individual privacy and enabling cohort-level insights.

### Assessment Tracking Contract
Securely records and verifies student achievements, course completions, and assessment scores.

### Employment Outcome Contract
Tracks post-graduation metrics including employment rates, salary data, and career progression.

## Use Cases

- Educational institutions tracking program effectiveness
- Employers verifying candidate credentials
- Policymakers accessing anonymized educational outcome data
- Students maintaining verifiable portfolios of achievements

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
