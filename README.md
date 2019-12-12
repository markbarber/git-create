# git-create
Automate creating a Github project with a single command. `git-create` creates a new directory on your machine, initializes a Github repo with a README and pushes it to the configured Github account.

## Installation
This project requires Python3 and PIP. You'll also need to ensure your SSH keys are stored in Github for the machine you're creating projects from.

### Setup
1) Clone this project
2) Navigate to the this project directory
3) Copy the `.env.example` file to a new `.env` file and update the values.
4) **Optional**: [Setup VS Code launch from cli](https://code.visualstudio.com/docs/setup/mac)
5) Run each of the following commands:

```
pip install -r requirements.txt
```

### Make available for use

You add create_repo.sh to your path or add an alias.

####How to add an alias to your ~/.bash_profile
```
alias git-create="/path/to/this/project/git-create/create_repo.sh"
```
Then reload your profile `source ~/.bash_profile`, or start a new terminal session.

### Using the Script
Run the following command in any directory. It will clone your new Github project in the path specified as the parameter
```
git-create <path to project>
```

####Example
Create repo `foobar`, and cloning it into `~/Desktop/foobar` 
```
git-create ~/Desktop/foobar
```


