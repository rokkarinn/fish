# Theme spacefish
set SPACEFISH_KUBECONTEXT_SYMBOL \u2388' '

# Ruby path
set RUBY_BIN "/usr/local/opt/ruby/bin"

set DINO_BIN "/Users/ivar/.deno/bin"

set LUAVER_DIR "/Users/ivar/.luaver"

# If you need to have icu4c first in your PATH run:
set ICU4S_BIN "/usr/local/opt/icu4c/bin"
set ICU4C_BINS "/usr/local/opt/icu4c/sbin"

set PYTHON3  "/Users/ivar/Library/Python/3.7/bin"
set GETTEXT "/usr/local/opt/gettext/bin" 
set MONO "/Library/Frameworks/Mono.framework/Versions/5.16.0/bin" 
set VSCODE_PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set HOME_BIN_PATH "$HOME/bin"
set -gx PATH $PATH $LUAVER_DIR $DINO_BIN $RUBY_BIN $ICU4C_BINS $ICU4S_BIN $GETTEXT $MONO $PYTHON3 $VSCODE_PATH $HOME_BIN_PATH
set -gx JDK_HOME "/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
set -gx GOPATH "$HOME/Work/GO"
set -gx EDITOR 'vim'
set -gx MFA_STS_DURATION 3600

set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx ANDROID_SDK_ROOT /usr/local/share/android-sdk
set -gx ANDROID_NDK_ROOT /usr/local/share/android-ndk

set -gx PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $JAVA_HOME/bin

#set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

