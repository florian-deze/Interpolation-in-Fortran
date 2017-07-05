      doubleprecision function FUNC (x)
        doubleprecision x
        doubleprecision t1
        doubleprecision t2
        doubleprecision t3
        t1 = x ** 2
        t2 = t1 ** 2
        t3 = t2 ** 2
        FUNC = 0.3D1 / 0.200D3 * t3 + 0.9D1 * t1
        return
      end
