WITH_KEY = "sample_model.py"
IMPORTS = "imports.py"


def make_single_app():
    with open(IMPORTS) as inp:
        print(inp.read())

    for n in range(100):
        with open(WITH_KEY) as with_key:
            print(with_key.read().format(number=n))


def main():
    make_single_app()


if __name__ == '__main__':
    main()
