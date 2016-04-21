curl http://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -o Miniconda64.sh
/bin/bash Miniconda64.sh -b -p /opt/miniconda64
rm Miniconda64.sh
/opt/miniconda64/bin/conda config --set show_channel_urls True
/opt/miniconda64/bin/conda update --yes --all
/opt/miniconda64/bin/conda install --yes git conda-build curl anaconda-client
/opt/miniconda64/bin/conda clean --tarballs --packages
curl http://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86.sh -o Miniconda32.sh
# The miniconda installer is buggy and wants to run interactively
# despite -b
echo "yes" | /bin/bash Miniconda32.sh -b -p /opt/miniconda
rm Miniconda32.sh
/opt/miniconda/bin/conda config --set show_channel_urls True
/opt/miniconda/bin/conda update --yes --all
/opt/miniconda/bin/conda install --yes git conda-build curl anaconda-client
/opt/miniconda/bin/conda clean --tarballs --packages
