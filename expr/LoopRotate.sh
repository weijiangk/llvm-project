here="$(dirname "$(realpath "$0")")"
llvm=${here}/../build/bin

cd ${here}

# first arg for opt source file
src=$1
out=$(basename $1)~
${llvm}/opt -passes=loop-rotate -debug-only=loop-rotate -S ${src} -o ${out}