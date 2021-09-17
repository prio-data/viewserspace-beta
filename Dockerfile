FROM viewsregistry.azurecr.io/viewserspace:3.1.2
COPY git_requirements.txt ./git_requirements.txt
COPY install_git_requirements.sh ./install_git_requirements.sh
RUN bash -c 'cat git_requirements.txt |./install_git_requirements.sh'
