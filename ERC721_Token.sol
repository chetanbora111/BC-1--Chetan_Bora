pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract LPP is ERC721{
	mapping(address => uint) tokens;
	function approval(address _owner, address _approved,uint _tokenId)public{
		require(tokens[_owner]==_tokenId);
		tokens[_approved]=_tokenId;
	}
	function transfer(address _to, uint _amount) public payable{
		require(_amount <= tokens[msg.sender]);
		tokens[msg.sender]-=_amount;
		tokens[_to]+=_amount;
	}
	function balanceOf(address _owner) public view returns (uint){
		return tokens[_owner];
	}
	function ownerOf(uint _tokenId) public view returns(address){
		return tokens[_id];
	}
	function TransferFrom(address _from, address _to, uint _tokenId)public payable{
		require(tokens[_from]==_tokenId);
		tokens[_from]=0;
		tokens[_to]=_tokenId;
	}
	function approve(address _approved, uint _tokenId)public payable{
		require(tokens[msg.sender]==_tokenId);
		tokens[_approved]=_tokenId;
	}
	function mint(address _to, uint _tokenId) public {
		tokens[_to] = 'mytoken '+str(uint(blockhash(block.number - 1)));
	}
}