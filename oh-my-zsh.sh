#####################################################################
#                       INSTALAÇÃO OH MY ZSH                        #
#####################################################################

#instalar o zsh
sudo apt install zsh zsh-autosuggestions

#instalar o oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#instalar fontes para ZSH
sudo wget -P /usr/local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo wget -P /usr/local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo wget -P /usr/local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
sudo wget -P /usr/local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -fv

#instalar o powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

    #adicionar p10k como tema padrão
    sudo vi ~/.zshrc

        #inserir linha do tema e comentar tema padrão
        ZSH_THEME="powerlevel10k/powerlevel10k"


#configurar o powerlevel(habilitar a fonte meslo para o terminal antes)
p10k configure

#####################################################################
#                             COMANDOS                              #
#####################################################################