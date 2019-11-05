# Theme spacefish
set SPACEFISH_KUBECONTEXT_SYMBOL \u2388' '

# Ruby path
set RUBY_BIN "/usr/local/opt/ruby/bin"

set DINO_BIN "/Users/ivar/.deno/bin"

set FASTLANE_BIN "$HOME/.fastlane/bin"

set LUAVER_DIR "/Users/ivar/.luaver"

set -gx LC_ALL en_US.UTF-8  
set -gx LANG en_US.UTF-8

# If you need to have icu4c first in your PATH run:
set ICU4S_BIN "/usr/local/opt/icu4c/bin"
set ICU4C_BINS "/usr/local/opt/icu4c/sbin"

set PYTHON3  "/Users/ivar/Library/Python/3.7/bin"
set GETTEXT "/usr/local/opt/gettext/bin" 
set MONO "/Library/Frameworks/Mono.framework/Versions/5.16.0/bin" 
set VSCODE_PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set HOME_BIN_PATH "$HOME/bin"
set -gx GEM_HOME "$HOME/.gems"
set GEM_BIN "$GEM_HOME/bin"
set -gx PATH $PATH $LUAVER_DIR $DINO_BIN $RUBY_BIN $ICU4C_BINS $ICU4S_BIN $GETTEXT $MONO $PYTHON3 $VSCODE_PATH $HOME_BIN_PATH
set -gx JDK_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home"
set -gx GOPATH "$HOME/Work/GO"
set -gx EDITOR 'vim'
set -gx MFA_STS_DURATION 3600

set -gx PATH $GEM_BIN $FASTLANE_BIN $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $JAVA_HOME/bin

#set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set -g fish_user_paths "/usr/local/sbin"
set -g fish_user_paths "/usr/local/opt/terraform@0.11/bin" 
set -g fish_user_paths "/usr/local/opt/mysql-client/bin"

set -gx DRONE_SERVER https://drone.dev.icelandairlabs.com
set -gx DRONE_TOKEN JOOThkDcB6akKKQGf32lqHjPLYokNYT0

set -gx PASSMANCLI_URL https://pmpexternal.icelandair.is
set -gx PASSMANCLI_AUTHTOKEN B2171F19-22C7-499C-982B-72C2D1F050CD

#Commandline tool for 1Password
eval (op signin ivarmagda)
