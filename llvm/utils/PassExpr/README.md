# Experiments on llvm

Based on LLVM 18.1.8 build with

```
mkdir build && cd build
cmake -S ../llvm -B . -G Ninja -DCMAKE_BUILD_TYPE=Debug -DLLVM_ENABLE_PROJECTS="clang" -DLLVM_TARGETS_TO_BUILD='X86'
```