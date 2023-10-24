# Continuous Integration
## Azure Pipelines

### Update `PATH` in Linux
```
variables:
    BASH_ENV: "~/.profile"

steps:
    - bash: echo "export PATH=/miniconda/bin:$PATH" >> ~/.profile
```