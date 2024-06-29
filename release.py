#------------------------------------------------------------------------
# 참조 모듈 목록.
#------------------------------------------------------------------------
from setuptools import setup, find_packages


#------------------------------------------------------------------------
# 설치.
#------------------------------------------------------------------------
setup(
	name = "pylonlib",
	version = "v0.0.1",
	author = "ddukbaek2",
	author_email = "ddukbaek2@gmail.com",
	description = "Python Simple Framework.",
	long_description = open(file = "README.md", mode = "r", encoding = "utf-8").read(),
	long_description_content_type = "text/markdown",
	url = "https://github.com/ddukbaek2/pylonlib",
	packages = find_packages(),
	include_package_data=True,
	package_data = {
		"": ["resources/*"],
	},
    install_requires = [],
	classifiers = [
		"Programming Language :: Python :: 3",
		"License :: OSI Approved :: MIT License",
		"Operating System :: OS Independent",
	],
	python_requires = ">=3.9"
)