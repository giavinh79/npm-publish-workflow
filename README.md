# Example Yarn 3 Workspaces Monorepo + NPM Publish Workflow w/ Changesets

## Description

- Changesets for versioning and release
- GitHub Actions for CI/CD
- Yarn for package management and Yarn 3 for managing multiple packages
- tsup for transpilation and bundling (requires Node 18)

## Set Up

**Requires Yarn 3**

1. Create [GitHub personal access token (classic)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token#personal-access-tokens-classic) - add all permissions for `repo` scope and `read:user` for user scope

- Fine-grained access token does not work

2. Create a [NPM publish token](https://docs.npmjs.com/creating-and-viewing-access-tokens)
3. Add these to your [GitHub repository secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets#creating-encrypted-secrets-for-a-repository) (named as `GHP_TOKEN` and `NPM_PUBLISH_ACCESS_TOKEN`)
4. In GitHub repository settings, go to: actions -> general -> workflow permissions -> **Enable Read & Write Permissions**
5. It is _important_ to ensure correct values for `access` and `baseBranch` [config properties](https://github.com/changesets/changesets/blob/main/docs/config-file-options.md)
6. (Optionally) Add [Changesets GitHub Bot](https://github.com/apps/changeset-bot) to the repo as a reminder for changes that do need changesets
7. Configure `changesetBaseRefs` for --since prop in `yarn workspaces foreach`

- Some changes are not relevant to a release (i.e. README updates) so they do not need changesets

## Typical Workflow for Versioning and Releases

**Contributor**:

1. Make desired changes to packages.
2. Run `yarn changesets` to version changes.
3. Create a PR for the change (or merge directly).

**Code Owner**:

1. As long as there are changesets on the main branch, there will be a PR open for committing a release. This PR will automatically update as changesets are added/removed.
2. When desired, merge the changesets `Release` PR to begin the release process.
3. After merging the PR: changesets on the main branch will be cleaned up, any changed packages will have a new NPM release, a GitHub release + tags will be added, and any relevant files will be updated (i.e. `CHANGELOG.md` and `package.json` version fields)
4. If you want to ever trigger a manual publish you can use `changesets publish` locally, however this will not auto-publish GitHub releases + tags for you.

## Useful Links

**YAML Syntax for GitHub Actions**: https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions

**Changesets**:

- FAQ: https://github.com/changesets/changesets/blob/main/docs/common-questions.md
- GitHub Actions: https://github.com/changesets/action
- Configuring: https://github.com/changesets/changesets/blob/main/docs/config-file-options.md#basebranch-git-branch-name
  - It is _important_ to ensure correct values for `access` and `baseBranch` properties

**GitHub Actions**:

- Manually running a workflow: https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow
- Re-running a workflow: https://docs.github.com/en/actions/managing-workflow-runs/re-running-workflows-and-jobs
- Disabling or enabling a workflow: https://docs.github.com/en/actions/managing-workflow-runs/disabling-and-enabling-a-workflow

**Slack**:

- GitHub Action: https://github.com/slackapi/slack-github-action
- @TODO: How to update Slack channel topic?
