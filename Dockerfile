FROM registry.gitlab.com/mbarkhau/pylint-ignore/base

ADD src/ src/
ADD stubs/ stubs/
ADD test/ test/
ADD fixtures/ fixtures/
ADD requirements/ requirements/
ADD setup.cfg setup.cfg
ADD pyproject.toml pyproject.toml
ADD pylint-ignore.md pylint-ignore.md
ADD README.md README.md
ADD CHANGELOG.md CHANGELOG.md
ADD LICENSE LICENSE
ADD Makefile Makefile
ADD Makefile.bootstrapit.make Makefile.bootstrapit.make
ADD scripts/exit_0_if_empty.py scripts/exit_0_if_empty.py

ENV PYTHONPATH="src/:vendor/"

CMD make lint mypy test
