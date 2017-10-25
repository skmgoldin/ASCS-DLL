# ASCS-DLL

[ ![Codeship Status for skmgoldin/ASCS-DLL](https://app.codeship.com/projects/02e4f330-9c03-0135-d99c-3e0263b62404/status?branch=master)](https://app.codeship.com/projects/252853)

mapping(bytes32 => uint) store;
bytes32[] attributes
uint attrSortIndex


constructor(bytes32[] _attributes, uint _attrSortIndex)


getAttribute(uint curr, bytes32 attrName) returns (uint)


setAttribute(uint curr, bytes32 attrName, uint attrValue)


insert(uint prev, uint curr, uint[] attrValues)


remove(uint curr)
Replaces prev and next pointers with curr, and modifies adjacent nodes accordingly


reset(uint curr)
Resets all attribute values to default (zero)


validate(uint prev, uint curr, uint sortAttrValue)

Foresight Notes:
Look into abstracting out sorting through an inherited (non-sorted) DLL contract

