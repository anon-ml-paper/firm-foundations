# Firm Foundations for Membership Inference Attacks Against Large Language Models

ANONYMOUS

## Overview

`firm_foundations` is a red-teaming library against Large Language Models (LLMs) that assesses their vulnerability to train data leakage.
It provides a unified [PyTorch](https://pytorch.org/) API for evaluating **membership inference attacks (MIAs)**.

`firm_foundations` abides by the following core principles:

- **Open Access** — Ensuring that these tools are open-source for all.
- **Reproducible** — Committing to providing all necessary code details to ensure replicability.
- **Self-Contained** — Designing attacks that are self-contained, making it transparent to understand the workings of the method without having to peer through the entire codebase or unnecessary levels of abstraction, and making it easy to contribute new code.
- **Model-Agnostic** — Supporting any [HuggingFace](https://huggingface.co/) model and dataset, making it easy to apply to any situation.
- **Usability** — Prioritizing easy-to-use starter scripts and comprehensive documentation so anyone can effectively use this regardless of prior background.

We hope that our package serves to guide LLM providers to safety-check their models before release, and to empower the public to hold them accountable to their use of data.

## Installation

From source:

```bash
git clone https://github.com/ANONYMOUS/firm-foundations.git
pip install -e .
```

From pip:
```
pip install firm-foundations
```

## Quickstart

See `scripts/mia_baselines.sh`.
