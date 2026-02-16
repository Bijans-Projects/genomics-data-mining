# Setup

## Create environment

From the root directory run the following command:

```powershell
conda env create --prefix .\env -file environment.yml --use-local
```

## Activate

```powershell
conda activate .\env
```

## Register kernel for Jupyter

```powershell
python -m ipykernel install --user --name genomics-data-mining --display-name "Python (Conda: -p .\env genomics-data-mining)"
```

## If you're updating the environment.yml

```powershell
conda env update --file environment.yml --prune --use-local
```

## Optional

If you don't like that the shell has the full path of the environment, update your ```.condarc``` file with this command:

```powershell
conda config --set env_prompt '({name})'
```

## Launch Jupyter

## jupyter lab
