# Requirements

1. [Generating a new ssh key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

2. [Install zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

    [www.zsh.org](http://www.zsh.org/)

   ```shell
   sudo apt-get install zsh
   brew install zsh zsh-completions
   ```

    ```shell
    zsh --version
    ```

    Make it your default shell

    ```shell
    chsh -s $(which zsh)
    ```

    Log out and login back again
    Test that it worked with
    ```shell
    echo $SHELL #expected result /bin/zsh
    ```

3. Install on Mac [iterm2](https://www.iterm2.com/index.html)

4. Install Terminator/Guake on Linux

    ```sudo apt-get install terminator guake```

5. Tmux

All tmux specific config is stored in `~/tmux` directory.

 - install tmux
    `sudo apt-get install tmux`
    `brew install tmux`
 - in your create `~/.tmux.conf` file and add this line there:
    `source ~/bin/tmux/.tmux.conf`
 - run tmux and install plugins:
    `tmux
    Ctrl+q, I (shift i)`


