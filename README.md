<div align="center">
  <img src=".github/zoo-logo.svg" alt="Zoo Labs Foundation" width="120" />
  <h1>Zoo Labs Research Papers</h1>
</div>

Academic and technical papers for Zoo Labs Foundation infrastructure and protocols.

**Organization**: https://github.com/zooai
**Foundation**: Zoo Labs Foundation (501c3 non-profit)
**Contact**: foundation@zoo.ai

## Papers

Zoo Labs Foundation is dedicated to open AI research and development. Our papers cover:

### 1. Zoo Labs Genesis Paper (2022-2023)

**Documentation**: [https://docs.zoo.dev](https://docs.zoo.dev)
**Status**: Foundational Document

**Title**: "Zoo Labs: Asset-Backed NFTs, Liquidity Protocols, and Conservation Gaming"

**Abstract**: The foundational whitepaper for Zoo Labs ecosystem, introducing revolutionary concepts in NFT utility, Game-Fi, and conservation technology.

**Key Innovations**:
- **Asset-Backed Yielding NFT Standard**: First NFT standard with intrinsic collateral value
- **NFT Liquidity Protocol**: Novel mechanism for NFT trading and value extraction
- **Collateral-Backed NFTs**: NFTs backed by real assets, tradeable or "burnable" for value
- **Conservation + Education Mission**: Gaming platform tied to real-world wildlife conservation
- **Game-Fi Mechanics**: Gen 0 NFT drop, feeding/growing/breeding system, animal rewards
- **ZOO DAO**: Decentralized governance for the ecosystem
- **Bridging Blockchains**: Multi-chain NFT infrastructure

**Sections**:
- Introduction: Abstract, Mission, Zoo Animal Utility, Sustainability, Market Opportunity
- Differentiators: NFTs that make you smile, ZOO DAO, NFT Liquidity Protocol, Bridging Blockchains
- Game Play: Gen 0 NFT Drop, Feeding/Growing/Breeding, Zoo Animal Rewards, AR App, Collateral-Backed NFTs, Native Token, NFT Marketplace, Asset Transfer, Metaverse Companion
- Extras: Partnerships, Open Source

This genesis paper laid the foundation for Zoo's approach to utility NFTs and sustainable Game-Fi, establishing principles that continue to guide the ecosystem's evolution into decentralized AI and collective intelligence.

### 2. Zoo DSO (Decentralized Semantic Optimization)

**File**: `zoo-dso.pdf`
**LaTeX Source**: `zoo-dso.tex`
**ZIP**: [ZIP-001-dso.md](https://github.com/zooai/zips/blob/main/ZIP-001-dso.md)
**Status**: Published October 2025

**Title**: "Decentralized Semantic Optimization: Byzantine-Robust Prior Aggregation for Collective AI Intelligence"

**Abstract**: A decentralized protocol for aggregating AI model priors with Byzantine fault tolerance, enabling collective intelligence at network scale.

**Key Contributions**:
- Byzantine-robust prior aggregation
- Distributed active inference framework
- Multi-agent coordination via shared priors
- Integration with Hanzo's ASO and HMM
- Proof-of-AI (PoAI) consensus mechanisms

**Builds On**: [Hanzo ASO (HIP-002)](https://github.com/hanzoai/papers/blob/main/hips/HIP-002-aso.md), [Hanzo HMM (HIP-004)](https://github.com/hanzoai/papers/blob/main/hips/HIP-004-hmm.md)

### 3. Zoo PoAI (Proof of AI)

**ZIP**: [ZIP-002-poai.md](https://github.com/zooai/zips/blob/main/ZIP-002-poai.md)
**Status**: Active Specification

**Title**: "Proof of AI: Bayesian Active Inference-Inspired Consensus for Verifiable AI Compute"

**Abstract**: Zoo's consensus mechanism for quality verification of AI compute. A training-free, distributed GRPO, LLM-agnostic experiential layer for building collective intelligence.

**Key Features**:
- TEE attestations and Merkle proofs
- Bayesian active inference quality scoring
- Integration with Hanzo HMM for economic settlement
- Slashing for fraudulent attestations

### 4. Zoo Tokenomics

**File**: [zip-gym-tokenomics.md](https://github.com/zooai/zips/blob/main/zip-gym-tokenomics.md)
**Status**: Active Specification

**Title**: "GYM Token Economics and Integration"

**Overview**: Economic model for Zoo's decentralized AI training network.

**Key Features**:
- GYM token specification (1B supply on BSC)
- Compute mining rewards and quality metrics
- Staking tiers (Bronze to Diamond)
- Slashing conditions and governance

Research focus areas:
- Decentralized semantic learning protocols
- Byzantine-robust prior aggregation
- Active inference at network scale
- Proof-of-AI (PoAI) consensus mechanisms

### Zen AI Model Family (Base Frontier Models)

**Repository**: https://github.com/zenlm/papers  
**Co-developed by**: Hanzo AI Inc & Zoo Labs Foundation

Zen AI is a comprehensive family of ultra-efficient language models serving as the **base underlying frontier models** co-developed by Hanzo AI and Zoo Labs Foundation. All models are based on Qwen3 architectures with innovative optimizations.

- **Main Whitepaper**: [ZEN_WHITEPAPER_2025.md](https://github.com/zenlm/papers/blob/main/ZEN_WHITEPAPER_2025.md) (v1.0.1)
  - Complete Zen ecosystem: 600M to 480B parameters
  - 95% reduction in energy consumption
  - Recursive AI Self-Improvement System (RAIS) achieving 94% effectiveness
  - Edge deployment enabling privacy-preserving AI

- **Model Documentation**: Visit https://github.com/zenlm/papers for:
  - **Core Models**: Nano (600M edge), Eco (balanced), Coder (code gen), Omni (multimodal), Next (MoE), Guard (safety)
  - **Specialized Models**: Artist, Designer, Scribe, Director, and more
  - **Architecture Overview**: Complete technical specifications and training methodologies
  - **Deployment Guides**: Edge computing, cloud optimization, hybrid strategies

### Partnership Model

Zoo Labs Foundation (501c3) partners with Hanzo AI Inc (Techstars '17) to:
- Advance open AI research
- Ensure model accessibility
- Promote privacy-preserving AI
- Enable edge deployment for everyone

This unique partnership ensures that cutting-edge AI remains accessible while advancing the state of the art.

## Related Projects

### Hanzo AI Papers
For Hanzo-specific research (ASO, DSO, HMM, Jin architecture):
- **Repository**: https://github.com/hanzoai/papers
- **Focus**: AI compute infrastructure, market mechanisms, multimodal systems

### ZenLM Papers  
For Zen model family documentation:
- **Repository**: https://github.com/zenlm/papers
- **Focus**: Ultra-efficient LLMs, edge deployment, model architectures

## Zoo Improvement Proposals (ZIPs)

Detailed technical specifications and protocols are documented as ZIPs:

**Repository**: https://github.com/zooai/zips

- [ZIP-000](https://github.com/zooai/zips/blob/main/ZIP-000-zips.md) - ZIP Process and Guidelines
- [ZIP-001](https://github.com/zooai/zips/blob/main/ZIP-001-dso.md) - Decentralized Semantic Optimization
- [ZIP-002](https://github.com/zooai/zips/blob/main/ZIP-002-poai.md) - Proof of AI Consensus
- [zip-gym-tokenomics.md](https://github.com/zooai/zips/blob/main/zip-gym-tokenomics.md) - GYM Token Economics

## Building Papers

Papers use LaTeX for academic formatting.

**Build from source**:
```bash
cd zoo-papers
pdflatex zoo-dso.tex
bibtex zoo-dso
pdflatex zoo-dso.tex
pdflatex zoo-dso.tex
```

**Requirements**:
- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- BibTeX for references

Related build instructions:
- Hanzo AI Papers: https://github.com/hanzoai/papers#building-papers
- ZenLM Papers: https://github.com/zenlm/papers#building-papers

## License

Papers are published under Creative Commons Attribution 4.0 International (CC BY 4.0).

Code examples and implementations follow their respective project licenses.

## Contact

- **Email**: foundation@zoo.ai
- **Website**: https://zoo.ai
- **GitHub**: https://github.com/zooai
- **Non-Profit Status**: 501(c)(3)

---

**Zoo Labs Foundation**  
Supporting open AI research and accessibility  
https://zoo.ai
