pragma solidity ^0.4.2;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store Candidates


    // Fetch Candidate
    mapping(uint => Candidate) public candidates;

    // Store Canidates Count
    uint public candidatesCount;

    function Election() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
        addCandidate("Candidate 3");
    }

    function addCandidate(string _name) private {
        candidatesCount++;

        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
