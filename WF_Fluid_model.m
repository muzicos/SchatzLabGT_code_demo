%%
clear all; close all; clc;

%% Baseline variables
filename = 'UVexp_Re22.17_dim_1.mat';
N_d = 30;
N_h = [3 3 3];
D = [0.8, 140];
track = true;

%% run weak formulation
[ksi, res, Q, q0, P] = ParEst_WF_Kolmo(filename, N_d, N_h, D, track);