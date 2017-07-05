      doubleprecision function prim(x)
      doubleprecision x
      doubleprecision t1
      doubleprecision t2
      t1 = x ** 2
      t2 = exp(t1)
      prim = t2 / (x + 0.1D1)
      return
      end
