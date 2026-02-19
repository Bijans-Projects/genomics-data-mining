# Setup

From the root directory run the following commands: 

1. Build the custom Conda packages

```powershell
conda build .\packages\cbioportal_python_client\ --output-folder .\conda-channel\
conda index .\conda-channel\
conda env create --prefix .\env --file environment.yml
conda activate .\env
python -m ipykernel install --user --name genomics-data-mining --display-name "Python (Conda: -p .\env genomics-data-mining)"
```

## Optional

If you don't like that the shell has the full path of the environment, update your ```.condarc``` file with this command:

```powershell
conda config --set env_prompt '({name})'
```

## Reset

```powershell
conda remove --prefix .\env --all
```

## Updates

```powershell
conda env update --file environment.yml --prune --use-local
```
