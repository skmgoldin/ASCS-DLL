pragma solidity^0.4.11;

import "./ASCSDLL.sol";

contract  testASCSDLL {
    using ASCSDLL for ASCSDLL.Data;
    ASCSDLL.Data dll;

    function setOptions(bytes32[] attrName, uint sortAttrIdx) public {
        dll.setOptions(attrName, sortAttrIdx);
    }

    function getAttrNames() public view returns (bytes32[]) {
        return dll.attrNames;
    }

    function getAttr(uint curr, bytes32 attrName) public view returns (uint) {
        return dll.getAttr(curr, attrName);
    }

    function setAttr(uint curr, bytes32 attrName, uint attrVal) public {
        dll.setAttr(curr, attrName, attrVal);
    }

    function getNext(uint curr) public view returns (uint) {
        return dll.getNext(curr);
    }

    function getPrev(uint curr) public view returns (uint) {
        return dll.getPrev(curr);
    }

    function insert(uint prev, uint id, uint[] attrVals) public {
        dll.insert(prev, id, attrVals);
    }

    function remove(uint curr) public {
        dll.remove(curr);
    }

    function reset(uint curr) public {
        dll.reset(curr);
    }
}
