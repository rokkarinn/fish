# Theme spacefish
set SPACEFISH_KUBECONTEXT_SYMBOL \u2388' '

set HOMBREW /usr/local/bin

# Ruby path
set RUBY_BIN "/usr/local/opt/ruby/bin"

set DINO_BIN "/Users/ivar/.deno/bin"

set FASTLANE_BIN "$HOME/.fastlane/bin"

set LUAVER_DIR "/Users/ivar/.luaver"

set GNUBIN "/usr/local/opt/inetutils/libexec/gnubin"

set -gx LC_ALL en_US.UTF-8  
set -gx LANG en_US.UTF-8

# If you need to have icu4c first in your PATH run:
set ICU4S_BIN "/usr/local/opt/icu4c/bin"
set ICU4C_BINS "/usr/local/opt/icu4c/sbin"

# Kubectl pakcage manager
set KREW "/Users/ivar/.krew/bin"

set PYTHON3  "/Users/ivar/Library/Python/3.7/bin"
set GETTEXT "/usr/local/opt/gettext/bin" 
set MONO "/Library/Frameworks/Mono.framework/Versions/5.16.0/bin" 
set VSCODE_PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set HOME_BIN_PATH "$HOME/bin"
set VIRTUAL_ENV_PATH "/Users/ivar/Library/Python/3.8/bin"
set -gx GEM_HOME "$HOME/.gems"
set GEM_BIN "$GEM_HOME/bin"
set -gx PATH $PATH $LUAVER_DIR $DINO_BIN $RUBY_BIN $ICU4C_BINS $ICU4S_BIN $GETTEXT $MONO $PYTHON3 $VSCODE_PATH $HOME_BIN_PATH $GNUBIN
set -gx JDK_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home"
set -gx GOPATH "$HOME/Work/GO"
set -gx EDITOR 'vim'
set -gx MFA_STS_DURATION 3600
set -gx KREW_PATH $HOME/.krew/bin
set -gx LOCAL_BIN_PATH "$HOME/.local/bin"
set -gx PATH $GEM_BIN $FASTLANE_BIN $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $JAVA_HOME/bin $KREW_PATH $VIRTUAL_ENV_PATH $KREW $LOCAL_BIN_PATH $HOMEBREW

#set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

#set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
#set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths

set -gx DRONE_SERVER https://drone.dev.icelandairlabs.com
set -gx DRONE_TOKEN JOOThkDcB6akKKQGf32lqHjPLYokNYT0

set -gx PASSMANCLI_URL https://pmpexternal.icelandair.is
set -gx PASSMANCLI_AUTHTOKEN B2171F19-22C7-499C-982B-72C2D1F050CD

set -gx NODE_PATH (npm root -g)

# helm testing
set -gx HELM_REPO_USERNAME chartmuseum
set -gx HELM_REPO_PASSWORD rdKWAs410XPcAO1r05dIfZPyXaOSASmG
set -gx GIT_PRIVATE_KEY $HOME/.ssh/id_rsa
set -gx DRONE_AUTOSCALER http://localhost:8080
#Autocomplete GitHub CLI
#eval (gh completion -s fish)

#Commandline tool for 1Password
#eval (op signin ivarmagda)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/sls.fish ]; and . /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/slss.fish ]; and . /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/slss.fish
# jenv
status --is-interactive; and source (jenv init -|psub)
eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
