FROM node:10

LABEL "com.github.actions.name"="GitHub action for deploying AWS Amplify project"
LABEL "com.github.actions.description"="This action builds and deploys your AWS Amplify project"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/ambientlight/amplify-cli-action"
LABEL "homepage"="https://github.com/ambientlight/amplify-cli-action.git"

RUN npm install --global --unsafe-perm @aws-amplify/cli@4.41.2

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

