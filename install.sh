git clone https://github.com/SilvaMtz/FOMA.git ~/.foma

foma=$(echo $PATH | grep foma)

if [ -z $foma ]; then
    echo 'Adding foma to your path...'
    echo 'export PATH="$HOME/.foma:$PATH"' >> ~/.bash_profile
    echo 'export PATH="$HOME/.foma:$PATH"' >> ~/.bashrc
    echo 'export PATH="$HOME/.foma:$PATH"' >> ~/.zshrc
fi

echo 'FINISHED!'
