module module_swap
    implicit none
    interface swap
        module procedure swapInt, swapReal, swapArrayInt, swapArrayReal
    end interface swap
contains
    subroutine swapInt(a, b)
        implicit none
        integer temp
        integer, INTENT(INOUT) :: a, b
        temp = a
        a = b
        b = temp
    end subroutine swapInt
    subroutine swapReal(a, b)
        implicit none
        real temp
        real, INTENT(INOUT) :: a, b
        temp = a
        a = b
        b = temp
    end subroutine swapReal
    ! Swap values between array(a) and array(b)
    subroutine swapArrayInt(array, a, b)
        implicit none
        integer temp
        integer, INTENT(INOUT) :: array(:)
        integer, INTENT(IN) :: a, b
        temp = array(a)
        array(a) = array(b)
        array(b) = temp
    end subroutine swapArrayInt
    subroutine swapArrayReal(array, a, b)
        implicit none
        real temp
        real, INTENT(INOUT) :: array(:)
        integer, INTENT(IN) :: a, b
        temp = array(a)
        array(a) = array(b)
        array(b) = temp
    end subroutine swapArrayReal

end module module_swap
