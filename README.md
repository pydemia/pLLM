# pLLM

## VM Spec

* Hardware: Standard NC4as T4 v3 (4 vcpus, 28 GiB memory), T4 (16G VRAM)
* OS: Ubuntu 20.04.6 LTS focal

```console
setenv
├── 0-themes
│   ├── install_themes.sh
│   └── setup_base.sh
├── 1-nvidia-cuda
│   ├── cuda-keyring_1.0-1_all.deb
│   └── install.sh
├── 2-docker
│   ├── containerd.io.deb
│   ├── docker-buildx-plugin.deb
│   ├── docker-ce-cli.deb
│   ├── docker-ce.deb
│   ├── docker-compose-plugin.deb
│   ├── install.sh
│   └── set-nonroot.sh
├── 3-docker-nvidia-runtime
│   └── install.sh
├── 4-conda
│   ├── Miniconda3-latest-Linux-x86_64.sh
│   └── install.sh
├── 5
└── 5-python
    ├── create-condaenv.sh
    ├── create-condaenv.user.sh
    ├── install-pytorch-2.0.1.sh
    ├── install.sh
    ├── requirements-preinstall.txt
    ├── requirements-tabby.txt
    └── requirements.txt
```
