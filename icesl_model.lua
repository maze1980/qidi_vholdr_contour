holder= difference(cube(50,5,4), translate(0,0,0.5)*cube(50,3,4))
holder = union(holder, translate(0,31,0.0)*cube(38,59,2.5))
holder = difference(holder, translate(0,54,0.0)*cube(20,25,2.5))
holder = difference(holder, translate(0,20,0.0)*cube(28,45,4))
holder = union(holder, translate( 18,31,0.0)*cube(2,59,5))
holder = union(holder, translate(-18,31,0.0)*cube(2,59,5))
holder = union(holder, translate( 10.5,51.5,0.0)*cube(1,18,4))
holder = union(holder, translate(-10.5,51.5,0.0)*cube(1,18,4))
holder = union(holder, translate( 10.0,55.0,0.0)*cube(1,1,4))
holder = union(holder, translate(-10.0,55.0,0.0)*cube(1,1,4))
holder = union{
    holder,
    translate( 18.0,4.0,0.0)*cube(2,5,22),
    translate(-18.0,4.0,0.0)*cube(2,5,22),
    intersection{
        difference{
            translate(0,6.5,22)*rotate(90,0,0)*cylinder(38/2,5),
            translate(0,6.5,22)*rotate(90,0,0)*cylinder(34/2,5)
        },
        translate(0,6.5,22)*cube(38,10,38/2)
    }
}
holder = union(holder, translate( 20,2.5,0.0)*cube(10,2,5))
holder = union(holder, translate(-20,2.5,0.0)*cube(10,2,5))
emit(translate(-90,0,0)*holder)
