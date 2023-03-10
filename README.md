# Example Repo for NPM Publish Workflow w/ Changesets

## Set Up

1. Create GitHub personal access token (classic) - add all permissions for `repo` scope and `read:user` for user scope
2. Create NPM publish token
3. Add these to the GitHub repository secrets (named as `GHP_TOKEN` and `NPM_PUBLISH_ACCESS_TOKEN`)
4. In GitHub repository settings, go to: actions -> general -> workflow permissions -> **Enable Read & Write Permissions**
5. (Optionally) Add [Changesets GitHub Bot](https://github.com/apps/changeset-bot) to the repo

## Useful Links

**YAML Syntax for GitHub Actions**: https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions

**Changesets**: 
- FAQ: https://github.com/changesets/changesets/blob/main/docs/common-questions.md
- GitHub Actions: https://github.com/changesets/action
- Configuring: https://github.com/changesets/changesets/blob/main/docs/config-file-options.md#basebranch-git-branch-name
  - It is *important* to ensure correct values for `access` and `baseBranch` properties

**GitHub Actions**:
- Manually running a workflow: https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow
- Re-running a workflow: https://docs.github.com/en/actions/managing-workflow-runs/re-running-workflows-and-jobs
- Disabling or enabling a workflow: https://docs.github.com/en/actions/managing-workflow-runs/disabling-and-enabling-a-workflow

**Slack**:
- GitHub Action: https://github.com/slackapi/slack-github-action
- @TODO: How to update Slack channel topic?