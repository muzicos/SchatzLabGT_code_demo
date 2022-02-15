%%
clear all; close all; clc;

%% Baseline variables
filename = 'UVexp_Re22.17_dim_1.mat';
N_d = 30;       % number of integration domains
N_h = [3 3 3];  % [max harmonic in x,y resp. (>=0), max harmonic in time (>=1)]
D = [0.8, 140]; % [spatial-area of int domain as fraction of full area, time-length of integration domain in grid points]
track = false;  % boolean to track library filling in cmd window

%% run weak formulation (Re = 22.17 -> mean values c1 = 0.889, c2 = 3.96e-6, c3 = 0.077)
[ksi, res, Q, q0, P] = ParEst_WF_Kolmo(filename, N_d, N_h, D, track);