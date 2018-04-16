size(3.0cm);
import geometry;

point pA = (0, 0), pB = (3, 3), pC = (4, 0);
point pP = (2.5, 1.5);
line
    la = parallel(pP, (vector) (pB - pC)),
    lb = parallel(pP, (vector) (pC - pA)),
    lc = parallel(pP, (vector) (pA - pB));
point
    pA1 = intersectionpoint(lb, line(pB, pC)),
    pA2 = intersectionpoint(lc, line(pB, pC)),
    pB1 = intersectionpoint(lc, line(pC, pA)),
    pB2 = intersectionpoint(la, line(pC, pA)),
    pC1 = intersectionpoint(la, line(pA, pB)),
    pC2 = intersectionpoint(lb, line(pA, pB));

draw(pA--pB--pC--cycle, linewidth(1));
draw(pA1--pC2 ^^ pB1--pA2 ^^ pC1--pB2);

dot("$A$", pA, SW);
dot("$B$", pB, N);
dot("$C$", pC, SE);
dot("$P$", pP, 0.5S+1.5SSW);
dot("$A_{1}$", pA1, ENE);
dot("$A_{2}$", pA2, ENE);
dot("$B_{1}$", pB1, S);
dot("$B_{2}$", pB2, S);
dot("$C_{1}$", pC1, NW);
dot("$C_{2}$", pC2, NW);

