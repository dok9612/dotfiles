FROM runpod/comfyui:latest-5090

RUN apt-get update && apt-get install git -y

RUN git clone https://github.com/dok9612/dotfiles /workspace/dotfiles

RUN chmod +x /workspace/dotfiles/init.sh

ENTRYPOINT ["/workspace/dotfiles/init.sh"]