#!/bin/bash
## Writting a simple script to compile and run c/c++ programs automatically
[ $# -eq 0 ] && {
    echo "Please Provide Some Arguments(C/C++)"
    exit 1
}
Ext=$(echo $1 | cut -d'.' -f2)

Type="Invalid"
compiler="gcc"
Tag="GNU/GCC"

if [ $Ext = "c" ]; then
    Type="C"
    compiler="gcc"
    Tag="GNU/GCC"
elif [ $Ext = "cpp" ]; then
    Type="cpp"
    compiler="g++"
    Tag="GNU/G++"
else
    echo "Invalid File Type {$Ext}"
    exit 1
fi

if [ $# -eq 2 ]; then
    if [ $2 = "-l" ]; then
        [ $Type = "C" ] && {
            compiler="clang"
            Tag="LLVM/Clang"
        }

        [ $Type = "cpp" ] && {
            compiler="clang++"
            Tag="LLVM/Clang++"
        }
    fi

    if [ $2 != "-g" ] && [ $2 != "-l" ]; then
        echo "Opps!!, Invalid compiler (Please chose GNU or LLVM)"
        exit 1
    fi
fi

echo ">> Compiling The Source File ($compiler $1) ..."
# echo ">> $Tag is running ..."
$compiler $1 -o xrun
if [ $? -eq 0 ]; then
    echo ">> Done, Now Running the Executable (xrun)..."
else
    echo "<< Opps!!, Compilation Failed :("
    exit 1
fi
echo ""
$(pwd)/xrun
