# Ruby
export GEM_HOME="$HOME/.gem/ruby/2.6.0"
if [ -d $GEM_HOME ]; then
    export PATH="$PATH:$GEM_HOME/bin"
    printf "RUBY GEM_HOME       $GEM_HOME\n"
fi
