# pylint

pylint is a python library which tests your code quality and conformity.

## Usage

To test your code, go e.g. into the root directory of your python project and
run:

```bash
docker run --rm -v $PWD:/code racoon/pylint
```

If you want to get a report in a table-like form add the `--reports=y`
parameter:

```bash
docker run --rm -v $PWD:/code racoon/pylint --reports=y
```

If you want to provide a score check as a minimum requirement to pass,
run:

```bash
docker run --rm -v $PWD:/code racoon/pylint --fail-under 8.0
```
