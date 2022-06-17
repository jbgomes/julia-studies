import Base: *, +, -, abs, conj

struct ComplexNumber <: Number
    real::Number
    imag::Number
    ComplexNumber(real, imag) = new(real, imag)
end

*(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real * b. real - a.imag * b.imag, a.imag * b.real + a.real * b.imag)
+(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real + b.real, a.imag + b.imag)
-(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real - b.real, a.imag - b.imag)
abs(a::ComplexNumber) = (a.real^2 + a.imag^2)^0.5
conj(a::ComplexNumber) = ComplexNumber(a.real, - a.imag)
#/(a::ComplexNumber, b::ComplexNumber) = ComplexNumber((a.real * b.real + a.imag * b.imag)/abs(b)^2 , (a.imag * b.real - a.real * b.imag)/abs(b)^2)
#(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real = b.real) && (a.imag = b.imag)
