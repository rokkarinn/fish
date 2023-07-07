function awsenv
  if test -e ~/.aws/config.$argv
    echo "Switching to $argv config"
    rm /users/ivarbj/.aws/config
    ln -s /Users/ivarbj/.aws/config.$argv /Users/ivarbj/.aws/config
  else
    echo "$argv does not exist."
    rm /Users/ivarbj/.aws/config
  end
end
