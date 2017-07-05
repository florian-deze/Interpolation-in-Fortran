      doubleprecision function func(x)
      doubleprecision x
      doubleprecision t1
      doubleprecision t2
      doubleprecision t4
      doubleprecision t8
      t1 = x ** 2
      t2 = exp(t1)
      t4 = x + 0.1D1
      t8 = t4 ** 2
      func = 0.2D1 * x * t2 / t4 - t2 / t8
      return
      end
