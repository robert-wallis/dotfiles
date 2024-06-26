These are my "dotfiles", you might find them useful.

# Installation
```bash
git clone --recurse-submodules git@github.com:robert-wallis/dotfiles.git
dotfiles/install
```

# When you forget to recurse submodules, like I always do

```bash
bin/recurse-submodules
```

Will run this for you: `git submodule update --init --recursive`

