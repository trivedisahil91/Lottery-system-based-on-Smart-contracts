// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    //entities - manager,players and winner khali decalere kari chhe 
    address public manager;
    address payable[] public players; //players vadhare hoy chhe jena karane aapane daynamic array na veriable decleare kariye chhe 
    address payable public winner;

    constructor() {
        manager = msg.sender;
    }

    //jayare koy player ne participent kar vu hoy tayare aa function call thay chhe 
    function participate() public payable {
        require(msg.value == 1 ether, "Please pay 1 ether only"); // aama require function thi check thay chhe value 1 ether chhe ke nay karan ke player ne bhag leva mate 1 ether pay kar vo pade jo condtion false pade to baju ma raheli error throw thay 
        players.push(payable(msg.sender)); // players na array ma sender atale je player a 1 ether aapiya hoy ane push kare chhe
    }

    function getBalance() public view returns (uint256) {
        require(manager == msg.sender, "You are not the manager"); //aama require funcion thi condion check thay jema peli condion je (manager == msg.sender) false pade to error throw kare
        return address(this).balance; // jo error throw na kare to adress nu balance return kare chhe 
    }

    function random() internal view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.prevrandao,
                        block.timestamp,
                        players.length
                    )
                )
            );
    }

    function pickWinner() public {
        require(manager == msg.sender, "You are not the manager");
        require(players.length >= 3, "Players are less than 3");

        uint256 r = random();
        uint256 index = r % players.length;
        winner = players[index];
        winner.transfer(getBalance());
        players = new address payable[](0); //this will intiliaze the players array back to 0
    }
}
