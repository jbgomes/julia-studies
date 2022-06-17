import Base: *, +, -, abs

struct ComplexNumber <: Number
    real::Real
    imag::Real
    ComplexNumber(real, imag) = new(real, imag)
end


*(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real * b. real - a.imag * b.imag, a.imag * b.real + a.real * b.imag)
+(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real + b.real, a.imag + b.imag)
-(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real - b.real, a.imag - b.imag)
abs(a::ComplexNumber) = (a.real^2 + a.imag^2)^0.5

#(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real = b.real) && (a.imag = b.imag)
#/(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(Real(a.real * b.real + a.imag * b.imag)/(b.real^2 + b.imag^2) , Real(a.imag * b.real - a.real * b.imag)/(b.real^2 + b.imag^2))

