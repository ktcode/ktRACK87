//
// ktRACK87
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;

X=55.7;
Y=30.8;
Z=2;

X2=50.8;
Y2=27.3;
Z2=19.9;


base();



module base()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cube([X, Y, Z]);
        translate([(X-X2)/2, (Y-Y2)/2, Z]) cube([X2, Y2, Z2-10]);
        hull()
        {
            translate([(X-X2)/2+2/2, (Y-Y2)/2+2/2, Z+Z2]) cube([X2-2, Y2-2, 0.1]);
            translate([(X-X2)/2, (Y-Y2)/2, Z+Z2-10]) cube([X2, Y2, 0.1]);
        }
    }
    translate([(X-X2)/2+th, (Y-Y2)/2+th, Z]) cube([X2-th*2, Y2-th*2, Z2-10]);

    hull()
    {
        translate([(X-X2)/2+2/2+th, (Y-Y2)/2+2/2+th, Z+Z2]) cube([X2-2-th*2, Y2-2-th*2, 0.1]);
        translate([(X-X2)/2+th, (Y-Y2)/2+th, Z+Z2-10]) cube([X2-th*2, Y2-th*2, 0.1]);
    }


    translate([0, sqrt(1/2), 0]) rotate([90+45, 0, 0]) cube([X, 1, 1]);
    translate([0, Y+sqrt(1/2), 0]) rotate([90+45, 0, 0]) cube([X, 1, 1]);
    translate([sqrt(1/2), 0, 0]) rotate([0, -90-45, 0]) cube([1, Y, 1]);
    translate([X+sqrt(1/2), 0, 0]) rotate([0, -90-45, 0]) cube([1, Y, 1]);

}
}

