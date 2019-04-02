# Theme spacefish
set SPACEFISH_KUBECONTEXT_SYMBOL \u2388' '

# Ruby path
set RUBY_BIN "/usr/local/opt/ruby/bin"

set DINO_BIN "/Users/ivar/.deno/bin"

set FASTLANE_BIN "$HOME/.fastlane/bin"

set LUAVER_DIR "/Users/ivar/.luaver"

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

set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx ANDROID_SDK_ROOT /usr/local/share/android-sdk
set -gx ANDROID_NDK_ROOT /usr/local/share/android-ndk

set -gx PATH $GEM_BIN $FASTLANE_BIN $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $JAVA_HOME/bin

#set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/sls.fish ]; and . /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/slss.fish ]; and . /Users/ivar/.config/yarn/global/node_modules/tabtab/.completions/slss.fish
