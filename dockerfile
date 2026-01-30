FROM runpod/comfyui:latest-5090

# 1. Install git AND dos2unix (the cleaner)
RUN apt-get update && apt-get install -y git dos2unix

# 2. Clone the repo
RUN git clone https://github.com/dok9612/dotfiles /workspace/dotfiles

# 3. Clean the script (Remove the invisible \r)
RUN dos2unix /workspace/dotfiles/init.sh

# 4. Make it executable
RUN chmod +x /workspace/dotfiles/init.sh

# 5. Run it
ENTRYPOINT ["/workspace/dotfiles/init.sh"]