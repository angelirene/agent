OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
creg c[25];
cx q[8],q[0];
cx q[14],q[10];
cx q[11],q[12];
cx q[23],q[16];
cx q[15],q[21];
cx q[9],q[11];
cx q[0],q[4];
cx q[8],q[20];
cx q[21],q[23];
cx q[15],q[7];
cx q[22],q[8];
cx q[16],q[11];
cx q[0],q[4];
cx q[14],q[13];
cx q[15],q[6];
cx q[23],q[24];
cx q[0],q[8];
cx q[6],q[4];
cx q[17],q[14];
cx q[12],q[2];
cx q[3],q[11];
cx q[11],q[2];
cx q[4],q[7];
cx q[6],q[2];
cx q[3],q[5];
cx q[0],q[7];
cx q[0],q[12];
cx q[4],q[12];
cx q[9],q[5];
cx q[0],q[12];
cx q[20],q[11];
cx q[12],q[19];
cx q[21],q[14];
cx q[17],q[21];
cx q[6],q[13];
cx q[0],q[6];
cx q[18],q[12];
cx q[20],q[11];
cx q[10],q[11];
cx q[18],q[12];
cx q[8],q[0];
cx q[0],q[7];
cx q[15],q[1];
cx q[7],q[3];
cx q[7],q[21];
cx q[6],q[4];
cx q[13],q[11];
cx q[11],q[13];
cx q[12],q[11];
cx q[8],q[0];
cx q[5],q[19];
cx q[10],q[1];
cx q[4],q[7];
cx q[7],q[15];
cx q[18],q[23];
cx q[11],q[14];
cx q[5],q[3];
cx q[21],q[13];
cx q[2],q[1];
cx q[0],q[8];
cx q[6],q[15];
cx q[22],q[18];
cx q[24],q[19];
cx q[1],q[2];
cx q[13],q[7];
cx q[9],q[2];
cx q[21],q[12];
cx q[21],q[24];
cx q[22],q[8];
cx q[18],q[14];
cx q[2],q[14];
cx q[8],q[4];
cx q[3],q[16];
cx q[8],q[12];
cx q[22],q[23];
cx q[22],q[16];
cx q[24],q[21];
cx q[10],q[13];
cx q[10],q[23];
cx q[21],q[24];
cx q[9],q[8];
cx q[16],q[12];
cx q[18],q[23];
cx q[1],q[9];
cx q[2],q[3];
cx q[13],q[23];
cx q[5],q[7];
cx q[11],q[18];
cx q[16],q[9];
cx q[19],q[9];
cx q[12],q[15];
cx q[9],q[13];
cx q[6],q[2];
cx q[23],q[19];
cx q[1],q[5];
cx q[6],q[12];
cx q[24],q[23];
cx q[21],q[23];
cx q[17],q[21];
cx q[13],q[20];
cx q[17],q[13];
cx q[15],q[18];
cx q[16],q[3];
cx q[1],q[0];
cx q[5],q[4];
cx q[14],q[9];
cx q[2],q[14];
cx q[24],q[20];
cx q[11],q[5];
cx q[14],q[20];
cx q[24],q[20];
cx q[3],q[2];
cx q[6],q[18];
cx q[18],q[14];
cx q[17],q[23];
cx q[20],q[14];
cx q[16],q[22];
cx q[21],q[17];
cx q[3],q[2];
cx q[10],q[8];
cx q[3],q[11];
cx q[5],q[11];
cx q[16],q[19];
cx q[13],q[14];
cx q[24],q[15];
cx q[1],q[3];
cx q[9],q[8];
cx q[1],q[0];
cx q[3],q[14];
cx q[12],q[17];
cx q[20],q[23];
cx q[24],q[17];
cx q[3],q[11];
cx q[12],q[4];
cx q[21],q[7];
cx q[10],q[17];
cx q[15],q[23];
cx q[15],q[4];
cx q[16],q[12];
cx q[5],q[9];
cx q[5],q[7];
cx q[3],q[0];
cx q[19],q[12];
cx q[19],q[15];
cx q[5],q[4];
cx q[14],q[5];
cx q[6],q[12];
cx q[8],q[14];
cx q[16],q[22];
cx q[16],q[10];
cx q[7],q[17];
cx q[9],q[1];
cx q[2],q[11];
cx q[4],q[13];
cx q[0],q[7];
cx q[20],q[14];
cx q[15],q[17];
cx q[2],q[14];
cx q[6],q[13];
cx q[1],q[6];
cx q[0],q[5];
cx q[7],q[21];
cx q[9],q[16];
cx q[13],q[17];
cx q[10],q[2];
cx q[9],q[12];
cx q[12],q[14];
cx q[9],q[11];
cx q[19],q[20];
cx q[5],q[0];
cx q[8],q[19];
cx q[4],q[13];
cx q[19],q[21];
cx q[2],q[10];
cx q[1],q[9];
cx q[4],q[10];
cx q[16],q[24];
cx q[18],q[22];
cx q[8],q[19];
cx q[4],q[6];
cx q[19],q[15];
cx q[10],q[14];
cx q[7],q[15];
cx q[20],q[23];
cx q[14],q[5];
cx q[20],q[8];
cx q[5],q[8];
cx q[11],q[13];
cx q[6],q[4];
cx q[8],q[13];
cx q[2],q[1];
cx q[12],q[4];
cx q[17],q[21];
cx q[10],q[18];
cx q[13],q[21];
cx q[20],q[16];
cx q[9],q[13];
cx q[7],q[11];
cx q[3],q[10];
cx q[23],q[17];