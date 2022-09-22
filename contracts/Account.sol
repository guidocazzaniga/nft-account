pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./Base64.sol";
import "./SVGGenerator.sol";

/**
 * @dev Implementation of https://eips.ethereum.org/EIPS/eip-721[ERC721] Non-Fungible Token Standard, including
 * the Metadata extension, but not including the Enumerable extension, which is available separately as
 * {ERC721Enumerable}.
 */
contract NFTAccount is ERC721,Ownable,SVGGenerator {

    using Counters for Counters.Counter;
     Counters.Counter private _tokenIdCounter;

    mapping(uint256=>string) public usernames;
    mapping(string=>bool) public isTaken;
    mapping(uint256=>uint256) public levels;

    constructor (string memory name_, string memory symbol_) ERC721(name_, symbol_) {   
        _tokenIdCounter.increment(); 
    }

    function setUsername(uint256 _id,string memory _username) public onlyOwner {
        require(!isTaken[_username], "Username already taken");
        if(isTaken[usernames[_id]]){
            isTaken[usernames[_id]] = false;
        }
        usernames[_id] = _username;
        isTaken[_username] = true;
    }

    function setLevel(uint256 _id,uint256 _level) public onlyOwner {
        levels[_id] = _level;
    }

    function mintAccount(string memory _username,address to) public onlyOwner {
        require(!isTaken[_username], "Username already taken");
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        usernames[tokenId] = _username;
        isTaken[_username] = true;
    }

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        string memory name = string(abi.encodePacked("Account #",Strings.toString(tokenId)));
        string memory description = "A test account";
        string memory image = generateBase64Image(tokenId);

        return string(
            abi.encodePacked(
                'data:application/json;base64,',
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name":"', 
                            name,
                            '", "description":"', 
                            description,
                            '", "image": "', 
                            'data:image/svg+xml;base64,', 
                            image,
                            '"}'
                        )
                    )
                )
            )
        );
    }

    function generateBase64Image(uint256 tokenId) public view returns (string memory) {
        //return Base64.encode(bytes(generateImage(tokenId)));
        return Base64.encode(bytes(generateSVG(Strings.toString(tokenId),usernames[tokenId],Strings.toString(levels[tokenId]))));
    }


}