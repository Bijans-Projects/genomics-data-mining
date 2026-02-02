# Create environment
conda env create --name genomics-data-mining python numpy pandas scipy scikit-learn matplotlib seaborn jupyterlab ipykernel requests pip

# Activate
conda activate genomics-data-mining

# Register kernel for Jupyter
python -m ipykernel install --user --name genomics-data-mining --display-name "Python (genomics-data-mining)"

# Launch Jupyter
# jupyter lab