module parent
real, parameter :: pi = 4.*atan(1.)
real :: tau

interface
module elemental real function pi2tau(pi)
  real, intent(in) :: pi
end function pi2tau
end interface

end module parent


use parent

tau = pi2tau(pi)

print *,'pi=',pi, 'tau=', tau

end program