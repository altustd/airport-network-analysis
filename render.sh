#!/usr/bin/env bash
set -e

PIXI_PYTHON="/Users/troyaltus/data-projects/airport-network-analysis/.pixi/envs/default/bin/python"

export QUARTO_PYTHON="$PIXI_PYTHON"
export PATH="/Users/troyaltus/data-projects/airport-network-analysis/.pixi/envs/default/bin:$PATH"
unset CONDA_PREFIX
unset CONDA_DEFAULT_ENV

echo "Using Python: $QUARTO_PYTHON"
echo "==> Rendering all formats..."
quarto render airport-network-analysis.qmd
echo "==> Done. Output in docs/"
