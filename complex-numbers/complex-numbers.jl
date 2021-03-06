import Base: *, +, -, abs, conj, real, imag, /, ==, ≈

struct ComplexNumber <: Number
    real::Number
    imag::Number
    ComplexNumber(real, imag) = new(real, imag)
end

*(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real * b. real - a.imag * b.imag, a.imag * b.real + a.real * b.imag)
+(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real + b.real, a.imag + b.imag)
-(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real - b.real, a.imag - b.imag)
/(a::ComplexNumber, b::ComplexNumber) = ComplexNumber((a.real * b.real + a.imag * b.imag)/abs(b)^2 , (a.imag * b.real - a.real * b.imag)/abs(b)^2)

abs(a::ComplexNumber) = (a.real^2 + a.imag^2)^0.5
conj(a::ComplexNumber) = ComplexNumber(a.real, - a.imag)
real(a::ComplexNumber) = a.real
imag(a::ComplexNumber) = a.imag

==(a::ComplexNumber, b::ComplexNumber) = isapprox(a.real, b.real) && isapprox(a.imag, b.imag)
≈(a::ComplexNumber, b::ComplexNumber) = isapprox(a.real, b.real) && isapprox(a.imag, b.imag)

#(a::ComplexNumber, b::ComplexNumber) = ComplexNumber(a.real = b.real) && (a.imag = b.imag)
