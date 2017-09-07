pragma solidity ^0.4.0;


contract ScoreStore {
    mapping(string => int) PersonScores;

    function AddPersonScore(string name, int startingScore){
        require(PersonScores[name] == 0);

        PersonScores[name] = startingScore;
    }

    function GetScore(string name) returns (int) {
        return PersonScores[name];
    }
}
