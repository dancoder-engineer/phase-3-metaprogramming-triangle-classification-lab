class Triangle
  

  attr_reader :kind

  def initialize(a, b, c)

    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError

      elsif (a+b)<=c || (a+c)<=b || (b+c)<=a
        raise TriangleError
    
      elsif a == b && a == c
        @kind = :equilateral

      elsif a == b || a == c || b == c
        @kind = :isosceles

      else
        @kind = :scalene
    end

  end

  

  class TriangleError < StandardError
    def message
      "lkh"
    end
  end




end


