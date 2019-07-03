pragma solidity >=0.4.21 <0.6.0;

contract DocumentSignature {
    event SignatureStored(string _message);

    Signature[] public signatures;

    struct Signature {
      string ipfsDocumentHash;
      address signerAddress;
    }

    function signDocument(string memory _ipfsHash) public {
      Signature memory sig = Signature({ipfsDocumentHash:_ipfsHash, signerAddress:msg.sender});
      signatures.push(sig);

      emit SignatureStored("Signature added successfully!");
    }
}
