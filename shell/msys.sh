# on Windows git bash, copy the files instead of creating symlinks

if [[ "$OSTYPE" == "msys" ]]; then
    rm -rf ~/.shell
    cp -r shell/ ~/.shell

    cp bash_logout ~/.bash_logout
    cp bash_profile ~/.bash_profile
    cp bashrc ~/.bashrc
    cp editorconfig ~/.editorconfig
    cp gitattributes ~/.gitattributes
    cp gitconfig ~/.gitconfig
    cp gitignore_global ~/.gitignore_global
    cp vimrc ~/.vimrc
    cp vscode/settings.json ~/AppData/Roaming/Code/User/settings.json

    echo "source ~/.shell/sshagent.sh" >> ~/.bashrc
fi
