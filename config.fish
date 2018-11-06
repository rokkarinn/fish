# Ruby path
set RUBY_BIN "/usr/local/opt/ruby/bin"

# If you need to have icu4c first in your PATH run:
set ICU4S_BIN "/usr/local/opt/icu4c/bin"
set ICU4C_BINS "/usr/local/opt/icu4c/sbin"

set PYTHON3  "/Users/ivar/Library/Python/3.7/bin"
set GETTEXT "/usr/local/opt/gettext/bin" 
set MONO "/Library/Frameworks/Mono.framework/Versions/5.16.0/bin" 
set VSCODE_PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set -g fish_user_paths $RUBY_BIN $ICU4C_BINS $ICU4S_BIN $GETTEXT $MONO $PYTHON3 $VSCODE_PATH $fish_user_paths
set -gx JDK_HOME "/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
set -gx GOPATH "$HOME/Work/GO"