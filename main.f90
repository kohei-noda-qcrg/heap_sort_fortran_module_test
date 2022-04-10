program main
    use heap_sort
    implicit none
    integer :: i
    integer, allocatable :: s(:), s_2(:)
    real, allocatable :: s_3(:)
    allocate (s(100))
    do i = 1, 100
        s(i) = 100 - i
    end do
    print *, 'before sort', s
    call heapSort(s)
    print *, 'after sort', s
    allocate (s_2(3))
    s_2(1) = 3
    s_2(2) = 4
    s_2(3) = 2
    print *, s_2
    call heapSort(s_2)
    print *, s_2
    print *, size(s_2)
    allocate (s_3(3))
    s_3(1) = 3.141592
    s_3(2) = 1.41421356
    s_3(3) = 1.7320508
    print *, s_3
    call heapSort(s_3)
    print *, s_3
    print *, size(s_3)
end program main
