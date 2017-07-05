      double precision function Prim(x)
        double precision x
        double precision t1
        t1 = x ** 2
        Prim= t1 + 0.2D1 * x + 0.1D1
        return
      end
