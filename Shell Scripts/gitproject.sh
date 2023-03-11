# # command line argument in bash

# #!/bin/bash

# if [ $# -ne 2 ]
# then
#     echo "Usage: gitproject <project_name> <stack_name>"
#     exit 1
# fi

# stack_name=$2



# if [$stack_name = "c"]
# then
#     echo "Creating C project"
#     mkdir -p $1/{bin,obj,src}
#     touch $1/question.md
#     cp ~/.dotfiles/makefile $1/Makefile
#     cp ~/.dotfiles/main.c $1/src/main.c
#     cp ~/.dotfiles/my_functions.h $1/src/my_functions.h
#     cp ~/.dotfiles/README.md $1/README.md
#     cp ~/.dotfiles/LICENSE $1/LICENSE
#     cp ~/.dotfiles/.c-gitignore $1/.gitignore
# elif [$stack_name = "python"]
# then
#     echo "Creating Python project"
#     mkdir -p $1/{data, notebooks, src}
#     touch $1/question.md
#     cp ~/.dotfiles/main.py $1/src/main.py
#     cp ~/.dotfiles/README.md $1/README.md
#     cp ~/.dotfiles/LICENSE $1/LICENSE
#     cp ~/.dotfiles/requirements.txt $1/requirements.txt
#     cp ~/.dotfiles/.Python-gitignore $1/.gitignore
# else
#     echo "Invalid stack name"
#     exit 1
# fi



#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: gitproject <project_name> <stack_name>"
    exit 1
fi

stack_name=$2

if [ $stack_name = "c" ]
then
    echo "Creating C project"
    mkdir -p $1/{bin,obj,src}
    touch $1/question.md
    cp ~/.dotfiles/makefile $1/Makefile
    cp ~/.dotfiles/main.c $1/src/main.c
    cp ~/.dotfiles/my_functions.h $1/src/my_functions.h
    cp ~/.dotfiles/README.md $1/README.md
    cp ~/.dotfiles/LICENSE $1/LICENSE
    cp ~/.dotfiles/.c-gitignore $1/.gitignore
elif [ $stack_name = "python" ]
then
    echo "Creating Python project"
    mkdir -p $1/{data,notebooks,src}
    touch $1/question.md
    cp ~/.dotfiles/main.py $1/src/main.py
    cp ~/.dotfiles/README.md $1/README.md
    cp ~/.dotfiles/LICENSE $1/LICENSE
    cp ~/.dotfiles/requirements.txt $1/requirements.txt
    cp ~/.dotfiles/.Python-gitignore $1/.gitignore
else
    echo "Invalid stack name"
    exit 1
fi


