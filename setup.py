from setuptools import setup, find_packages

setup(
    name='robot-orangehrm',
    version='1.0.0',
    description='Robot Framework automation suite for OrangeHRM 5.7',
    author='harsh08chandak',
    packages=find_packages(),
    install_requires=[
        'robotframework==7.0.1',
        'robotframework-seleniumlibrary==6.1.3',
        'robotframework-pabot==2.18.0',
        'selenium==4.15.2',
    ],
)
