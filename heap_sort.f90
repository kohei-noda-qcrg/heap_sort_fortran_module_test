module module_heapsort
    use module_swap
    implicit none
    private
    public heapSort
    interface heapSort
        module procedure heapSortInt, heapSortReal
    end interface heapSort
    interface heapify
        module procedure heapifyInt, heapifyReal
    end interface heapify
contains
    subroutine heapifyInt(array, first, last)
        implicit none
        integer, INTENT(INOUT) :: array(:)
        integer, INTENT(IN) :: first, last
        integer ::  parent, child
        parent = first
        child = 2*parent
        do while (child <= last)
            if (child < last .and. array(child) < array(child + 1)) child = child + 1
            if (array(child) <= array(parent)) exit
            call swap(array, child, parent)
            ! call swap(array, child, parent)
            parent = child
            child = 2*parent
        end do
    end subroutine heapifyInt
    subroutine heapSortInt(s)
        implicit none
        integer, INTENT(INOUT) :: s(:)
        integer :: array_size, i, idx
        i = 1
        array_size = size(s)
        ! Build heap
        do idx = array_size/2, 1, -1
            call heapify(s, idx, array_size)
        end do
        do idx = array_size, 2, -1
            call swap(s, 1, idx)
            call heapify(s, 1, idx - 1)
        end do
    end subroutine

    subroutine heapifyReal(array, first, last)
        implicit none
        real(8), INTENT(INOUT) :: array(:)
        integer, INTENT(IN) :: first, last
        integer ::  parent, child
        parent = first
        child = 2*parent
        do while (child <= last)
            if (child < last .and. array(child) < array(child + 1)) child = child + 1
            if (array(child) <= array(parent)) exit
            call swap(array, child, parent)
            parent = child
            child = 2*parent
        end do
    end subroutine heapifyReal
    subroutine heapSortReal(s)
        implicit none
        real(8), INTENT(INOUT) :: s(:)
        integer :: array_size, i, idx
        i = 1
        array_size = size(s)
        ! Build heap
        do idx = array_size/2, 1, -1
            call heapify(s, idx, array_size)
        end do
        do idx = array_size, 2, -1
            call swap(s, 1, idx)
            call heapify(s, 1, idx - 1)
        end do
    end subroutine
end module module_heapsort
