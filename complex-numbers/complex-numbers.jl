# struct ComplexNumber <: Number
    
#     real::Real
#     imag::Real
#     ComplexNumber(real,imag) == new(real,imag)
# end

struct ComplexNumber{T <: Real} <: Number
    real::T
    imag::T
    ComplexNumber{T}(real, imag) where {T <: Real} = new(real, imag)
end
# ComplexNumber(real,imag)^2 == (real^2 - imag^2, 2*real*imag)
# function Arithmetic(num1::ComplexNumber,num2::ComplexNumber)
#     Addition(num::ComplexNumber)
#     Subtraction(num::ComplexNumber)
#     Multiplication(num::ComplexNumber)
#     Division(num::ComplexNumber)
# end

# function Addition(num1::ComplexNumber,num2::ComplexNumber)
#     return (num1.real + num2.real,num1.imag + num2.imag)
# end

# function Subtraction(num1::ComplexNumber,num2::ComplexNumber)
#     return (num1.real*num2.real - num1.imag*num2.imag,num1.imag*num2.rewal - num1.imag*num2.imag)
# end

# function Multiplication(num::ComplexNumber)
#     return (num1.real*num.z - num.y*num.h, num.y*num.z - num.x*num.h)
# end

# function Division(num::ComplexNumber)
#     return ((num.x*num.z + num.y*num.h)/(num.z^2 + num.h^2), (num.y*num.z + num.x*num.h)/())
# end