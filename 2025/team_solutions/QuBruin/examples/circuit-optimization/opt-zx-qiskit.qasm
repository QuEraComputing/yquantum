OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
cx q[0],q[1];
cx q[1],q[0];
cx q[0],q[1];
cx q[2],q[0];
cx q[0],q[2];
cx q[2],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
cx q[2],q[0];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,-pi) q[3];
cx q[2],q[3];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,1.1999999999999993,0) q[1];
u3(pi/2,0,pi) q[2];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,0.1999999999999913) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(0,pi/2,-0.37079632679489727) q[0];
cx q[2],q[0];
cx q[0],q[1];
u3(0.19999999999999185,-pi/2,2.7707963267948923) q[2];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi,-1.3925770243767688,1.7490156292130248) q[3];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
u3(0,pi/2,-0.37079632679489727) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,-2.9415926535898014) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
cx q[3],q[1];
cx q[2],q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(0.19999999999999185,-pi/2,2.7707963267948923) q[2];
u3(pi/2,0,-1.9415926535897938) q[3];
cx q[3],q[0];
u3(pi/2,1.1999999999999993,-pi) q[0];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
cx q[2],q[0];
u3(0,2.770796326794896,-pi/2) q[0];
u3(pi/2,0,-2.9415926535898014) q[3];
cx q[3],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
cx q[3],q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-1.941592653589797) q[2];
cx q[2],q[1];
cx q[2],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0.19999999999999174,-1.9415926535897938) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-1.9415926535897938) q[2];
cx q[2],q[1];
u3(pi/2,1.1999999999999993,-pi) q[1];
cx q[3],q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
cx q[2],q[0];
u3(pi/2,1.1999999999999957,-pi) q[0];
u3(pi/2,0,pi) q[2];
u3(1.384553936728362,1.1931493320932116,-3.068270778665468) q[3];
cx q[3],q[0];
u3(0.19999999999999185,-pi/2,pi/2) q[0];
cx q[0],q[1];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
u3(pi/2,1.1999999999999993,-pi) q[1];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
cx q[0],q[1];
u3(pi/2,0,-1.9415926535897938) q[0];
u3(pi/2,0,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,1.1999999999999957,-pi) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,2.770796326794896) q[2];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(0.19999999999999185,-pi/2,pi/2) q[0];
cx q[0],q[1];
u3(0,pi/2,-0.37079632679489727) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-1.9415926535897938) q[2];
cx q[3],q[0];
u3(pi/2,0,-pi) q[0];
cx q[2],q[0];
u3(pi/2,0,-1.941592653589797) q[3];
cx q[3],q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,1.1999999999999993,-pi) q[1];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,-2.9415926535898014) q[3];
cx q[3],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
cx q[3],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(1.1999999999999993,-pi/2,pi/2) q[2];
cx q[2],q[1];
u3(1.199999999999996,-1.3707963267949048,pi/2) q[1];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
u3(1.1999999999999993,-pi/2,pi/2) q[3];
cx q[3],q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(1.1999999999999993,-pi/2,pi/2) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(0,pi/2,-1.3707963267949048) q[1];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[2];
u3(1.1999999999999993,-pi/2,pi/2) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,1.1999999999999957,-pi) q[1];
cx q[2],q[0];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-1.9415926535897938) q[2];
cx q[2],q[0];
u3(pi/2,1.1999999999999993,-pi) q[0];
u3(pi/2,0,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
cx q[2],q[0];
u3(pi/2,0,-pi) q[0];
u3(1.1999999999999993,-pi/2,pi/2) q[3];
cx q[3],q[0];
u3(pi/2,1.1999999999999993,-pi) q[0];
cx q[2],q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,2.770796326794896) q[2];
cx q[2],q[0];
u3(0.19999999999999185,-pi/2,pi/2) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,1.1999999999999957,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,pi) q[2];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,1.1999999999999993,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-1.941592653589797) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(1.1999999999999993,-1.3707963267949048,pi/2) q[1];
cx q[2],q[1];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[3],q[0];
u3(1.1999999999999993,-pi/2,pi/2) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
u3(1.1999999999999993,-pi/2,pi/2) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,1.1999999999999993,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
cx q[3],q[1];
cx q[2],q[1];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
u3(0,pi/2,-0.37079632679489727) q[3];
cx q[2],q[3];
u3(pi/2,0,-1.941592653589797) q[2];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,1.1999999999999993,-pi) q[1];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(0,pi/2,-0.37079632679489727) q[0];
cx q[3],q[0];
cx q[0],q[1];
u3(0,pi/2,-0.3707963267949004) q[3];
cx q[2],q[3];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,-1.9415926535897938) q[2];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,-2.9415926535898014) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
cx q[2],q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-1.941592653589797) q[2];
cx q[2],q[0];
u3(1.1999999999999993,-1.3707963267949048,pi/2) q[0];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[3],q[1];
cx q[0],q[1];
u3(0,pi/2,-0.37079632679489727) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0,-pi) q[0];
cx q[2],q[1];
u3(pi/2,0,pi) q[3];
cx q[3],q[0];
u3(pi/2,0,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-1.941592653589797) q[2];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[1];
cx q[3],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(1.1999999999999993,-pi/2,pi/2) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(1.1999999999999993,-1.3707963267949048,pi/2) q[0];
cx q[2],q[1];
cx q[2],q[0];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[0];
u3(pi/2,0,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
cx q[2],q[0];
u3(0.19999999999999185,-pi/2,pi/2) q[0];
u3(pi/2,0,pi) q[2];
cx q[3],q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-1.941592653589797) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,1.1999999999999993,-pi) q[0];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-1.9415926535897938) q[2];
cx q[2],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[0];
u3(0.19999999999999185,-pi/2,pi/2) q[0];
cx q[0],q[1];
u3(0,pi/2,-0.37079632679489727) q[0];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0,-1.941592653589794) q[1];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
cx q[2],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(0.19999999999999185,-pi/2,2.7707963267948923) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,-1.9415926535897938) q[2];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
cx q[2],q[1];
cx q[2],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,1.1999999999999993,-pi) q[1];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,-2.941592653589802) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(0,pi/2,-0.37079632679489727) q[0];
cx q[2],q[0];
u3(0.19999999999999185,-pi/2,2.770796326794896) q[2];
cx q[3],q[0];
u3(pi/2,0,-pi) q[0];
u3(pi/2,0,-1.941592653589797) q[3];
cx q[3],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
cx q[2],q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-1.9415926535897938) q[2];
cx q[2],q[0];
u3(1.199999999999996,-1.3707963267949048,pi/2) q[0];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[2],q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(0,pi/2,-0.37079632679489727) q[1];
u3(pi/2,0,-1.9415926535897938) q[3];
cx q[3],q[0];
u3(pi/2,0,-2.941592653589802) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(1.199999999999996,-1.3707963267949048,pi/2) q[0];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(1.1999999999999993,-pi/2,pi/2) q[2];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(0,pi/2,-0.37079632679489727) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-2.9415926535898014) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-1.9415926535897938) q[2];
cx q[2],q[1];
u3(pi/2,1.1999999999999993,-pi) q[1];
cx q[2],q[0];
u3(1.1999999999999962,-pi/2,pi/2) q[0];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,-2.9415926535898014) q[0];
u3(pi/2,0,pi) q[2];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
u3(1.1999999999999993,-pi/2,pi/2) q[3];
cx q[3],q[1];
u3(pi/2,0,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(1.1999999999999993,-pi/2,pi/2) q[2];
cx q[2],q[1];
u3(pi/2,1.1999999999999957,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
cx q[2],q[0];
u3(1.384553936728362,1.1931493320932116,-3.068270778665468) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,pi) q[2];
u3(pi/2,1.1999999999999993,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
cx q[2],q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0.19999999999999174,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[3],q[0];
u3(pi/2,1.1999999999999993,-pi) q[0];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(0.19999999999999185,-pi/2,2.770796326794896) q[2];
u3(pi/2,0,-1.9415926535897938) q[3];
cx q[3],q[1];
u3(pi/2,1.1999999999999957,-pi) q[1];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
u3(pi/2,0,-2.9415926535898014) q[3];
cx q[3],q[0];
cx q[2],q[0];
u3(0,pi/2,-0.37079632679489727) q[0];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
u3(pi/2,0,pi) q[3];
cx q[2],q[3];
u3(pi/2,0,pi) q[2];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
u3(pi/2,0,-2.9415926535898014) q[2];
cx q[2],q[1];
u3(pi/2,0,-pi) q[1];
cx q[3],q[0];
cx q[2],q[0];
u3(pi/2,0,pi) q[0];
cx q[0],q[1];
u3(pi/2,1.1999999999999993,-pi) q[1];
u3(0,pi/2,-0.37079632679489727) q[3];
cx q[2],q[3];
u3(pi/2,0,-1.941592653589797) q[2];
u3(pi/2,0.19999999999999174,-pi) q[3];
cx q[2],q[3];
u3(pi/2,0,-2.9415926535898014) q[2];
u3(pi/2,0,pi) q[3];
cx q[3],q[1];
cx q[2],q[1];
u3(pi/2,0.19999999999999174,-pi) q[1];
cx q[0],q[1];
u3(pi/2,0,pi) q[0];
u3(pi/2,0,-pi) q[1];
cx q[2],q[3];
cx q[2],q[0];
u3(pi/2,-pi,-1.9415926535897938) q[0];
u3(pi/2,-pi,-1.9415926535897936) q[2];
u3(0.19999999999999185,-pi/2,pi/2) q[3];
cx q[3],q[1];
u3(pi/2,-pi,-1.9415926535897938) q[1];
u3(pi/2,-pi,-1.941592653589797) q[3];