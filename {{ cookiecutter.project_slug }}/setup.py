from setuptools import find_packages, setup

setup(
    packages=find_packages(),
	name='{{ cookiecutter.project_slug }}',
    version='0.1.0',
    description='{{ cookiecutter.description }}',
    author='{{ cookiecutter.author_name }}',
)
