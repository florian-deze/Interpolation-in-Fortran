      double precision function func (x)
        double precision x
        double precision t1
        double precision t2
        t1 = x ** 2
        t2 = t1 ** 2
        func = t2 + 0.2D1 * x
        return
      end
