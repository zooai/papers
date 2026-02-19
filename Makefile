# Makefile for Zoo Papers
# Automatically compiles all LaTeX papers to PDF

# Find all .tex files in current directory
TEX_FILES := $(wildcard *.tex)
PDF_FILES := $(patsubst %.tex,pdfs/%.pdf,$(TEX_FILES))

# Default target: compile all papers
.PHONY: all
all: $(PDF_FILES)
	@echo "✓ All papers compiled successfully"
	@echo ""
	@echo "Generated PDFs:"
	@ls -lh pdfs/

# Create pdfs directory
pdfs:
	@mkdir -p pdfs

# Compile a single .tex file to PDF
pdfs/%.pdf: %.tex | pdfs
	@echo "Compiling $<..."
	@pdflatex -interaction=nonstopmode -output-directory=pdfs $< > /dev/null || true
	@cd pdfs && bibtex $(*F) 2>/dev/null || true
	@pdflatex -interaction=nonstopmode -output-directory=pdfs $< > /dev/null || true
	@pdflatex -interaction=nonstopmode -output-directory=pdfs $< > /dev/null || true
	@if [ -f pdfs/$(*F).pdf ]; then \
		echo "✓ Successfully compiled $(*F).pdf"; \
	else \
		echo "✗ Failed to compile $(*F).pdf"; \
	fi

# Clean auxiliary files
.PHONY: clean
clean:
	@echo "Cleaning auxiliary files..."
	@rm -f pdfs/*.aux pdfs/*.log pdfs/*.bbl pdfs/*.blg pdfs/*.out pdfs/*.toc pdfs/*.lof pdfs/*.lot
	@rm -f *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot
	@echo "✓ Cleaned"

# Clean everything including PDFs
.PHONY: clean-all
clean-all: clean
	@echo "Removing all PDFs..."
	@rm -f pdfs/*.pdf
	@echo "✓ All files cleaned"

# Compile specific papers
.PHONY: agent-nft
agent-nft: pdfs/agent-nft.pdf

.PHONY: embedding-7680
embedding-7680: pdfs/embedding-7680.pdf

.PHONY: experience-ledger-dso
experience-ledger-dso: pdfs/experience-ledger-dso.pdf

.PHONY: experience-ledger
experience-ledger: pdfs/experience-ledger.pdf

.PHONY: federated-dso
federated-dso: pdfs/federated-dso.pdf

.PHONY: gym-training-platform
gym-training-platform: pdfs/gym-training-platform.pdf

.PHONY: hllm-training-free-grpo
hllm-training-free-grpo: pdfs/hllm-training-free-grpo.pdf

.PHONY: poai-consensus
poai-consensus: pdfs/poai-consensus.pdf

.PHONY: zip-002-zen-reranker
zip-002-zen-reranker: pdfs/zip-002-zen-reranker.pdf

.PHONY: zoo-agent-nft
zoo-agent-nft: pdfs/zoo-agent-nft.pdf

.PHONY: zoo-dso
zoo-dso: pdfs/zoo-dso.pdf

.PHONY: zoo-experience-ledger
zoo-experience-ledger: pdfs/zoo-experience-ledger.pdf

.PHONY: zoo-foundation-mission
zoo-foundation-mission: pdfs/zoo-foundation-mission.pdf

.PHONY: zoo-network-architecture
zoo-network-architecture: pdfs/zoo-network-architecture.pdf

.PHONY: zoo-poai-consensus
zoo-poai-consensus: pdfs/zoo-poai-consensus.pdf

.PHONY: zoo-tokenomics
zoo-tokenomics: pdfs/zoo-tokenomics.pdf

# Help target
.PHONY: help
help:
	@echo "Zoo Papers Makefile"
	@echo ""
	@echo "Targets:"
	@echo "  make all              - Compile all papers (default)"
	@echo "  make clean            - Remove auxiliary files"
	@echo "  make clean-all        - Remove all files including PDFs"
	@echo "  make <paper-name>     - Compile specific paper"
	@echo ""
	@echo "Examples:"
	@echo "  make                  - Compile all papers"
	@echo "  make zoo-dso          - Compile only Zoo DSO paper"
	@echo "  make zoo-tokenomics   - Compile only Zoo Tokenomics paper"
	@echo ""
	@echo "Available papers:"
	@echo "  agent-nft, embedding-7680, experience-ledger-dso,"
	@echo "  experience-ledger, federated-dso, gym-training-platform,"
	@echo "  hllm-training-free-grpo, poai-consensus, zip-002-zen-reranker,"
	@echo "  zoo-agent-nft, zoo-dso, zoo-experience-ledger,"
	@echo "  zoo-foundation-mission, zoo-network-architecture,"
	@echo "  zoo-poai-consensus, zoo-tokenomics"
