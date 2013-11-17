1. g++-4.8
----------

    sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
    sudo add-apt-repository ppa:dns/gnu
    sudo update-alternatives --remove-all gcc
    sudo update-alternatives --remove-all g++
    sudo apt-get update
    sudo apt-get install autoconf automake libtool git g++-4.8
    sudo apt-get upgrade
    sudo apt-get dist-upgrade -y

2. Bison, Flex, Cmake
-------------------------------

    sudo add-apt-repository --yes ppa:kalakris/cmake
    sudo apt-get update
    sudo apt-get install bison flex cmake

3. Boost 1.54
----------------------------

    sudo add-apt-repository ppa:boost-latest/ppa
    sudo apt-get update
    sudo apt-get install libboost1.54-all-dev

4. CAPD-DynSys 3.0
----------------------------

    wget http://krzesanica.ii.uj.edu.pl/capd/capdDynSys.zip
    unzip capdDynSys.zip
    cd capd_dynsys
    autoreconf --install
    ./configure --without-gui CXX=g++-4.8 CC=gcc-4.8
    make
    sudo make install

Note that we need to compile ``capd`` using the same compiler that we
will compile dReal (``g++-4.8`` in this example).


5. Ocaml System and Libraries
-----------------------------------------

    sudo add-apt-repository ppa:avsm/ppa
    sudo apt-get update
    sudo apt-get install ocaml opam
    opam init
    eval `opam config env --root=<ABSOLUTE_HOMEPATH>/ocamlbrew/ocaml-4.00.1/.opam`
    opam update
    opam install ocamlfind batteries

6. EGLIBC-2.17 (Optional)
-------------------------

Using eglibc (<= 2.16) may cause severe errors in floating point
computation if ``FE_UPWARD``, ``FE_DOWNWARD``, and ``FE_TOWARDZERO``
rounding modes are used. If you're using Ubuntu OS (<= 12.10) or
Debian (<= 7.2), please check the version of your eglibc by typing:

    ldd --version

If the version is <= 2.16, please check out the latest version of eglibc:

    svn co http://www.eglibc.org/svn/trunk eglibc

and install them on your machine. (NOTE: recommend to install on your home dir)

    cd <HOME_PATH>
    svn co svn://svn.eglibc.org/branches/eglibc-2_17 eglibc-2.17
    mkdir eglibc-2.17-build
    mkdir eglibc
    cd eglibc-2.17-build
    ../eglibc-2.17/libc/configure --prefix=<HOME_PATH>/../eglibc
    make
    make install