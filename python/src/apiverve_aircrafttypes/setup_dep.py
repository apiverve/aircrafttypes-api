from setuptools import setup, find_packages

setup(
    name='apiverve_aircrafttypes',
    version='1.2.6',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Aircraft Types returns the physical and operational characteristics of an aircraft type from its ICAO designator, such as B738 or A320, or by searching manufacturer and model. Each type comes with wingspan, length, tail height, maximum takeoff and landing weight, approach speed and category, airplane design group, ICAO wake turbulence category and FAA weight class, with metric conversions. Paid plans add airport planning geometry, RECAT wake categories and US registration and traffic counts.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/aircrafttypes?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
