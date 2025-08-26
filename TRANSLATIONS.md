# Weblate Translations

The Website is translated on [Codeberg Translate][weblate].

**(!) Please don't edit localized Markdown files (`.lang.md`) manually.**

## How it works

The translation process has three steps:

**English Markdown to .PO files**. A special [po4a][po4a] tool parses English source files (i.e. without `.lang.` suffix) to extract all localizable strings into `.po` files in `po/` directory. Markdown files are tokenized by the tool to extract individual paragraphs, list items and other elements into separate translatable strings. The source English files are never changed by the tool. English Markdown files can be freely edited directly in the repo without any issues. Every re-run of `./i18n.sh` script will re-scan English sources to update `.pot` and `.po` files in `./po` directory. The tool does the best to perform fuzzy matching over previous translation strings whenever it is possible. Updated `.pot` and `.po` and files should be committed together with changed English Markdown files.

**Translation of .PO files**. [Weblate][weblate] automatically pulls recent data from `.pot` and `.po` files from the `main` of the repo and makes new strings available for translation. Translation teams works in their pace to localize new strings via [Weblate][weblate] web-interface. Weblate sends Pull Requests with updated PO files once per day if any changes available. Weblate never touches Markdown files. It is also possible edit `.po` files directly in the repo - Weblate will updated when changes are pushed into `main`.

**.PO to localized Markdown files**. The second function of [po4a][po4a] tool is to incorporate new translations from `.po` files into localized (`.lang.md`) files. Localized Markdown files are always regenerated from the source English file by performing simple replacement of English strings with localized strings from `.po` files. Formatting of the original English source files is always fully preserved and replicated to all other locales as a result of this simple process. All strings without localization in `.po` files are kept untouched in English.

### Prerequisites

Install [po4a][po4a] tool. Version 0.68 is tested and supported. All other versions are tested.

**Debian/Ubuntu**:

```
apt-get install po4a
```

**Fedora/RedHat**:

```
dnf install po4a
```

**macOS**:

```
brew install po4a
```

## Use-cases

### I am a content writer

- Add/edit source **English** Markdown files in the repo.
- Refresh `.pot` and `.po` files when English is changed by running `./tools/i18n.sh`.
- Push both updated content and refreshed `.pot`/`.po` files in the single PR to GitHub.
- Translation teams will be notified via Weblate when your PR is merged.
- All new strings will be in English until localized (see the next step).

### I am a translator

- Use [Weblate][weblate] web interface to update translations.
- It is also OK to update `.po` files directly in repo.
- Don't touch localized `.lang.md` files.

### I am a repository maintainer

- Checkout `weblate-i18n` branch when it is updated by Weblate.
- Run `./tools/i18n.sh` tool to regenerate `.lang.md` files from updated `.po` files.
- Update `.config.toml` if a new language is added.
- Translate `menu.title` YAML Front Matters key manually, this is a [well-known limitation](https://github.com/mquinson/po4a/issues/392).
- Run `zola server` to check changes locally.
- Create or update PR with incorporated `.lang.md` changes.
- Get your PR merged into `main`.
- Never force-push to `main` branch - it will lock Weblate.

## How to add a new language

- Add the language code to `.po4a.cfg`
- run `./tools/i18n.sh` to update / generate translation and content files
- translate the `language` key in the languages `.po` file to make sure the correct language name is displayed in the language selector instead of "English"
- run `./tools/i18n.sh` again to propagate the translation change
- deploy website locally to test changes

## Known Limitations

- New web-site pages and languages should be added to `.po4a.cfg` configuration file manually.

## Resolving conflicts

Merge conflicts between the Weblate and the actual repo can happen for many reasons (e.g. if you accidentally force-pushed to the `main` branch). When conflicts happen this will lock the Weblate. **If this happens: Do not panic**, this is recoverable without losing translations, but requires some effort.

Here is a step-by-step guide:

1. Make sure [the translations on Weblate are actually locked](https://translate.codeberg.org/projects/comaps/website/#repository), to make sure that no more changes are done on Weblate while the conflict is being fixed. You will need to have the right Weblate permissions to do this.
2. Commit all changes from the _Weblate_ internal database to the Weblate-internal Git repository, the steps in the UI are: _Manage → Repository Maintenance → Commit (button)_. This ensures that all existing translations are in the Weblate-internal _Git_ repo. (this also requires the right Weblate permissions)
3. Now you can add the weblate-internal Git repo as remote for your local repo: `git remote add weblate https://translate.codeberg.org/git/comaps/website/`. This step only needs to be the first time you have to resolve a conflict
4. Make sure that your local main branch is at the latest remote state, e.g. by running `git checkout main; git pull`
5. Now you can fetch the current state of the _Weblate_ remote: `git fetch weblate`
6. To be able to rebase the Codeberg `main` into the Weblate one, you need to have an editable branch. You can create it using `git checkout -b resolve_translate weblate/main`. This creates a branch called `resolve_translate` off the Weblate remote, and also switches you to this newly created branch.
7. You can now run `git rebase main`, to rebase the branch and resolve any conflicts that are between the two. (**Note: Make sure to run this command from your `resolve_translate` branch**)
8. Once you have resolved the conflicts, you can push the `resolve_translate` branch to Codeberg: `git push` 
9. Make a PR for merging your conflict-resolution-branch into `main` on Codeberg, and get it reviewed as usual
10. Once the PR is merged into `main` on Codeberg and the merge conflict is gone, you can now unlock the translations on Weblate again. 
11. **Optionally if necessary**: If the conflict hasn't resolved through the steps, you can optionally reset the Weblate from the admin backend for the `website` component, this forces the current state from the Codeberg git repo into Weblate

Using these steps all existing translations can still be kept and rebased into the repo, without losing work. The important bit is that you need to ensure that all translations are in the Weblate-internal git repository before you rebase, so that they get into the _actual_ Codeberg repo. 

[po4a]: https://po4a.org/index.php.en
[weblate]: https://translate.codeberg.org/projects/comaps/website
