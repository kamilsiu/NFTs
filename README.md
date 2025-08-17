# NFTs (Non-Fungible Tokens)

## What are NFTs?
NFTs (**Non-Fungible Tokens**) are unique digital assets that follow the **ERC-721 standard** (in contrast to fungible ERC-20 tokens).  
While ERC-20 tokens are interchangeable (1 token = any other token of the same kind), NFTs are **non-fungible**, meaning each one is distinct and cannot be swapped on a one-to-one basis.

---

## Role of URI in NFTs
A **Uniform Resource Identifier (URI)** is a sequence of characters that uniquely identifies a resource.  
URIs are fundamental in computer science and networking — they are used to **name** or **locate** resources such as web pages, images, files, or even abstract concepts.  

### Key aspects of URIs:
- **Uniqueness:** Each URI identifies a specific resource.  
- **Types:**
  - **URL (Uniform Resource Locator):** Locates a resource (e.g., `https://example.com/image.png`).  
  - **URN (Uniform Resource Name):** Names a resource persistently (e.g., `urn:isbn:0451450523`).  

In NFTs, URIs are critical because they **link each NFT to its metadata** (image, description, traits, etc.). This ensures that every token in a collection has a unique digital identity.

---

## What to Expect in This Contract
This repository introduces:
- **IPFS (InterPlanetary File System):** A distributed, peer-to-peer, decentralized storage system where NFT metadata and assets can be stored. This keeps NFTs censorship-resistant and permanent.  
- **SVG (Scalable Vector Graphics):** A vector image format used to render or store NFT artwork directly on-chain, ensuring decentralization without relying only on external storage.

---

## How to Clone and Build the Contract

```bash
git clone https://github.com/kamilsiu/NFTs
cd Non-fungible-Tokens
forge install
forge build
```
### Functions Implemented
*Minting Function*
This function mints NFTs on-chain, assigning a unique token ID and linking it to its URI.

*Core Protocol Function*
This is part of the ERC-721 standard implementation — one of the core building blocks of the project. Detailed explanations will be provided in future docs.

# License
This project is licensed under the MIT License
