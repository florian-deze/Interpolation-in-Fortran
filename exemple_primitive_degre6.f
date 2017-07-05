
      double precision function PRIM (x)
        doubleprecision x
        doubleprecision t1
        doubleprecision t2
        doubleprecision t3
        t1 = x ** 2
        t2 = t1 ** 2
        t3 = t2 ** 2
        PRIM = t3 * x / 0.600D3 + 0.3D1 * t1 * x
        return
      end
