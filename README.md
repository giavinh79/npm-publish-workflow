## Quick Start Guide

1. Create GitHub personal access token (classic) + NPM publish token
2. Add these to repository secrets named as `GHP_TOKEN` and `NPM_PUBLISH_ACCESS_TOKEN`
3. In GitHub repository settings, go to: actions -> general -> workflow permissions -> **Enable Read & Write Permissions**

## Useful Links

**YAML Syntax for GitHub Actions**: https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions

**Changesets**: 
- GitHub Actions: https://github.com/changesets/action
- Configuring: https://github.com/changesets/changesets/blob/main/docs/config-file-options.md#basebranch-git-branch-name
  - Likely you'll want to modify and ensure correct `access` and `baseBranch` values

**GitHub Actions**:
- Manually running a workflow: https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow
- Re-running a workflow: https://docs.github.com/en/actions/managing-workflow-runs/re-running-workflows-and-jobs
- Disabling or enabling a workflow: https://docs.github.com/en/actions/managing-workflow-runs/disabling-and-enabling-a-workflow

**Slack**:
- GitHub Action: https://github.com/slackapi/slack-github-action