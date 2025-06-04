# CoMaps Website

This static [comaps.app](https://www.comaps.app/) website is built with [Zola](https://www.getzola.org/).

<!-- ![Main Website](./static/images/website-main.png) -->

## Translations

**We need your help to translate this site to your language on [Codeberg Translate][weblate].**

## Development

- Download the latest zola for your operating system and set up the necessary path variable.

- Run `zola serve` for a local preview or `zola build` to generate static site in the `public` folder.

- Run `npm i && npm run format` if you want to pretty-format the Markdown and SCSS files.

- Upgrade npm dependencies with `npm run upgrade`, make sure that you have installed `npm-check-updates` package.

### Content changes in `.md` files

Only the **English** Markdown files should be edited directly. After changing text in a `.md` file, please run `./tools/i18n.sh` as described in [TRANSLATIONS.md](TRANSLATIONS.md) to propagate the english changes to all other languages.

## Deployment

The latest site is automatically deployed from `main` on the merging of a pull request.
It's also possible to manually deploy in the Actions menu.

## Contribution

Any good ideas and help with web site improvement are appreciated. And it's always better to discuss
any improvement before implementing it to sync with our vision and plans.

[weblate]: https://translate.codeberg.org/projects/comaps/website
