OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
U(1.570796, 0.000000, 3.141593) q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[9];
U(0.000000, 0.000000, -0.785400) q[0];
U(pi/2,0,pi) q[0];
CX q[1],q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[1],q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
CX q[1],q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[1],q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[1],q[0];
CX q[1],q[2];
U(0.000000, 0.000000, -0.785400) q[0];
U(0.000000, 0.000000, 0.392700) q[1];
U(pi/2,0,pi) q[0];
CX q[1],q[2];
CX q[1],q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[1],q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[1],q[2];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
CX q[1],q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.196350) q[2];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[2],q[3];
U(pi/2,0,pi) q[0];
CX q[2],q[3];
CX q[1],q[0];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[2],q[3];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[1],q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[1],q[0];
CX q[3],q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[1],q[0];
CX q[3],q[4];
CX q[1],q[2];
U(0.000000, 0.000000, -0.785400) q[0];
CX q[3],q[4];
U(0.000000, 0.000000, 0.392700) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[1],q[2];
CX q[3],q[4];
CX q[1],q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[3],q[4];
CX q[1],q[2];
U(0.000000, 0.000000, -0.049100) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[4];
CX q[1],q[2];
CX q[5],q[4];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, 0.049100) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[5],q[4];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[2],q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[2],q[3];
CX q[1],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[2],q[3];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[5],q[4];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, -0.024550) q[5];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.098150) q[3];
U(pi/2,0,pi) q[5];
CX q[1],q[0];
CX q[3],q[4];
CX q[6],q[5];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.098150) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[1],q[0];
U(0.000000, 0.000000, 0.024550) q[5];
CX q[3],q[4];
CX q[1],q[2];
U(0.000000, 0.000000, -0.785400) q[0];
CX q[6],q[5];
CX q[3],q[4];
U(0.000000, 0.000000, 0.392700) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[1],q[2];
CX q[6],q[5];
CX q[3],q[4];
CX q[1],q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[6],q[5];
CX q[3],q[4];
CX q[1],q[2];
CX q[6],q[5];
U(0.000000, 0.000000, -0.049100) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[1],q[2];
CX q[5],q[4];
CX q[6],q[7];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.012250) q[6];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, 0.049100) q[4];
CX q[6],q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[5],q[4];
CX q[6],q[7];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[2],q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[2],q[3];
CX q[6],q[7];
CX q[1],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[2],q[3];
CX q[6],q[7];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[5],q[4];
U(0.000000, 0.000000, -0.006150) q[7];
U(pi/2,0,pi) q[6];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, -0.024550) q[5];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.098150) q[3];
U(pi/2,0,pi) q[5];
CX q[8],q[7];
CX q[1],q[0];
CX q[3],q[4];
CX q[6],q[5];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.098150) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.006150) q[7];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
U(0.000000, 0.000000, 0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[7];
CX q[1],q[2];
U(0.000000, 0.000000, -0.785400) q[0];
CX q[6],q[5];
CX q[3],q[4];
CX q[8],q[7];
U(0.000000, 0.000000, 0.392700) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
CX q[1],q[2];
CX q[6],q[5];
CX q[3],q[4];
CX q[8],q[7];
CX q[1],q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[6],q[5];
CX q[3],q[4];
CX q[8],q[7];
CX q[1],q[2];
CX q[6],q[5];
U(0.000000, 0.000000, -0.049100) q[4];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[8],q[7];
CX q[1],q[2];
CX q[5],q[4];
U(0.000000, 0.000000, -0.003050) q[8];
CX q[6],q[7];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, 0.012250) q[6];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, 0.049100) q[4];
CX q[9],q[8];
CX q[6],q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[5],q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[6],q[7];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[2],q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.003050) q[8];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[2],q[3];
CX q[6],q[7];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[9],q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[2],q[3];
CX q[6],q[7];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[5],q[4];
U(0.000000, 0.000000, -0.006150) q[7];
U(pi/2,0,pi) q[6];
CX q[9],q[10];
U(0.000000, 0.000000, -0.001550) q[8];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, -0.024550) q[5];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.098150) q[3];
U(pi/2,0,pi) q[5];
CX q[9],q[10];
CX q[1],q[0];
CX q[3],q[4];
CX q[6],q[5];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.098150) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[9],q[10];
CX q[1],q[0];
CX q[7],q[10];
U(0.000000, 0.000000, 0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[9];
CX q[1],q[2];
U(0.000000, 0.000000, -0.785400) q[0];
CX q[6],q[5];
CX q[3],q[4];
CX q[9],q[8];
U(0.000000, 0.000000, 0.006150) q[7];
U(0.000000, 0.000000, 0.392700) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[7],q[10];
CX q[1],q[2];
CX q[6],q[5];
CX q[3],q[4];
U(0.000000, 0.000000, 0.001550) q[8];
CX q[7],q[10];
U(pi/2,0,pi) q[9];
CX q[1],q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[6],q[5];
CX q[3],q[4];
CX q[7],q[10];
CX q[9],q[8];
CX q[1],q[2];
CX q[6],q[5];
U(0.000000, 0.000000, -0.049100) q[4];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[7],q[10];
U(0.000000, 0.000000, -0.000750) q[8];
U(pi/2,0,pi) q[9];
CX q[1],q[2];
CX q[5],q[4];
U(0.000000, 0.000000, -0.003050) q[10];
CX q[6],q[7];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.012250) q[6];
CX q[1],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, 0.049100) q[4];
CX q[9],q[10];
U(pi/2,0,pi) q[5];
CX q[6],q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.196350) q[2];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[6],q[7];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[2],q[3];
CX q[5],q[4];
CX q[11],q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[6],q[7];
CX q[1],q[0];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[11],q[10];
CX q[5],q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[6],q[7];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[11],q[10];
CX q[5],q[4];
U(0.000000, 0.000000, -0.006150) q[7];
U(pi/2,0,pi) q[6];
CX q[1],q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[9],q[10];
U(0.000000, 0.000000, 0.003050) q[11];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[5],q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[1],q[0];
CX q[9],q[10];
U(0.000000, 0.000000, -0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[1],q[0];
CX q[9],q[10];
CX q[6],q[5];
CX q[3],q[4];
CX q[1],q[2];
U(0.000000, 0.000000, -0.785400) q[0];
U(pi/2,0,pi) q[9];
CX q[11],q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[3],q[4];
CX q[9],q[8];
U(0.000000, 0.000000, 0.392700) q[1];
U(0.000000, 0.000000, -0.001550) q[11];
CX q[7],q[10];
U(0.000000, 0.000000, 0.024550) q[5];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[1],q[2];
CX q[3],q[4];
U(0.000000, 0.000000, 0.006150) q[7];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.000750) q[8];
CX q[1],q[2];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[6],q[5];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[8];
CX q[3],q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[1],q[2];
CX q[9],q[8];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[6],q[5];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[1],q[2];
CX q[9],q[10];
U(0.000000, 0.000000, -0.000400) q[8];
CX q[6],q[5];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[1],q[0];
CX q[9],q[10];
CX q[2],q[3];
CX q[6],q[5];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[9],q[10];
U(0.000000, 0.000000, 0.785400) q[0];
CX q[5],q[4];
U(pi/2,0,pi) q[1];
CX q[2],q[3];
CX q[11],q[10];
CX q[9],q[8];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[2],q[3];
CX q[12],q[11];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
U(0.000000, 0.000000, 0.049100) q[4];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[9],q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[4];
CX q[12],q[11];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[5],q[4];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[9],q[8];
CX q[15],q[0];
CX q[2],q[3];
U(0.000000, 0.000000, -0.785400) q[1];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[12],q[11];
CX q[8],q[7];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[5],q[4];
CX q[11],q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
U(0.000000, 0.000000, 0.001550) q[12];
CX q[15],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[8],q[7];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[11],q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
CX q[15],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[8],q[7];
CX q[15],q[2];
CX q[5],q[4];
CX q[11],q[10];
CX q[8],q[7];
CX q[3],q[4];
U(0.000000, 0.000000, 0.392700) q[15];
CX q[9],q[10];
CX q[12],q[11];
U(0.000000, 0.000000, -0.003050) q[8];
CX q[6],q[7];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[15],q[2];
U(0.000000, 0.000000, 0.000400) q[9];
CX q[6],q[11];
U(0.000000, 0.000000, -0.000750) q[12];
CX q[3],q[4];
U(0.000000, 0.000000, -0.196350) q[15];
CX q[1],q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[9],q[10];
CX q[15],q[2];
CX q[3],q[4];
U(0.000000, 0.000000, 0.785400) q[1];
CX q[6],q[11];
U(0.000000, 0.000000, -0.000200) q[9];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[15],q[2];
CX q[3],q[4];
CX q[6],q[11];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[6],q[7];
U(0.000000, 0.000000, 0.012250) q[11];
CX q[15],q[2];
CX q[3],q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[12],q[11];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[2],q[3];
CX q[15],q[0];
CX q[6],q[7];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.196350) q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[12],q[11];
CX q[15],q[0];
CX q[2],q[3];
CX q[6],q[7];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
CX q[2],q[3];
CX q[8],q[7];
CX q[12],q[11];
CX q[6],q[5];
CX q[15],q[0];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[11],q[10];
U(0.000000, 0.000000, 0.003050) q[8];
CX q[1],q[0];
CX q[2],q[3];
U(pi/2,0,pi) q[15];
CX q[6],q[5];
CX q[9],q[10];
CX q[8],q[7];
U(0.000000, 0.000000, -0.392700) q[1];
U(1.570796, 0.000000, 3.141593) q[0];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, -0.001550) q[8];
CX q[2],q[3];
U(0.000000, 0.000000, -0.785400) q[0];
CX q[6],q[5];
CX q[9],q[10];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[1],q[2];
U(pi/2,0,pi) q[0];
CX q[12],q[5];
U(0.000000, 0.000000, -0.024550) q[6];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.392700) q[1];
CX q[9],q[10];
CX q[6],q[5];
CX q[1],q[2];
CX q[11],q[10];
U(pi/2,0,pi) q[9];
CX q[1],q[2];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[11],q[10];
CX q[1],q[2];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[11],q[10];
CX q[1],q[2];
CX q[12],q[11];
U(0.000000, 0.000000, 0.000750) q[10];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[1],q[0];
CX q[12],q[11];
CX q[9],q[10];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[12],q[11];
U(0.000000, 0.000000, -0.000400) q[10];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[0];
CX q[12],q[13];
U(0.000000, 0.000000, -0.006150) q[11];
CX q[9],q[8];
CX q[1],q[0];
CX q[6],q[11];
U(0.000000, 0.000000, 0.000200) q[12];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[12],q[13];
U(0.000000, 0.000000, 0.001550) q[8];
U(pi/2,0,pi) q[9];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
CX q[6],q[11];
CX q[12],q[13];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[13];
CX q[9],q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[6],q[11];
CX q[12],q[13];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
CX q[6],q[7];
U(0.000000, 0.000000, 0.024550) q[11];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[13];
U(0.000000, 0.000000, -0.000750) q[8];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[6],q[11];
CX q[12],q[13];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
U(0.000000, 0.000000, -0.000100) q[13];
U(pi/2,0,pi) q[12];
U(0.000000, 0.000000, -0.785400) q[0];
CX q[6],q[11];
CX q[13],q[14];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
U(0.000000, 0.000000, 0.000100) q[13];
CX q[6],q[11];
CX q[13],q[14];
U(0.000000, 0.000000, 0.006150) q[11];
CX q[6],q[5];
CX q[13],q[14];
CX q[11],q[10];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[13];
U(pi/2,0,pi) q[14];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
CX q[13],q[14];
CX q[11],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[13];
U(pi/2,0,pi) q[14];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.049100) q[4];
U(pi/2,0,pi) q[5];
CX q[13],q[14];
CX q[11],q[10];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, -0.000050) q[14];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
U(pi/2,0,pi) q[14];
CX q[12],q[11];
CX q[7],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[15],q[14];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[14];
U(0.000000, 0.000000, 0.000400) q[11];
U(0.000000, 0.000000, -0.003050) q[10];
CX q[6],q[7];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.000050) q[14];
CX q[12],q[11];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.012250) q[6];
CX q[5],q[4];
CX q[15],q[14];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[9],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[6],q[7];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[14];
CX q[12],q[11];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
CX q[6],q[7];
CX q[15],q[14];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(0.000000, 0.000000, -0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[14];
CX q[12],q[11];
CX q[6],q[7];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[15],q[14];
CX q[12],q[11];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[3],q[4];
CX q[15],q[14];
CX q[11],q[10];
U(0.000000, 0.000000, -0.000200) q[12];
CX q[6],q[7];
CX q[3],q[4];
U(1.570796, 0.000000, 3.141593) q[15];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[12],q[13];
U(0.000000, 0.000000, -0.006150) q[7];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[11],q[10];
CX q[6],q[5];
U(0.000000, 0.000000, 0.000200) q[12];
CX q[3],q[4];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[12],q[13];
CX q[11],q[10];
U(0.000000, 0.000000, 0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[6];
CX q[12],q[13];
CX q[9],q[10];
U(0.000000, 0.000000, 0.003050) q[11];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[2],q[3];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[13];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[6],q[5];
CX q[12],q[13];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[9],q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[13];
CX q[2],q[3];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[12],q[13];
CX q[6],q[5];
CX q[2],q[3];
CX q[9],q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, -0.000100) q[13];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[9];
CX q[11],q[10];
CX q[6],q[5];
CX q[13],q[14];
CX q[2],q[3];
CX q[9],q[8];
U(0.000000, 0.000000, -0.001550) q[11];
CX q[7],q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(0.000000, 0.000000, 0.000100) q[13];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, 0.006150) q[7];
CX q[6],q[5];
CX q[2],q[3];
CX q[13],q[14];
U(0.000000, 0.000000, 0.000750) q[8];
U(pi/2,0,pi) q[9];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[1],q[2];
CX q[13],q[14];
U(pi/2,0,pi) q[8];
CX q[5],q[4];
U(0.000000, 0.000000, 0.392700) q[1];
U(pi/2,0,pi) q[13];
U(pi/2,0,pi) q[14];
CX q[9],q[8];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[13],q[14];
CX q[1],q[2];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, 0.049100) q[4];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[13];
U(pi/2,0,pi) q[14];
CX q[1],q[2];
CX q[9],q[10];
U(0.000000, 0.000000, -0.000400) q[8];
U(pi/2,0,pi) q[4];
CX q[13],q[14];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
U(1.570796, 0.000000, 3.141593) q[14];
CX q[1],q[2];
CX q[9],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
CX q[1],q[2];
CX q[9],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
CX q[11],q[10];
CX q[9],q[8];
CX q[5],q[4];
CX q[1],q[0];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[12],q[11];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[9],q[8];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[5],q[4];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[12],q[11];
CX q[3],q[4];
U(pi/2,0,pi) q[0];
CX q[9],q[8];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[1],q[0];
CX q[12],q[11];
CX q[8],q[7];
CX q[3],q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[11],q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
U(0.000000, 0.000000, 0.001550) q[12];
CX q[3],q[4];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[8],q[7];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[1],q[0];
CX q[11],q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
CX q[3],q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[8],q[7];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[1],q[0];
CX q[11],q[10];
CX q[8],q[7];
CX q[3],q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[9],q[10];
CX q[12],q[11];
U(0.000000, 0.000000, -0.003050) q[8];
CX q[6],q[7];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[2],q[3];
CX q[1],q[0];
U(0.000000, 0.000000, 0.000400) q[9];
CX q[6],q[11];
U(0.000000, 0.000000, -0.000750) q[12];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.196350) q[2];
U(0.000000, 0.000000, -0.785400) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[9],q[10];
CX q[2],q[3];
CX q[6],q[11];
U(0.000000, 0.000000, -0.000200) q[9];
CX q[2],q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[6],q[11];
CX q[2],q[3];
CX q[6],q[7];
U(0.000000, 0.000000, 0.012250) q[11];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[12],q[11];
CX q[2],q[3];
CX q[6],q[7];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[1],q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[12],q[11];
U(0.000000, 0.000000, 0.392700) q[1];
CX q[6],q[7];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[1],q[2];
CX q[8],q[7];
CX q[12],q[11];
CX q[6],q[5];
CX q[1],q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[11],q[10];
U(0.000000, 0.000000, 0.003050) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[6],q[5];
CX q[9],q[10];
CX q[8],q[7];
CX q[1],q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, -0.001550) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[6],q[5];
CX q[9],q[10];
U(pi/2,0,pi) q[8];
CX q[1],q[0];
CX q[12],q[5];
U(0.000000, 0.000000, -0.024550) q[6];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, -0.196350) q[0];
CX q[1],q[2];
CX q[9],q[10];
CX q[6],q[5];
CX q[15],q[0];
U(0.000000, 0.000000, 0.785400) q[1];
CX q[11],q[10];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
CX q[1],q[2];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[15],q[0];
U(0.000000, 0.000000, -0.392700) q[1];
U(1.570796, 0.000000, 3.141593) q[2];
CX q[11],q[10];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.785400) q[2];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[15],q[0];
CX q[11],q[10];
CX q[12],q[11];
U(0.000000, 0.000000, 0.000750) q[10];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[12],q[11];
CX q[9],q[10];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[12],q[11];
U(0.000000, 0.000000, -0.000400) q[10];
U(pi/2,0,pi) q[9];
CX q[12],q[13];
U(0.000000, 0.000000, -0.006150) q[11];
CX q[9],q[8];
CX q[6],q[11];
U(0.000000, 0.000000, 0.000200) q[12];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[12],q[13];
U(0.000000, 0.000000, 0.001550) q[8];
U(pi/2,0,pi) q[9];
CX q[6],q[11];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[9],q[8];
CX q[6],q[11];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[6],q[7];
U(0.000000, 0.000000, 0.024550) q[11];
U(0.000000, 0.000000, -0.000750) q[8];
U(pi/2,0,pi) q[9];
CX q[6],q[11];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[6],q[11];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[11];
CX q[6],q[11];
U(0.000000, 0.000000, 0.006150) q[11];
CX q[6],q[5];
CX q[11],q[10];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
CX q[11],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.049100) q[4];
U(pi/2,0,pi) q[5];
CX q[11],q[10];
U(pi/2,0,pi) q[4];
CX q[12],q[11];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[7],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[12],q[11];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(0.000000, 0.000000, -0.003050) q[10];
CX q[6],q[7];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[12],q[11];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.012250) q[6];
CX q[5],q[4];
CX q[12],q[13];
U(1.570796, 0.000000, 3.141593) q[11];
CX q[9],q[10];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[6],q[7];
U(0.000000, 0.000000, 0.000400) q[12];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[5],q[4];
CX q[6],q[7];
CX q[12],q[13];
CX q[9],q[8];
U(0.000000, 0.000000, -0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[6],q[7];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[9],q[8];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[3],q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
CX q[6],q[7];
CX q[3],q[4];
CX q[9],q[8];
U(0.000000, 0.000000, -0.006150) q[7];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[9],q[10];
CX q[6],q[5];
U(pi/2,0,pi) q[7];
CX q[3],q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[9],q[10];
U(0.000000, 0.000000, 0.024550) q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[10];
CX q[6],q[5];
CX q[3],q[14];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[9],q[10];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[14];
U(pi/2,0,pi) q[4];
CX q[11],q[10];
U(0.000000, 0.000000, 0.003050) q[9];
CX q[6],q[5];
CX q[3],q[14];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[9],q[8];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[14];
CX q[11],q[10];
U(0.000000, 0.000000, -0.001550) q[9];
U(pi/2,0,pi) q[8];
CX q[6],q[5];
CX q[3],q[14];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
CX q[8],q[7];
CX q[6],q[5];
CX q[15],q[14];
CX q[11],q[10];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.196350) q[15];
CX q[12],q[11];
U(0.000000, 0.000000, 0.006150) q[7];
U(pi/2,0,pi) q[8];
CX q[5],q[4];
CX q[15],q[14];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[15],q[14];
CX q[12],q[11];
CX q[8],q[7];
U(0.000000, 0.000000, 0.049100) q[4];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[14];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
CX q[5],q[4];
CX q[15],q[14];
CX q[12],q[11];
CX q[8],q[7];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[14];
CX q[12],q[13];
U(1.570796, 0.000000, 3.141593) q[11];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
CX q[5],q[4];
CX q[15],q[14];
U(0.000000, 0.000000, 0.000750) q[12];
CX q[8],q[7];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[15],q[0];
U(0.000000, 0.000000, -0.098150) q[14];
CX q[12],q[13];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[7];
CX q[5],q[4];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
CX q[3],q[14];
CX q[12],q[13];
CX q[8],q[7];
CX q[15],q[0];
CX q[5],q[4];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[14];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[13];
U(0.000000, 0.000000, -0.003050) q[8];
CX q[6],q[7];
U(pi/2,0,pi) q[15];
U(pi/2,0,pi) q[0];
CX q[3],q[14];
U(0.000000, 0.000000, -0.024550) q[5];
CX q[12],q[13];
CX q[15],q[0];
U(0.000000, 0.000000, 0.012250) q[6];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[14];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[13];
CX q[1],q[0];
CX q[3],q[14];
CX q[12],q[13];
CX q[3],q[4];
U(0.000000, 0.000000, 0.392700) q[1];
CX q[12],q[11];
U(1.570796, 0.000000, 3.141593) q[13];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[1],q[0];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[1],q[2];
CX q[3],q[4];
CX q[12],q[11];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[3],q[4];
U(pi/2,0,pi) q[12];
U(pi/2,0,pi) q[11];
CX q[1],q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[12],q[11];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[3],q[4];
CX q[11],q[10];
CX q[1],q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, -0.196350) q[2];
CX q[1],q[0];
CX q[3],q[4];
CX q[11],q[10];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[2],q[3];
U(0.000000, 0.000000, 0.785400) q[1];
U(pi/2,0,pi) q[11];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[1],q[0];
CX q[11],q[10];
CX q[2],q[3];
U(0.000000, 0.000000, -0.392700) q[1];
U(1.570796, 0.000000, 3.141593) q[0];
CX q[9],q[10];
CX q[2],q[3];
U(0.000000, 0.000000, -0.785400) q[0];
U(0.000000, 0.000000, 0.001550) q[9];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[0];
CX q[9],q[10];
CX q[2],q[3];
CX q[7],q[10];
U(1.570796, 0.000000, 3.141593) q[9];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
CX q[2],q[3];
CX q[7],q[10];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[1],q[2];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
U(0.000000, 0.000000, 0.392700) q[1];
CX q[7],q[10];
CX q[1],q[2];
CX q[8],q[7];
CX q[1],q[2];
CX q[7],q[10];
U(0.000000, 0.000000, 0.003050) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
CX q[9],q[8];
CX q[1],q[2];
CX q[7],q[10];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
CX q[9],q[8];
CX q[1],q[2];
CX q[7],q[10];
U(pi/2,0,pi) q[9];
U(pi/2,0,pi) q[8];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
CX q[6],q[7];
CX q[9],q[8];
CX q[1],q[0];
CX q[6],q[7];
CX q[9],q[10];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
U(1.570796, 0.000000, 3.141593) q[9];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
CX q[6],q[7];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[1],q[0];
CX q[6],q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, -0.006150) q[7];
U(pi/2,0,pi) q[6];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
CX q[6],q[5];
CX q[7],q[10];
CX q[1],q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.006150) q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(0.000000, 0.000000, 0.024550) q[5];
CX q[7],q[10];
CX q[1],q[0];
CX q[6],q[5];
CX q[7],q[10];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
CX q[1],q[0];
CX q[6],q[5];
CX q[7],q[10];
U(0.000000, 0.000000, -0.785400) q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[7];
U(pi/2,0,pi) q[10];
U(pi/2,0,pi) q[0];
CX q[6],q[5];
CX q[7],q[10];
CX q[6],q[5];
U(1.570796, 0.000000, 3.141593) q[10];
U(0.000000, 0.000000, -0.012250) q[6];
U(pi/2,0,pi) q[5];
CX q[5],q[4];
CX q[6],q[7];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.012250) q[6];
U(0.000000, 0.000000, 0.049100) q[4];
CX q[6],q[7];
CX q[5],q[4];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[5],q[4];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[5],q[4];
CX q[5],q[4];
U(0.000000, 0.000000, -0.024550) q[5];
CX q[3],q[4];
CX q[6],q[5];
U(0.000000, 0.000000, 0.098150) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[3],q[4];
CX q[6],q[5];
CX q[3],q[4];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[6],q[5];
CX q[3],q[4];
CX q[6],q[7];
U(1.570796, 0.000000, 3.141593) q[5];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
U(0.000000, 0.000000, 0.024550) q[6];
CX q[3],q[4];
CX q[6],q[7];
U(0.000000, 0.000000, -0.049100) q[4];
CX q[2],q[3];
CX q[5],q[4];
U(0.000000, 0.000000, 0.196350) q[2];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
CX q[2],q[3];
CX q[5],q[4];
CX q[2],q[3];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[5],q[4];
CX q[2],q[3];
CX q[6],q[5];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
CX q[2],q[3];
CX q[6],q[5];
U(0.000000, 0.000000, -0.098150) q[3];
CX q[1],q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(0.000000, 0.000000, 0.392700) q[1];
CX q[6],q[5];
CX q[1],q[2];
CX q[6],q[7];
U(1.570796, 0.000000, 3.141593) q[5];
CX q[1],q[2];
U(0.000000, 0.000000, 0.049100) q[6];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
CX q[6],q[7];
CX q[1],q[2];
CX q[6],q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[1],q[2];
CX q[6],q[7];
U(0.000000, 0.000000, -0.196350) q[2];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[7];
CX q[1],q[0];
CX q[6],q[7];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[6],q[5];
U(1.570796, 0.000000, 3.141593) q[7];
U(0.000000, 0.000000, 0.785400) q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[0];
CX q[6],q[5];
CX q[1],q[0];
U(pi/2,0,pi) q[6];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[6],q[5];
U(0.000000, 0.000000, -0.392700) q[0];
U(1.570796, 0.000000, 3.141593) q[1];
CX q[5],q[4];
CX q[1],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[1],q[0];
U(pi/2,0,pi) q[5];
U(pi/2,0,pi) q[4];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[5],q[4];
CX q[1],q[0];
CX q[3],q[4];
U(0.000000, 0.000000, -0.785400) q[0];
U(0.000000, 0.000000, 0.098150) q[3];
CX q[3],q[4];
CX q[3],q[4];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[3],q[4];
U(pi/2,0,pi) q[3];
U(pi/2,0,pi) q[4];
CX q[3],q[4];
CX q[2],q[3];
U(1.570796, 0.000000, 3.141593) q[4];
U(0.000000, 0.000000, 0.196350) q[2];
CX q[2],q[3];
CX q[2],q[3];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[2],q[3];
U(pi/2,0,pi) q[2];
U(pi/2,0,pi) q[3];
CX q[2],q[3];
CX q[1],q[2];
U(1.570796, 0.000000, 3.141593) q[3];
U(0.000000, 0.000000, 0.392700) q[1];
CX q[1],q[2];
CX q[1],q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[1],q[0];
U(pi/2,0,pi) q[1];
U(pi/2,0,pi) q[0];
CX q[1],q[0];
CX q[1],q[2];
U(1.570796, 0.000000, 3.141593) q[0];
U(0.000000, 0.000000, 0.785400) q[1];
CX q[1],q[2];
U(1.570796, 0.000000, 3.141593) q[2];
U(1.570796, 0.000000, 3.141593) q[1];
U(1.570796, 0.000000, 3.141593) q[2];
