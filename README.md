# Firstyear Orientation Site

Welcome and orientation site for the BU libraries, made especially for first year students.

## Usage

- This is a **static website** that runs (almost entirely) off of vanilla js/css.
- It pulls in assets from IS&T (fonts, banner styling) and from our [Web Components repo](https://github.com/)
- It also relies on curator.io to pull in our instagram feed. that's currently done through
  Aidan Sawyer's account (aidans@bu.edu).

### Local Development

You can effectively develop on this site without running anything and just by
  opening `index.html` in your browser.

```bash
$ git clone https://github.com/bulib/firstyear.git
$ cd firstyear
$ open index.html
```

If you want a better development experience (that auto-updates whenever you save the file),
  you'll have to install dependencies and run the start script, then go to `localhost:8000`
  in your browser (could be a different port, it'll say in the terminal).

```bash
$ npm install
$ npm run start
```

### Deployment

- **Staging** is located at [bulib.github.io/firstyear](https://bulib.github.io/firstyear) and is
  updated automatically (by github) whenever you `git push` to the `master` branch (or merge a PR)

- **Production** is visible at [bu.edu/library/firstyear](https://www.bu.edu/library/firstyear/)
  and is published by raw upload to the ftp server managed by IS&T at `webdev.bu.edu` at the
  path `/web/l/i/library/firstyear/`. this is automated with help of the `deploy.sh` script.

_NOTE: you'll have to update the `user` and `dev_path` variables in `deploy.sh` to get it to work._
