function is_valid_triangle(sides)
    return sides[1] + sides[2] >= sides[3] && sides[1] + sides[3] >= sides[2] && sides[2] + sides[3] >= sides[1]
end

function is_equilateral(sides)
    return is_valid_triangle(sides) && sides[1] > 0 && sides[1] == sides[2] && sides[2] == sides[3] && sides[3] == sides[1]
end

function is_isosceles(sides)
   return is_valid_triangle(sides) && sides[1] == sides[2] || sides[2] == sides[3] || sides[3] == sides[1]
end

function is_scalene(sides)
    return is_valid_triangle(sides) && sides[1] != sides[2] && sides[2] != sides[3] && sides[3] != sides[1]
end
