
pragma solidity >=0.7.0 <0.9.0;

/// @author @courchrishi
/// @title Voting with Delegation

contract Ballotadv {
    // Declares a complex type (Struct) for representing a single voter

    struct Voter {


        bool voted;     // if true, the person has already voted
        uint vote;      // index of the voted proposal
    }


    // Declares a complex type (Struct) for a single proposal

    struct Proposal {
        bytes32 shortName;      // short name (up to 32 bytes)
        uint voteCount;         // number of accummulated votes
    }

    address public chairperson;


    // Declares a state variable (or) mapping that stores a 'Voter' struct for each address
    mapping(address => Voter) public voters;


    // A dynamically-sized array of 'Proposal' structs
    Proposal[] public proposals;


    /// Creates a new ballot to choose one of 'proposalNames'. Initiated at the time of contract deployment
    constructor(bytes32[] memory proposalNames) {


    }


    // Give voter the right to vote on this ballot. May only be called by 'chairperson'
    function giveRightsToVoters(address voter) external {

    }


    /// Delegate your vote to the voter 'to'
    function delegateVote(address to) external {

    }


    /// Give your vote (including votes delegated to you) to proposal
    function vote(uint proposal ) external {


    }


    /// Computes the winning proposal taking all previous votes into account
    function winningProposal() public view {

    }


    /// Calls the winningProposal() function to get the index of the winner contained in the proposals array 
    // and then returns the name of the winner

    function winnerName() external view returns (bytes32 winnerName_) {
        
    }


}