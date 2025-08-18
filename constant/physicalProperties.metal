/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  10
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       dictionary;
    location    "constant";
    object      physicalProperties.metal;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

viscosityModel  constant;
nu              5e-07;
rho             8000;
elec_resistivity	1.0e-6;

Tsolidus 1658;
Tliquidus 1723;
LatentHeat 2.7e5;
beta    5.0e-6;

cpModel table;
kappaModel table;
//poly_cp   (244.8 9.587e-1 -3.77e-4 6.5e-8 -4.14e-12 0 0 0);
//poly_cp   (520 0.075 0 0 0 0 0 0);
// Specific heat table [J/(kg*K)]
table_cp
(
    (300    477.0)
    (400    515.0)
    (600    557.0)
    (800    582.0)
    (1000   611.0)
    (1200   640.0)
    (1500   682.0)
    (5000   682.0)
);
poly_kappa   (10 0.015 0 0 0 0 0 0);

// Thermal conductivity table [W/(m*K)]
table_kappa
(
    (300    14.9)
    (400    16.6)
    (600    19.8)
    (800    22.6)
    (1000   25.4)
    (1200   28.0)
    (1500   31.7)
    (5000   31.7)
);
    


// ************************************************************************* //
