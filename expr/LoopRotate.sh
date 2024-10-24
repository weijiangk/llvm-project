here="$(dirname "$(realpath "$0")")"
llvm=${here}/../build/bin

cd ${here}
rm -rf tmp~
mkdir tmp~

# first arg for opt source file
src=$1
out=$(basename $1)
# -debug-pass-manager to view pipeline
${llvm}/opt -passes=loop-rotate -debug-only=loop-rotate -S ${src} -o tmp~/${out}