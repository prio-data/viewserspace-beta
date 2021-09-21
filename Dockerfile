FROM viewsregistry.azurecr.io/prio-data/viewserspace:5.0.0
COPY git_requirements.txt ./git_requirements.txt
COPY install_git_requirements.sh ./install_git_requirements.sh
RUN bash -c 'cat git_requirements.txt |./install_git_requirements.sh'
