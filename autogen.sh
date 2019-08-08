# Check for libntech submodule and give nice advice on how to fix:
if [ ! -f libntech/libutils/sequence.h ] ; then
    echo "Error: libntech/libutils/sequence.h is missing"
    echo "       You probably forgot to use the --recursive option when cloning"
    echo "       To fix it now, run:"
    echo "       git submodule init && git submodule update"
    exit 1
fi

# Determine version of libntech (TOOD: Remove)
( cd libntech && misc/determine-version.py > CFVERSION ) \
    || { echo "$0: Unable to auto-detect libntech version" ; exit 1 ; }

autoreconf -i ./
./configure $@
