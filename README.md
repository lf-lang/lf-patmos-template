# reactor-uc target of LF on the Patmos processor
This repository provides necessary Makefile file needed by reactor-uc's code generator for the Patmos processor. To use this repository, clone it as a sibling folder besides reactor-uc, as expalined in [https://github.com/lf-lang/reactor-uc.git](https://github.com/lf-lang/reactor-uc.git)

# Choose a Directory

You can either use an existing directory, create a new one, or use the `~` (home) directory to store the files. Then navigate to it.

# Clone reactor-uc's repository

Clone reactor-uc's repository and set REACTOR_UC_PATH:
```sh
git clone https://github.com/lf-lang/reactor-uc.git --recursive
cd reactor-uc
export REACTOR_UC_PATH=$(pwd)
```

# Clone this Repository 

After installing Patmos, based on instructions in [https://github.com/t-crest/patmos/](https://github.com/t-crest/patmos), clone this template repository as a sibling folder to reactor-uc's main repository by running these commands: 
```shell
cd ..
git clone --depth=1 --branch reactor-uc https://github.com/lf-lang/lf-patmos-template.git lf-patmos-template
cd reactor-uc
```