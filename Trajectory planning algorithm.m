clear;
L1=Link([0 0 0 -pi/2],'standard');
L2=Link([-pi/2 0 0.423 0],'standard');
L3=Link([0 0 0.377 0],'standard');
L4=Link([pi/2 0.121 0 pi/2],'standard');
L5=Link([0 0.112 0 -pi/2],'standard');
L6=Link([0 0.148 0 0],'standard');
robot=SerialLink([L1 L2 L3 L4 L5 L6],'name','robotmotoman');     
t=0:0.03:3;
q1=[-0.1548,5.2195,-11.4555,6.2360,0.1548,2.3271];     
q2=[-0.2106,3.9921,-9.9235,7.1374,0.5380,-0.2084];
[q,qd,qdd]=jtraj(q1,q2,t);
figure(1);
robot.plot(q,'trail','r');



% figure(2);
% subplot(2,3,1);plot(t,q(:,1));title('q1');grid on
% subplot(2,3,2);plot(t,q(:,2));title('q2');grid on
% subplot(2,3,3);plot(t,q(:,3));title('q3');grid on
% subplot(2,3,4);plot(t,q(:,4));title('q4');grid on
% subplot(2,3,5);plot(t,q(:,5));title('q5');grid on
% subplot(2,3,6);plot(t,q(:,6));title('q6');grid on
% figure(3);
% subplot(2,3,1);plot(t,qd(:,1));title('q1');grid on
% subplot(2,3,2);plot(t,qd(:,2));title('q2');grid on
% subplot(2,3,3);plot(t,qd(:,3));title('q3');grid on
% subplot(2,3,4);plot(t,qd(:,4));title('q4');grid on
% subplot(2,3,5);plot(t,qd(:,5));title('q5');grid on
% subplot(2,3,6);plot(t,qd(:,6));title('q6');grid on
% figure(4);
% subplot(2,3,1);plot(t,qdd(:,1));title('q1');grid on
% subplot(2,3,2);plot(t,qdd(:,2));title('q2');grid on
% subplot(2,3,3);plot(t,qdd(:,3));title('q3');grid on
% subplot(2,3,4);plot(t,qdd(:,4));title('q4');grid on
% subplot(2,3,5);plot(t,qdd(:,5));title('q5');grid on
% subplot(2,3,6);plot(t,qdd(:,6));title('q6');grid on
