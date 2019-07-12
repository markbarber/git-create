import sys
import os
from github import Github
from dotenv import load_dotenv

load_dotenv()

path = os.getenv("FILEPATH")
token = os.getenv("GITTOKEN")

def create():
    path = sys.argv[1]
    name = sys.argv[2]

    # folderName = str(firstArg)
    os.makedirs(path)
    user = Github(token).get_user()
    repo = user.create_repo(name)
    print(repo.git_url)

if __name__ == "__main__":
    create()
    sys.exit(0)
