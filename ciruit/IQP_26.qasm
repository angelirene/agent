OPENQASM 2.0;
include "qelib1.inc";
qreg q[26];
u2(0,pi) q[0];
p(5*pi/2) q[0];
u2(0,pi) q[1];
cx q[0],q[1];
p(-5*pi/2) q[1];
cx q[0],q[1];
p(pi/4) q[0];
p(5*pi/2) q[1];
p(3*pi/4) q[1];
u2(0,pi) q[2];
cx q[0],q[2];
p(-pi/4) q[2];
cx q[0],q[2];
p(9*pi/4) q[0];
p(pi/4) q[2];
cx q[1],q[2];
p(-3*pi/4) q[2];
cx q[1],q[2];
p(7*pi/4) q[1];
p(3*pi/4) q[2];
p(3*pi/2) q[2];
u2(0,pi) q[3];
cx q[0],q[3];
p(-9*pi/4) q[3];
cx q[0],q[3];
p(11*pi/4) q[0];
p(9*pi/4) q[3];
cx q[1],q[3];
p(-7*pi/4) q[3];
cx q[1],q[3];
p(11*pi/4) q[1];
p(7*pi/4) q[3];
p(11*pi/4) q[3];
u2(0,pi) q[4];
cx q[0],q[4];
p(-11*pi/4) q[4];
cx q[0],q[4];
p(3*pi/4) q[0];
p(11*pi/4) q[4];
cx q[1],q[4];
p(-11*pi/4) q[4];
cx q[1],q[4];
p(3*pi/2) q[1];
p(11*pi/4) q[4];
cx q[2],q[4];
p(-3*pi/2) q[4];
cx q[2],q[4];
p(11*pi/4) q[2];
p(3*pi/2) q[4];
cx q[3],q[4];
p(-11*pi/4) q[4];
cx q[3],q[4];
p(3*pi/2) q[3];
p(11*pi/4) q[4];
p(3*pi/2) q[4];
u2(0,pi) q[5];
cx q[0],q[5];
p(-3*pi/4) q[5];
cx q[0],q[5];
p(7*pi/4) q[0];
p(3*pi/4) q[5];
cx q[2],q[5];
p(-11*pi/4) q[5];
cx q[2],q[5];
p(3*pi/2) q[2];
p(11*pi/4) q[5];
cx q[3],q[5];
p(-3*pi/2) q[5];
cx q[3],q[5];
p(5*pi/4) q[3];
p(3*pi/2) q[5];
cx q[4],q[5];
p(-3*pi/2) q[5];
cx q[4],q[5];
p(5*pi/4) q[4];
p(3*pi/2) q[5];
p(5*pi/4) q[5];
u2(0,pi) q[6];
cx q[0],q[6];
p(-7*pi/4) q[6];
cx q[0],q[6];
p(11*pi/4) q[0];
p(7*pi/4) q[6];
cx q[1],q[6];
p(-3*pi/2) q[6];
cx q[1],q[6];
p(11*pi/4) q[1];
p(3*pi/2) q[6];
cx q[2],q[6];
p(-3*pi/2) q[6];
cx q[2],q[6];
p(5*pi/4) q[2];
p(3*pi/2) q[6];
cx q[3],q[6];
p(-5*pi/4) q[6];
cx q[3],q[6];
p(11*pi/4) q[3];
p(5*pi/4) q[6];
cx q[4],q[6];
p(-5*pi/4) q[6];
cx q[4],q[6];
p(11*pi/4) q[4];
p(5*pi/4) q[6];
cx q[5],q[6];
p(-5*pi/4) q[6];
cx q[5],q[6];
p(5*pi/4) q[5];
p(5*pi/4) q[6];
p(11*pi/4) q[6];
u2(0,pi) q[7];
cx q[0],q[7];
p(-11*pi/4) q[7];
cx q[0],q[7];
p(3*pi/2) q[0];
p(11*pi/4) q[7];
cx q[1],q[7];
p(-11*pi/4) q[7];
cx q[1],q[7];
p(3*pi/2) q[1];
p(11*pi/4) q[7];
cx q[2],q[7];
p(-5*pi/4) q[7];
cx q[2],q[7];
p(11*pi/4) q[2];
p(5*pi/4) q[7];
cx q[3],q[7];
p(-11*pi/4) q[7];
cx q[3],q[7];
p(7*pi/4) q[3];
p(11*pi/4) q[7];
cx q[4],q[7];
p(-11*pi/4) q[7];
cx q[4],q[7];
p(7*pi/4) q[4];
p(11*pi/4) q[7];
cx q[5],q[7];
p(-5*pi/4) q[7];
cx q[5],q[7];
p(11*pi/4) q[5];
p(5*pi/4) q[7];
cx q[6],q[7];
p(-11*pi/4) q[7];
cx q[6],q[7];
p(5*pi/4) q[6];
p(11*pi/4) q[7];
p(7*pi/4) q[7];
u2(0,pi) q[8];
cx q[1],q[8];
p(-3*pi/2) q[8];
cx q[1],q[8];
p(5*pi/4) q[1];
p(3*pi/2) q[8];
cx q[2],q[8];
p(-11*pi/4) q[8];
cx q[2],q[8];
p(7*pi/4) q[2];
p(11*pi/4) q[8];
cx q[3],q[8];
p(-7*pi/4) q[8];
cx q[3],q[8];
p(3*pi/4) q[3];
p(7*pi/4) q[8];
cx q[4],q[8];
p(-7*pi/4) q[8];
cx q[4],q[8];
p(3*pi/4) q[4];
p(7*pi/4) q[8];
cx q[5],q[8];
p(-11*pi/4) q[8];
cx q[5],q[8];
p(7*pi/4) q[5];
p(11*pi/4) q[8];
cx q[6],q[8];
p(-5*pi/4) q[8];
cx q[6],q[8];
p(5*pi/4) q[6];
p(5*pi/4) q[8];
p(pi/2) q[8];
u2(0,pi) q[9];
cx q[0],q[9];
p(-3*pi/2) q[9];
cx q[0],q[9];
p(11*pi/4) q[0];
p(3*pi/2) q[9];
cx q[1],q[9];
p(-5*pi/4) q[9];
cx q[1],q[9];
p(11*pi/4) q[1];
p(5*pi/4) q[9];
cx q[2],q[9];
p(-7*pi/4) q[9];
cx q[2],q[9];
p(3*pi/4) q[2];
p(7*pi/4) q[9];
cx q[3],q[9];
p(-3*pi/4) q[9];
cx q[3],q[9];
p(11*pi/4) q[3];
p(3*pi/4) q[9];
cx q[4],q[9];
p(-3*pi/4) q[9];
cx q[4],q[9];
p(11*pi/4) q[4];
p(3*pi/4) q[9];
cx q[5],q[9];
p(-7*pi/4) q[9];
cx q[5],q[9];
p(3*pi/4) q[5];
p(7*pi/4) q[9];
cx q[6],q[9];
p(-5*pi/4) q[9];
cx q[6],q[9];
p(11*pi/4) q[6];
p(5*pi/4) q[9];
cx q[7],q[9];
p(-7*pi/4) q[9];
cx q[7],q[9];
p(11*pi/4) q[7];
p(7*pi/4) q[9];
cx q[8],q[9];
p(-pi/2) q[9];
cx q[8],q[9];
p(11*pi/4) q[8];
p(pi/2) q[9];
p(5*pi/2) q[9];
u2(0,pi) q[10];
cx q[0],q[10];
p(-11*pi/4) q[10];
cx q[0],q[10];
p(3*pi/2) q[0];
p(11*pi/4) q[10];
cx q[1],q[10];
p(-11*pi/4) q[10];
cx q[1],q[10];
p(7*pi/4) q[1];
p(11*pi/4) q[10];
cx q[2],q[10];
p(-3*pi/4) q[10];
cx q[2],q[10];
p(3*pi/4) q[10];
p(11*pi/4) q[2];
cx q[3],q[10];
p(-11*pi/4) q[10];
cx q[3],q[10];
p(11*pi/4) q[10];
p(pi/2) q[3];
cx q[4],q[10];
p(-11*pi/4) q[10];
cx q[4],q[10];
p(11*pi/4) q[10];
p(pi/2) q[4];
cx q[5],q[10];
p(-3*pi/4) q[10];
cx q[5],q[10];
p(3*pi/4) q[10];
p(11*pi/4) q[5];
cx q[6],q[10];
p(-11*pi/4) q[10];
cx q[6],q[10];
p(11*pi/4) q[10];
p(7*pi/4) q[6];
cx q[7],q[10];
p(-11*pi/4) q[10];
cx q[7],q[10];
p(11*pi/4) q[10];
p(5*pi/4) q[7];
cx q[9],q[10];
p(-5*pi/2) q[10];
cx q[9],q[10];
p(5*pi/2) q[10];
p(pi/2) q[10];
p(9*pi/4) q[9];
u2(0,pi) q[11];
cx q[0],q[11];
p(-3*pi/2) q[11];
cx q[0],q[11];
p(5*pi/4) q[0];
p(3*pi/2) q[11];
cx q[1],q[11];
p(-7*pi/4) q[11];
cx q[1],q[11];
p(3*pi/4) q[1];
p(7*pi/4) q[11];
cx q[2],q[11];
p(-11*pi/4) q[11];
cx q[2],q[11];
p(11*pi/4) q[11];
p(pi/2) q[2];
cx q[5],q[11];
p(-11*pi/4) q[11];
cx q[5],q[11];
p(11*pi/4) q[11];
p(pi/2) q[5];
cx q[6],q[11];
p(-7*pi/4) q[11];
cx q[6],q[11];
p(7*pi/4) q[11];
p(11*pi/4) q[6];
cx q[7],q[11];
p(-5*pi/4) q[11];
cx q[7],q[11];
p(5*pi/4) q[11];
p(5*pi/4) q[7];
cx q[8],q[11];
p(-11*pi/4) q[11];
cx q[8],q[11];
p(11*pi/4) q[11];
cx q[10],q[11];
p(-pi/2) q[11];
cx q[10],q[11];
p(11*pi/4) q[10];
p(pi/2) q[11];
p(5*pi/4) q[11];
p(7*pi/4) q[8];
u2(0,pi) q[12];
cx q[0],q[12];
p(-5*pi/4) q[12];
cx q[0],q[12];
p(11*pi/4) q[0];
p(5*pi/4) q[12];
cx q[1],q[12];
p(-3*pi/4) q[12];
cx q[1],q[12];
p(11*pi/4) q[1];
p(3*pi/4) q[12];
cx q[3],q[12];
p(-pi/2) q[12];
cx q[3],q[12];
p(pi/2) q[12];
p(11*pi/4) q[3];
cx q[4],q[12];
p(-pi/2) q[12];
cx q[4],q[12];
p(pi/2) q[12];
p(11*pi/4) q[4];
cx q[7],q[12];
p(-5*pi/4) q[12];
cx q[7],q[12];
p(5*pi/4) q[12];
p(11*pi/4) q[7];
cx q[9],q[12];
p(-9*pi/4) q[12];
cx q[9],q[12];
p(9*pi/4) q[12];
cx q[10],q[12];
p(-11*pi/4) q[12];
cx q[10],q[12];
p(9*pi/4) q[10];
p(11*pi/4) q[12];
cx q[11],q[12];
p(-5*pi/4) q[12];
cx q[11],q[12];
p(11*pi/4) q[11];
p(5*pi/4) q[12];
p(pi/2) q[12];
p(11*pi/4) q[9];
u2(0,pi) q[13];
cx q[0],q[13];
p(-11*pi/4) q[13];
cx q[0],q[13];
p(7*pi/4) q[0];
p(11*pi/4) q[13];
cx q[1],q[13];
p(-11*pi/4) q[13];
cx q[1],q[13];
p(pi/4) q[1];
p(11*pi/4) q[13];
cx q[2],q[13];
p(-pi/2) q[13];
cx q[2],q[13];
p(pi/2) q[13];
p(11*pi/4) q[2];
cx q[3],q[13];
p(-11*pi/4) q[13];
cx q[3],q[13];
p(11*pi/4) q[13];
p(9*pi/4) q[3];
cx q[4],q[13];
p(-11*pi/4) q[13];
cx q[4],q[13];
p(11*pi/4) q[13];
p(9*pi/4) q[4];
cx q[5],q[13];
p(-pi/2) q[13];
cx q[5],q[13];
p(pi/2) q[13];
p(11*pi/4) q[5];
cx q[6],q[13];
p(-11*pi/4) q[13];
cx q[6],q[13];
p(11*pi/4) q[13];
p(pi/2) q[6];
cx q[7],q[13];
p(-11*pi/4) q[13];
cx q[7],q[13];
p(11*pi/4) q[13];
p(7*pi/4) q[7];
cx q[8],q[13];
p(-7*pi/4) q[13];
cx q[8],q[13];
p(7*pi/4) q[13];
p(11*pi/4) q[8];
cx q[9],q[13];
p(-11*pi/4) q[13];
cx q[9],q[13];
p(11*pi/4) q[13];
cx q[10],q[13];
p(-9*pi/4) q[13];
cx q[10],q[13];
p(pi/4) q[10];
p(9*pi/4) q[13];
cx q[11],q[13];
p(-11*pi/4) q[13];
cx q[11],q[13];
p(3*pi/2) q[11];
p(11*pi/4) q[13];
cx q[12],q[13];
p(-pi/2) q[13];
cx q[12],q[13];
p(11*pi/4) q[12];
p(pi/2) q[13];
p(11*pi/4) q[13];
p(pi/2) q[9];
u2(0,pi) q[14];
cx q[0],q[14];
p(-7*pi/4) q[14];
cx q[0],q[14];
p(3*pi/4) q[0];
p(7*pi/4) q[14];
cx q[2],q[14];
p(-11*pi/4) q[14];
cx q[2],q[14];
p(11*pi/4) q[14];
p(9*pi/4) q[2];
cx q[3],q[14];
p(-9*pi/4) q[14];
cx q[3],q[14];
p(9*pi/4) q[14];
p(5*pi/2) q[3];
cx q[4],q[14];
p(-9*pi/4) q[14];
cx q[4],q[14];
p(9*pi/4) q[14];
p(5*pi/2) q[4];
cx q[5],q[14];
p(-11*pi/4) q[14];
cx q[5],q[14];
p(11*pi/4) q[14];
p(9*pi/4) q[5];
cx q[7],q[14];
p(-7*pi/4) q[14];
cx q[7],q[14];
p(7*pi/4) q[14];
p(11*pi/4) q[7];
cx q[8],q[14];
p(-11*pi/4) q[14];
cx q[8],q[14];
p(11*pi/4) q[14];
p(5*pi/4) q[8];
cx q[9],q[14];
p(-pi/2) q[14];
cx q[9],q[14];
p(pi/2) q[14];
cx q[10],q[14];
p(-pi/4) q[14];
cx q[10],q[14];
p(5*pi/2) q[10];
p(pi/4) q[14];
cx q[11],q[14];
p(-3*pi/2) q[14];
cx q[11],q[14];
p(11*pi/4) q[11];
p(3*pi/2) q[14];
cx q[13],q[14];
p(-11*pi/4) q[14];
cx q[13],q[14];
p(9*pi/4) q[13];
p(11*pi/4) q[14];
p(11*pi/4) q[14];
p(11*pi/4) q[9];
u2(0,pi) q[15];
cx q[0],q[15];
p(-3*pi/4) q[15];
cx q[0],q[15];
p(11*pi/4) q[0];
p(3*pi/4) q[15];
cx q[1],q[15];
p(-pi/4) q[15];
cx q[1],q[15];
p(5*pi/2) q[1];
p(pi/4) q[15];
cx q[2],q[15];
p(-9*pi/4) q[15];
cx q[2],q[15];
p(9*pi/4) q[15];
p(5*pi/2) q[2];
cx q[5],q[15];
p(-9*pi/4) q[15];
cx q[5],q[15];
p(9*pi/4) q[15];
p(5*pi/2) q[5];
cx q[6],q[15];
p(-pi/2) q[15];
cx q[6],q[15];
p(pi/2) q[15];
p(11*pi/4) q[6];
cx q[8],q[15];
p(-5*pi/4) q[15];
cx q[8],q[15];
p(5*pi/4) q[15];
cx q[10],q[15];
p(-5*pi/2) q[15];
cx q[10],q[15];
p(5*pi/2) q[10];
p(5*pi/2) q[15];
cx q[12],q[15];
p(-11*pi/4) q[15];
cx q[12],q[15];
p(3*pi/4) q[12];
p(11*pi/4) q[15];
cx q[13],q[15];
p(-9*pi/4) q[15];
cx q[13],q[15];
p(pi/4) q[13];
p(9*pi/4) q[15];
cx q[14],q[15];
p(-11*pi/4) q[15];
cx q[14],q[15];
p(5*pi/4) q[14];
p(11*pi/4) q[15];
p(5*pi/2) q[15];
p(5*pi/4) q[8];
u2(0,pi) q[16];
cx q[0],q[16];
p(-11*pi/4) q[16];
cx q[0],q[16];
p(9*pi/4) q[0];
p(11*pi/4) q[16];
cx q[1],q[16];
p(-5*pi/2) q[16];
cx q[1],q[16];
p(9*pi/4) q[1];
p(5*pi/2) q[16];
cx q[3],q[16];
p(-5*pi/2) q[16];
cx q[3],q[16];
p(5*pi/2) q[16];
p(5*pi/2) q[3];
cx q[4],q[16];
p(-5*pi/2) q[16];
cx q[4],q[16];
p(5*pi/2) q[16];
p(5*pi/2) q[4];
cx q[6],q[16];
p(-11*pi/4) q[16];
cx q[6],q[16];
p(11*pi/4) q[16];
p(9*pi/4) q[6];
cx q[7],q[16];
p(-11*pi/4) q[16];
cx q[7],q[16];
p(11*pi/4) q[16];
p(pi/2) q[7];
cx q[8],q[16];
p(-5*pi/4) q[16];
cx q[8],q[16];
p(5*pi/4) q[16];
p(11*pi/4) q[8];
cx q[9],q[16];
p(-11*pi/4) q[16];
cx q[9],q[16];
p(11*pi/4) q[16];
cx q[10],q[16];
p(-5*pi/2) q[16];
cx q[10],q[16];
p(9*pi/4) q[10];
p(5*pi/2) q[16];
cx q[11],q[16];
p(-11*pi/4) q[16];
cx q[11],q[16];
p(pi/2) q[11];
p(11*pi/4) q[16];
cx q[12],q[16];
p(-3*pi/4) q[16];
cx q[12],q[16];
p(7*pi/4) q[12];
p(3*pi/4) q[16];
cx q[13],q[16];
p(-pi/4) q[16];
cx q[13],q[16];
p(5*pi/2) q[13];
p(pi/4) q[16];
cx q[14],q[16];
p(-5*pi/4) q[16];
cx q[14],q[16];
p(3*pi/2) q[14];
p(5*pi/4) q[16];
cx q[15],q[16];
p(-5*pi/2) q[16];
cx q[15],q[16];
p(5*pi/2) q[15];
p(5*pi/2) q[16];
p(5*pi/4) q[16];
p(7*pi/4) q[9];
u2(0,pi) q[17];
cx q[0],q[17];
p(-9*pi/4) q[17];
cx q[0],q[17];
p(pi/4) q[0];
p(9*pi/4) q[17];
cx q[1],q[17];
p(-9*pi/4) q[17];
cx q[1],q[17];
p(5*pi/2) q[1];
p(9*pi/4) q[17];
cx q[2],q[17];
p(-5*pi/2) q[17];
cx q[2],q[17];
p(5*pi/2) q[17];
p(5*pi/2) q[2];
cx q[3],q[17];
p(-5*pi/2) q[17];
cx q[3],q[17];
p(5*pi/2) q[17];
p(pi/4) q[3];
cx q[4],q[17];
p(-5*pi/2) q[17];
cx q[4],q[17];
p(5*pi/2) q[17];
p(pi/4) q[4];
cx q[5],q[17];
p(-5*pi/2) q[17];
cx q[5],q[17];
p(5*pi/2) q[17];
p(5*pi/2) q[5];
cx q[6],q[17];
p(-9*pi/4) q[17];
cx q[6],q[17];
p(9*pi/4) q[17];
p(5*pi/2) q[6];
cx q[8],q[17];
p(-11*pi/4) q[17];
cx q[8],q[17];
p(11*pi/4) q[17];
cx q[12],q[17];
p(-7*pi/4) q[17];
cx q[12],q[17];
p(11*pi/4) q[12];
p(7*pi/4) q[17];
cx q[13],q[17];
p(-5*pi/2) q[17];
cx q[13],q[17];
p(5*pi/2) q[13];
p(5*pi/2) q[17];
cx q[14],q[17];
p(-3*pi/2) q[17];
cx q[14],q[17];
p(11*pi/4) q[14];
p(3*pi/2) q[17];
cx q[15],q[17];
p(-5*pi/2) q[17];
cx q[15],q[17];
p(9*pi/4) q[15];
p(5*pi/2) q[17];
cx q[16],q[17];
p(-5*pi/4) q[17];
cx q[16],q[17];
p(3*pi/2) q[16];
p(5*pi/4) q[17];
p(pi/4) q[17];
p(7*pi/4) q[8];
u2(0,pi) q[18];
cx q[0],q[18];
p(-pi/4) q[18];
cx q[0],q[18];
p(5*pi/2) q[0];
p(pi/4) q[18];
cx q[2],q[18];
p(-5*pi/2) q[18];
cx q[2],q[18];
p(5*pi/2) q[18];
p(pi/4) q[2];
cx q[3],q[18];
p(-pi/4) q[18];
cx q[3],q[18];
p(pi/4) q[18];
p(9*pi/4) q[3];
cx q[4],q[18];
p(-pi/4) q[18];
cx q[4],q[18];
p(pi/4) q[18];
p(9*pi/4) q[4];
cx q[5],q[18];
p(-5*pi/2) q[18];
cx q[5],q[18];
p(5*pi/2) q[18];
p(pi/4) q[5];
cx q[7],q[18];
p(-pi/2) q[18];
cx q[7],q[18];
p(pi/2) q[18];
p(11*pi/4) q[7];
cx q[8],q[18];
p(-7*pi/4) q[18];
cx q[8],q[18];
p(7*pi/4) q[18];
p(11*pi/4) q[8];
cx q[9],q[18];
p(-7*pi/4) q[18];
cx q[9],q[18];
p(7*pi/4) q[18];
cx q[10],q[18];
p(-9*pi/4) q[18];
cx q[10],q[18];
p(11*pi/4) q[10];
p(9*pi/4) q[18];
cx q[11],q[18];
p(-pi/2) q[18];
cx q[11],q[18];
p(11*pi/4) q[11];
p(pi/2) q[18];
cx q[12],q[18];
p(-11*pi/4) q[18];
cx q[12],q[18];
p(5*pi/4) q[12];
p(11*pi/4) q[18];
cx q[13],q[18];
p(-5*pi/2) q[18];
cx q[13],q[18];
p(9*pi/4) q[13];
p(5*pi/2) q[18];
cx q[14],q[18];
p(-11*pi/4) q[18];
cx q[14],q[18];
p(3*pi/2) q[14];
p(11*pi/4) q[18];
cx q[16],q[18];
p(-3*pi/2) q[18];
cx q[16],q[18];
p(11*pi/4) q[16];
p(3*pi/2) q[18];
cx q[17],q[18];
p(-pi/4) q[18];
cx q[17],q[18];
p(5*pi/2) q[17];
p(pi/4) q[18];
p(3*pi/4) q[18];
p(11*pi/4) q[9];
u2(0,pi) q[19];
cx q[0],q[19];
p(-5*pi/2) q[19];
cx q[0],q[19];
p(5*pi/2) q[0];
p(5*pi/2) q[19];
cx q[1],q[19];
p(-5*pi/2) q[19];
cx q[1],q[19];
p(5*pi/2) q[1];
p(5*pi/2) q[19];
cx q[2],q[19];
p(-pi/4) q[19];
cx q[2],q[19];
p(pi/4) q[19];
p(9*pi/4) q[2];
cx q[3],q[19];
p(-9*pi/4) q[19];
cx q[3],q[19];
p(9*pi/4) q[19];
p(11*pi/4) q[3];
cx q[4],q[19];
p(-9*pi/4) q[19];
cx q[4],q[19];
p(9*pi/4) q[19];
p(11*pi/4) q[4];
cx q[5],q[19];
p(-pi/4) q[19];
cx q[5],q[19];
p(pi/4) q[19];
p(9*pi/4) q[5];
cx q[6],q[19];
p(-5*pi/2) q[19];
cx q[6],q[19];
p(5*pi/2) q[19];
p(5*pi/2) q[6];
cx q[7],q[19];
p(-11*pi/4) q[19];
cx q[7],q[19];
p(11*pi/4) q[19];
p(9*pi/4) q[7];
cx q[9],q[19];
p(-11*pi/4) q[19];
cx q[9],q[19];
p(11*pi/4) q[19];
cx q[10],q[19];
p(-11*pi/4) q[19];
cx q[10],q[19];
p(pi/2) q[10];
p(11*pi/4) q[19];
cx q[11],q[19];
p(-11*pi/4) q[19];
cx q[11],q[19];
p(9*pi/4) q[11];
p(11*pi/4) q[19];
cx q[12],q[19];
p(-5*pi/4) q[19];
cx q[12],q[19];
p(3*pi/2) q[12];
p(5*pi/4) q[19];
cx q[14],q[19];
p(-3*pi/2) q[19];
cx q[14],q[19];
p(11*pi/4) q[14];
p(3*pi/2) q[19];
cx q[15],q[19];
p(-9*pi/4) q[19];
cx q[15],q[19];
p(11*pi/4) q[15];
p(9*pi/4) q[19];
cx q[16],q[19];
p(-11*pi/4) q[19];
cx q[16],q[19];
p(3*pi/2) q[16];
p(11*pi/4) q[19];
cx q[17],q[19];
p(-5*pi/2) q[19];
cx q[17],q[19];
p(5*pi/2) q[17];
p(5*pi/2) q[19];
cx q[18],q[19];
p(-3*pi/4) q[19];
cx q[18],q[19];
p(7*pi/4) q[18];
p(3*pi/4) q[19];
p(11*pi/4) q[19];
p(5*pi/4) q[9];
u2(0,pi) q[20];
cx q[0],q[20];
p(-5*pi/2) q[20];
cx q[0],q[20];
p(5*pi/2) q[0];
p(5*pi/2) q[20];
cx q[1],q[20];
p(-5*pi/2) q[20];
cx q[1],q[20];
p(pi/4) q[1];
p(5*pi/2) q[20];
cx q[2],q[20];
p(-9*pi/4) q[20];
cx q[2],q[20];
p(11*pi/4) q[2];
p(9*pi/4) q[20];
cx q[3],q[20];
p(-11*pi/4) q[20];
cx q[3],q[20];
p(11*pi/4) q[20];
p(pi/2) q[3];
cx q[4],q[20];
p(-11*pi/4) q[20];
cx q[4],q[20];
p(11*pi/4) q[20];
p(pi/2) q[4];
cx q[5],q[20];
p(-9*pi/4) q[20];
cx q[5],q[20];
p(9*pi/4) q[20];
p(11*pi/4) q[5];
cx q[6],q[20];
p(-5*pi/2) q[20];
cx q[6],q[20];
p(5*pi/2) q[20];
p(9*pi/4) q[6];
cx q[7],q[20];
p(-9*pi/4) q[20];
cx q[7],q[20];
p(9*pi/4) q[20];
p(5*pi/2) q[7];
cx q[8],q[20];
p(-11*pi/4) q[20];
cx q[8],q[20];
p(11*pi/4) q[20];
p(pi/2) q[8];
cx q[9],q[20];
p(-5*pi/4) q[20];
cx q[9],q[20];
p(5*pi/4) q[20];
cx q[10],q[20];
p(-pi/2) q[20];
cx q[10],q[20];
p(11*pi/4) q[10];
p(pi/2) q[20];
cx q[11],q[20];
p(-9*pi/4) q[20];
cx q[11],q[20];
p(pi/4) q[11];
p(9*pi/4) q[20];
cx q[12],q[20];
p(-3*pi/2) q[20];
cx q[12],q[20];
p(11*pi/4) q[12];
p(3*pi/2) q[20];
cx q[13],q[20];
p(-9*pi/4) q[20];
cx q[13],q[20];
p(11*pi/4) q[13];
p(9*pi/4) q[20];
cx q[15],q[20];
p(-11*pi/4) q[20];
cx q[15],q[20];
p(pi/2) q[15];
p(11*pi/4) q[20];
cx q[16],q[20];
p(-3*pi/2) q[20];
cx q[16],q[20];
p(11*pi/4) q[16];
p(3*pi/2) q[20];
cx q[17],q[20];
p(-5*pi/2) q[20];
cx q[17],q[20];
p(9*pi/4) q[17];
p(5*pi/2) q[20];
cx q[18],q[20];
p(-7*pi/4) q[20];
cx q[18],q[20];
p(11*pi/4) q[18];
p(7*pi/4) q[20];
cx q[19],q[20];
p(-11*pi/4) q[20];
cx q[19],q[20];
p(7*pi/4) q[19];
p(11*pi/4) q[20];
p(5*pi/2) q[20];
p(5*pi/4) q[9];
u2(0,pi) q[21];
cx q[1],q[21];
p(-pi/4) q[21];
cx q[1],q[21];
p(9*pi/4) q[1];
p(pi/4) q[21];
cx q[2],q[21];
p(-11*pi/4) q[21];
cx q[2],q[21];
p(3*pi/4) q[2];
p(11*pi/4) q[21];
cx q[3],q[21];
p(-pi/2) q[21];
cx q[3],q[21];
p(pi/2) q[21];
p(11*pi/4) q[3];
cx q[4],q[21];
p(-pi/2) q[21];
cx q[4],q[21];
p(pi/2) q[21];
p(11*pi/4) q[4];
cx q[5],q[21];
p(-11*pi/4) q[21];
cx q[5],q[21];
p(11*pi/4) q[21];
p(pi/2) q[5];
cx q[9],q[21];
p(-5*pi/4) q[21];
cx q[9],q[21];
p(5*pi/4) q[21];
cx q[11],q[21];
p(-pi/4) q[21];
cx q[11],q[21];
p(5*pi/2) q[11];
p(pi/4) q[21];
cx q[12],q[21];
p(-11*pi/4) q[21];
cx q[12],q[21];
p(3*pi/2) q[12];
p(11*pi/4) q[21];
cx q[13],q[21];
p(-11*pi/4) q[21];
cx q[13],q[21];
p(pi/2) q[13];
p(11*pi/4) q[21];
cx q[14],q[21];
p(-11*pi/4) q[21];
cx q[14],q[21];
p(3*pi/4) q[14];
p(11*pi/4) q[21];
cx q[15],q[21];
p(-pi/2) q[21];
cx q[15],q[21];
p(11*pi/4) q[15];
p(pi/2) q[21];
cx q[18],q[21];
p(-11*pi/4) q[21];
cx q[18],q[21];
p(5*pi/4) q[18];
p(11*pi/4) q[21];
cx q[19],q[21];
p(-7*pi/4) q[21];
cx q[19],q[21];
p(3*pi/4) q[19];
p(7*pi/4) q[21];
cx q[20],q[21];
p(-5*pi/2) q[21];
cx q[20],q[21];
p(5*pi/2) q[20];
p(5*pi/2) q[21];
p(11*pi/4) q[21];
p(11*pi/4) q[9];
u2(0,pi) q[22];
cx q[0],q[22];
p(-5*pi/2) q[22];
cx q[0],q[22];
p(5*pi/2) q[0];
p(5*pi/2) q[22];
cx q[1],q[22];
p(-9*pi/4) q[22];
cx q[1],q[22];
p(11*pi/4) q[1];
p(9*pi/4) q[22];
cx q[2],q[22];
p(-3*pi/4) q[22];
cx q[2],q[22];
p(11*pi/4) q[2];
p(3*pi/4) q[22];
cx q[5],q[22];
p(-pi/2) q[22];
cx q[5],q[22];
p(pi/2) q[22];
p(11*pi/4) q[5];
cx q[6],q[22];
p(-9*pi/4) q[22];
cx q[6],q[22];
p(9*pi/4) q[22];
p(11*pi/4) q[6];
cx q[7],q[22];
p(-5*pi/2) q[22];
cx q[7],q[22];
p(5*pi/2) q[22];
p(5*pi/2) q[7];
cx q[8],q[22];
p(-pi/2) q[22];
cx q[8],q[22];
p(pi/2) q[22];
p(11*pi/4) q[8];
cx q[9],q[22];
p(-11*pi/4) q[22];
cx q[9],q[22];
p(11*pi/4) q[22];
cx q[10],q[22];
p(-11*pi/4) q[22];
cx q[10],q[22];
p(3*pi/4) q[10];
p(11*pi/4) q[22];
cx q[11],q[22];
p(-5*pi/2) q[22];
cx q[11],q[22];
p(5*pi/2) q[11];
p(5*pi/2) q[22];
cx q[12],q[22];
p(-3*pi/2) q[22];
cx q[12],q[22];
p(11*pi/4) q[12];
p(3*pi/2) q[22];
cx q[13],q[22];
p(-pi/2) q[22];
cx q[13],q[22];
p(11*pi/4) q[13];
p(pi/2) q[22];
cx q[16],q[22];
p(-11*pi/4) q[22];
cx q[16],q[22];
p(3*pi/4) q[16];
p(11*pi/4) q[22];
cx q[17],q[22];
p(-9*pi/4) q[22];
cx q[17],q[22];
p(5*pi/2) q[17];
p(9*pi/4) q[22];
cx q[18],q[22];
p(-5*pi/4) q[22];
cx q[18],q[22];
p(3*pi/2) q[18];
p(5*pi/4) q[22];
cx q[19],q[22];
p(-3*pi/4) q[22];
cx q[19],q[22];
p(11*pi/4) q[19];
p(3*pi/4) q[22];
cx q[21],q[22];
p(-11*pi/4) q[22];
cx q[21],q[22];
p(3*pi/4) q[21];
p(11*pi/4) q[22];
p(3*pi/2) q[22];
p(7*pi/4) q[9];
u2(0,pi) q[23];
cx q[0],q[23];
p(-5*pi/2) q[23];
cx q[0],q[23];
p(pi/4) q[0];
p(5*pi/2) q[23];
cx q[1],q[23];
p(-11*pi/4) q[23];
cx q[1],q[23];
p(3*pi/4) q[1];
p(11*pi/4) q[23];
cx q[3],q[23];
p(-11*pi/4) q[23];
cx q[3],q[23];
p(11*pi/4) q[23];
p(3*pi/2) q[3];
cx q[4],q[23];
p(-11*pi/4) q[23];
cx q[4],q[23];
p(11*pi/4) q[23];
p(3*pi/2) q[4];
cx q[6],q[23];
p(-11*pi/4) q[23];
cx q[6],q[23];
p(11*pi/4) q[23];
p(pi/2) q[6];
cx q[7],q[23];
p(-5*pi/2) q[23];
cx q[7],q[23];
p(5*pi/2) q[23];
p(9*pi/4) q[7];
cx q[8],q[23];
p(-11*pi/4) q[23];
cx q[8],q[23];
p(11*pi/4) q[23];
p(9*pi/4) q[8];
cx q[9],q[23];
p(-7*pi/4) q[23];
cx q[9],q[23];
p(7*pi/4) q[23];
cx q[10],q[23];
p(-3*pi/4) q[23];
cx q[10],q[23];
p(7*pi/4) q[10];
p(3*pi/4) q[23];
cx q[11],q[23];
p(-5*pi/2) q[23];
cx q[11],q[23];
p(9*pi/4) q[11];
p(5*pi/2) q[23];
cx q[14],q[23];
p(-3*pi/4) q[23];
cx q[14],q[23];
p(11*pi/4) q[14];
p(3*pi/4) q[23];
cx q[15],q[23];
p(-11*pi/4) q[23];
cx q[15],q[23];
p(3*pi/4) q[15];
p(11*pi/4) q[23];
cx q[17],q[23];
p(-5*pi/2) q[23];
cx q[17],q[23];
p(pi/4) q[17];
p(5*pi/2) q[23];
cx q[18],q[23];
p(-3*pi/2) q[23];
cx q[18],q[23];
p(11*pi/4) q[18];
p(3*pi/2) q[23];
cx q[19],q[23];
p(-11*pi/4) q[23];
cx q[19],q[23];
p(9*pi/4) q[19];
p(11*pi/4) q[23];
cx q[20],q[23];
p(-5*pi/2) q[23];
cx q[20],q[23];
p(5*pi/2) q[20];
p(5*pi/2) q[23];
cx q[21],q[23];
p(-3*pi/4) q[23];
cx q[21],q[23];
p(7*pi/4) q[21];
p(3*pi/4) q[23];
cx q[22],q[23];
p(-3*pi/2) q[23];
cx q[22],q[23];
p(11*pi/4) q[22];
p(3*pi/2) q[23];
p(11*pi/4) q[23];
p(11*pi/4) q[9];
u2(0,pi) q[24];
cx q[0],q[24];
p(-pi/4) q[24];
cx q[0],q[24];
p(9*pi/4) q[0];
p(pi/4) q[24];
cx q[1],q[24];
p(-3*pi/4) q[24];
cx q[1],q[24];
u(0,0,11*pi/8) q[1];
u2(0,pi) q[1];
p(3*pi/4) q[24];
cx q[2],q[24];
p(-11*pi/4) q[24];
cx q[2],q[24];
u(0,0,11*pi/8) q[2];
u2(0,pi) q[2];
p(11*pi/4) q[24];
cx q[5],q[24];
p(-11*pi/4) q[24];
cx q[5],q[24];
p(11*pi/4) q[24];
u(0,0,11*pi/8) q[5];
u2(0,pi) q[5];
cx q[6],q[24];
p(-pi/2) q[24];
cx q[6],q[24];
p(pi/2) q[24];
u(0,0,7*pi/8) q[6];
u2(0,pi) q[6];
cx q[8],q[24];
p(-9*pi/4) q[24];
cx q[8],q[24];
p(9*pi/4) q[24];
cx q[10],q[24];
p(-7*pi/4) q[24];
cx q[10],q[24];
p(11*pi/4) q[10];
p(7*pi/4) q[24];
cx q[12],q[24];
p(-11*pi/4) q[24];
cx q[12],q[24];
u(0,0,11*pi/8) q[12];
u2(0,pi) q[12];
p(11*pi/4) q[24];
cx q[13],q[24];
p(-11*pi/4) q[24];
cx q[13],q[24];
p(3*pi/4) q[13];
p(11*pi/4) q[24];
cx q[14],q[24];
p(-11*pi/4) q[24];
cx q[14],q[24];
p(9*pi/4) q[14];
p(11*pi/4) q[24];
cx q[15],q[24];
p(-3*pi/4) q[24];
cx q[15],q[24];
p(7*pi/4) q[15];
p(3*pi/4) q[24];
cx q[16],q[24];
p(-3*pi/4) q[24];
cx q[16],q[24];
p(11*pi/4) q[16];
p(3*pi/4) q[24];
cx q[17],q[24];
p(-pi/4) q[24];
cx q[17],q[24];
u(0,0,9*pi/8) q[17];
u2(0,pi) q[17];
p(pi/4) q[24];
cx q[18],q[24];
p(-11*pi/4) q[24];
cx q[18],q[24];
p(3*pi/2) q[18];
p(11*pi/4) q[24];
cx q[19],q[24];
p(-9*pi/4) q[24];
cx q[19],q[24];
p(pi/4) q[19];
p(9*pi/4) q[24];
cx q[20],q[24];
p(-5*pi/2) q[24];
cx q[20],q[24];
p(pi/4) q[20];
p(5*pi/2) q[24];
cx q[21],q[24];
p(-7*pi/4) q[24];
cx q[21],q[24];
p(11*pi/4) q[21];
p(7*pi/4) q[24];
cx q[22],q[24];
p(-11*pi/4) q[24];
cx q[22],q[24];
p(3*pi/2) q[22];
p(11*pi/4) q[24];
cx q[23],q[24];
p(-11*pi/4) q[24];
cx q[23],q[24];
p(7*pi/4) q[23];
p(11*pi/4) q[24];
p(11*pi/4) q[24];
u(0,0,11*pi/8) q[8];
u2(0,pi) q[8];
u2(0,pi) q[25];
cx q[0],q[25];
p(-9*pi/4) q[25];
cx q[0],q[25];
u(0,0,5*pi/4) q[0];
u2(0,pi) q[0];
p(9*pi/4) q[25];
cx q[3],q[25];
p(-3*pi/2) q[25];
cx q[3],q[25];
p(3*pi/2) q[25];
u(0,0,3*pi/4) q[3];
u2(0,pi) q[3];
cx q[4],q[25];
p(-3*pi/2) q[25];
cx q[4],q[25];
p(3*pi/2) q[25];
u(0,0,11*pi/8) q[4];
u2(0,pi) q[4];
cx q[7],q[25];
p(-9*pi/4) q[25];
cx q[7],q[25];
p(9*pi/4) q[25];
u(0,0,11*pi/8) q[7];
u2(0,pi) q[7];
cx q[9],q[25];
p(-11*pi/4) q[25];
cx q[9],q[25];
p(11*pi/4) q[25];
cx q[10],q[25];
p(-11*pi/4) q[25];
cx q[10],q[25];
u2(0,pi) q[10];
p(11*pi/4) q[25];
cx q[11],q[25];
p(-9*pi/4) q[25];
cx q[11],q[25];
u(0,0,5*pi/8) q[11];
u2(0,pi) q[11];
p(9*pi/4) q[25];
cx q[13],q[25];
p(-3*pi/4) q[25];
cx q[13],q[25];
u(0,0,pi/4) q[13];
u2(0,pi) q[13];
p(3*pi/4) q[25];
cx q[14],q[25];
p(-9*pi/4) q[25];
cx q[14],q[25];
u(0,0,7*pi/8) q[14];
u2(0,pi) q[14];
p(9*pi/4) q[25];
cx q[15],q[25];
p(-7*pi/4) q[25];
cx q[15],q[25];
u(0,0,pi/8) q[15];
u2(0,pi) q[15];
p(7*pi/4) q[25];
cx q[16],q[25];
p(-11*pi/4) q[25];
cx q[16],q[25];
u(0,0,11*pi/8) q[16];
u2(0,pi) q[16];
p(11*pi/4) q[25];
cx q[18],q[25];
p(-3*pi/2) q[25];
cx q[18],q[25];
u(0,0,11*pi/8) q[18];
u2(0,pi) q[18];
p(3*pi/2) q[25];
cx q[19],q[25];
p(-pi/4) q[25];
cx q[19],q[25];
u(0,0,pi/2) q[19];
u2(0,pi) q[19];
p(pi/4) q[25];
cx q[20],q[25];
p(-pi/4) q[25];
cx q[20],q[25];
u(0,0,5*pi/4) q[20];
u2(0,pi) q[20];
p(pi/4) q[25];
cx q[21],q[25];
p(-11*pi/4) q[25];
cx q[21],q[25];
u(0,0,9*pi/8) q[21];
u2(0,pi) q[21];
p(11*pi/4) q[25];
cx q[22],q[25];
p(-3*pi/2) q[25];
cx q[22],q[25];
u(0,0,5*pi/8) q[22];
u2(0,pi) q[22];
p(3*pi/2) q[25];
cx q[23],q[25];
p(-7*pi/4) q[25];
cx q[23],q[25];
u(0,0,pi/2) q[23];
u2(0,pi) q[23];
p(7*pi/4) q[25];
cx q[24],q[25];
p(-11*pi/4) q[25];
cx q[24],q[25];
u(0,0,3*pi/8) q[24];
u2(0,pi) q[24];
p(11*pi/4) q[25];
u(0,0,9*pi/8) q[25];
u2(0,pi) q[25];
u(0,0,5*pi/4) q[9];
u2(0,pi) q[9];
