pragma solidity ^0.4.13;

contract Store {
    
  address owner;
  
  // Events
  event itemAddedEvent(uint _id, string _name, uint256 _price, address _buyer);
  event itemRemovedEvent(uint _id, string _name, uint256 _price, address _buyer);
  event itemBoughtEvent(uint _id, string _name, uint256 _price, address _buyer);
  
  
  // Endpoints
  function addItem(string _name, uint256 _price) {
    // 1.) Should only be accessible by the owner/creator of the contract.
    require(msg.sender == owner);
    // 2.) Should save data about the item, and have the data be accessible by the getItem endpoint. Data uint id, string name, uint256 price, address buyer.
    
    // 3.) The items should be organized by id. With the first item having an id of 1 and incrementing by one every item after that. No two items should have the same id.
    // 4.) Should throw error if owner tries to add an item with price of 0 wei or lower.
    // 5.) Should trigger itemAddedEvent.
    
    
  }
  
  function removeItem(uint _id) {
    // 1.) Should only be accesible by the owner/creator of the contract.
    // 2.) Should prevent item from being bought through the buyItem function, and change the price of the item to 0. 
    // 3.) Previously removed items' data should still be accesible though getItem function. This endpoint should not delete items, only prevent them from being bought.
    // 4.) Should throw error if owner tries removing an item that has already been sold.
    // 5.) Should trigger itemRemovedEvent.

  }
  
  function buyItem(uint _id) payable public {
      // 1.) Should be able to purchase an item by id from store and send correct ether value to owner. Should save the buyers address.
      // 2.) Should throw error if user/customer tries to buy an item with an id that has not been assigned to an item. 
      // 3.) Should throw error if owner tries to buy an item from his own store.
      // 4.) Should throw error if user/customer tries to buy an item that has previously been sold.
      // 5.) Should throw error if msg.value is not equal to the price of the item being purchased. Should be exact value.
      // 6.) Should trigger itemBoughtEvent.
      

  }
  
  function getItem(uint _id) constant returns(uint id, string name, uint256 price, address buyer){
      // 1.) Should return data of item by id as specified by default/initial code.
      // 2.) Here is the data it should return: uint id, string name, uint256 price, address buyer.

  }
}