# heap_sort_fortran_module_test

## これはなに
Fortran90による1次元配列(integer,real)のヒープソート実装  
ヒープソートは[計算量がデータ数Nに対してO(NlogN)](https://ja.wikipedia.org/wiki/%E3%83%92%E3%83%BC%E3%83%97%E3%82%BD%E3%83%BC%E3%83%88)であることが保証されている  
ただしWikipediaにもある通り安定ソートではないが、1次元配列のみのサポートなので問題は発生しえない  

## 使い方
[FortranのModule機能](https://amanotk.github.io/fortran-resume-public/chap09.html)を用いて外部から

```fortran
   use module_heapsort
   !! lst is a one-dimentional list (integer or real(8)) that you want to sort.
   call heapSort(lst)
```

とするだけで昇順ソートされた配列がlstに格納される

## How to build  
main.f90は使用例になっているので、実際のコードで使いたいときはswap.f90とheap_sort.f90のみをビルドすればよい  
Module機能を用いているのでコンパイル順を先にしてswap.mod,heap_sort.modを作りつつビルドするか、先に.modを作ってからビルドすればよい  
main.f90でmodule_heapsortがuseされている場合のビルド方法は以下の通り

```sh
  gfortran swap.f90 heap_sort.f90 main.f90 -o a.out
```
