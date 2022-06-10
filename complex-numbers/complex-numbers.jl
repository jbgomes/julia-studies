import Base: *,+,-

struct ComplexNumber <: Number
    real::Real
    imag::Real
    ComplexNumber(real, imag) = new(real, imag)
end


*(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real * b. real - a.imag * b.imag, a.imag * b.real + a.real * b.imag)
+(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real + b.real, a.imag + b.imag)
# -(a::ComplexNumber,b::ComplexNumber) = Complex(a.real - b.real, a.imag - b.imag)