      doubleprecision function PRIM (x)
        doubleprecision x                                                                                                                                                                                                           
        doubleprecision t1                                                                                                                                                                                                          
        doubleprecision t2                                                                                                                                                                                                          
        t1 = x ** 2                                                                                                                                                                                                                 
        t2 = t1 ** 2                                                                                                                                                                                                                
        PRIM = t2 * x + 0.2D1 * t1                                                                                                                                                                                                  
        return                                                                                                                                                                                                                      
      end    
