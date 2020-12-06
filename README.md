# Invoice Ninja v5 Dockerfiles
This is my personal Docker configuration for developing Invoice Ninja v5. **Not for production use.**

In case you're looking for official Dockerfiles for running Invoice Ninja https://github.com/invoiceninja/dockerfiles

Setup:
```bash
git clone https://github.com/invoiceninja/invoiceninja
cd invoiceninja && git checkout v5-develop
```
Download .zip file of invoiceninja5-dockerfiles and extract everything except README.md into invoiceninja folder.

```
cp .env.example .env
```

Environment variables that you should change to:
```bash
PHANTOMJS_PDF_GENERATION=false
PHANTOMJS_KEY=
PHANTOMJS_SECRET=
```

Then run:
```bash
docker-compose up -d --build
```
Visit http://localhost:8000/setup ✨

## Available services:
```bash
docker-compose run --rm php
docker-compose run --rm artisan
docker-compose run --rm npm
```

✔ Tip:
Make alias in your .bashrc, .zshrc or config.fish:

```bash
alias run="docker-compose run --rm"
```

.. and:
```bash
~/d/invoiceninja5-dev (v2)> run php --version

Creating invoiceninja5-dev_php_run ... done
PHP 7.4.12 (fpm-fcgi) (built: Nov  5 2020 20:50:13)
...
```

