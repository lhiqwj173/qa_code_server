FROM linuxserver/code-server

#RUN apt-get update \
#      && apt-get install -y vim python3.8 python3-distutils python3-pip python3-numba \
#      && ln -sf /usr/bin/python3.8 /usr/bin/python \
#      && pip3 install Image \
#      && pip3 install setuptools_rust \
#      && pip3 install QUANTAXIS -U \

RUN apt-get update && \
      apt-get install --no-install-recommends -y \
      python3.8 python3-pip python3.8-dev \
      # && apt-get clean \
      # && apt-get autoclean \
      # && rm -rf /var/lib/apt/lists/*  \
      && pip3 install QUANTAXIS -U

# RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh -O ~/anaconda.sh && \
#     /bin/bash ~/anaconda.sh -b -p ~/anaconda3 && \
#     rm ~/anaconda.sh

# RUN conda init bash && \
# #    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
# #    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
# #    echo 'export PATH="~/anaconda3/bin:$PATH"' >> ~/.bash_profile && \
#     echo 'export PATH="~/anaconda3/bin:$PATH"' > ~/.bashrc && \
#     echo "conda activate base" >> ~/.bashrc && \
# #    . /root/.bashrc && \
# #    ENV PATH ~/anaconda3/bin:$PATH && \
#     # Updating Anaconda packages
#     conda update conda && \
# #    conda update anaconda && \
# #    conda update --all && \
#     pip3 install QUANTAXIS -U

