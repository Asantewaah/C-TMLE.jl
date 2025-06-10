# C-TMLE.jl

Collaborative Targeted Maximum Likelihood Estimation (C-TMLE) in Julia

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Asantewaah/C-TMLE.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Asantewaah/C-TMLE.jl/C-TMLE.jl/dev)
[![Build Status](https://github.com/your-github-username/C-TMLE.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/Asantewaah/C-TMLE.jl/C-TMLE.jl/actions)
[![Coverage](https://codecov.io/gh/your-github-username/C-TMLE.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/Asantewaah/C-TMLE.jl)

--- 

## Overview

**C-TMLE.jl** is a Julia package for Collaborative Targeted Maximum Likelihood Estimation (C-TMLE), a cutting-edge approach for causal inference and efficient estimation in high-dimensional data. The package is designed to be flexible, modular, and user-friendly for applied statisticians, epidemiologists, geneticists, and machine learning researchers.

## Features

- Implements the C-TMLE algorithm for binary treatment and outcome(continuous / binary)
- Supports flexible machine learning-based nuisance parameter estimation (e.g., LASSO, Random Forest, etc.)
- Cross-validated hyperparameter selection
- Modular interface for plugging in custom learners
- Works natively with DataFrames
- Extensible for future C-TMLE variants and multivariate extensions

## Installation

C-TMLE.jl is not yet registered. You can install the development version from GitHub:

```julia
using Pkg
Pkg.add(url="https://github.com/Asantewaah/C-TMLE.jl")
```

## Quickstart Example

```julia
using C-TMLE, DataFrames

# Simulate some example data
n = 200
df = DataFrame(
    W1 = randn(n),
    W2 = randn(n),
    A = rand(Bool, n),
    Y = rand(Bool, n),
)

# Fit C-TMLE (replace with your actual function and API!)
result = ct_mle(
    data = df,
    outcome = :Y,
    treatment = :A,
    confounders = [:W1, :W2],
    learner = "lasso", # or your Learner object
)

println(result)
```

## API

### Main Function

```julia
ctmle(; data, outcome, treatment, confounders, learner, kwargs...)
```

- `data`: DataFrame with all variables
- `outcome`: Symbol, outcome variable
- `treatment`: Symbol, treatment variable
- `confounders`: Vector{Symbol}, confounder variables
- `learner`: String or object, specifies the regression learner for nuisance estimation

### Output

The output is a `C-TMLEResult` struct containing:
- `estimate`: The C-TMLE estimate
- `se`: Estimated standard error
- `ci`: Confidence interval
- other diagnostic info

## Documentation

- [**Stable Docs**](https://Asantewaah.github.io/C-TMLE.jl/stable)
- [**Dev Docs**](https://Asantewaah.io/C-TMLE.jl/dev)

## Contributing

Contributions are welcome! Please open issues or pull requests for bugs, questions, or feature requests.
- See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.
- All code should have tests and docstrings.

## Roadmap

- [ ] Register package in the Julia General Registry
- [ ] Add support for continuous outcomes
- [ ] Add more machine learning learners (e.g., random forest, gradient boosting)
- [ ] Parallel computation support
- [ ] Extended documentation and tutorials

## References

- van der Laan, M. J., & Gruber, S. (2010). Collaborative double robust targeted maximum likelihood estimation. _The International Journal of Biostatistics_, 6(1).
- van der Laan, M. J., & Rose, S. (2011). Targeted Learning: Causal Inference for Observational and Experimental Data. Springer.

## License

This package is licensed under the MIT License.