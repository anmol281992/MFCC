% Anmol Monga : N18513543
function [features, labels] = create_set(fpath1, fpath2, params)
% Compute features and parameters for training data.
%
% Parameters
% ----------
% fpath1: string
% full path to audio file with training data from class 1
% fpath2: string
% full path to audio file with training data from class 2
% params: struct
% Matlab structure with fields are win size, hop size,
% min freq, max freq, num mel filts, n dct, the parameters
% needed for computation of MFCCs
%
% Returns
% -------
% features: NF x NE matrix
% matrix of training/testing set features (NF is number of
% features and NE is number of feature instances)
% labels: 1 x NE array
% vector of training/testing labels (class numbers) for each instance
% of features
[mfccs1, fs_mfcc1] = compute_mfccs(fpath1, params.win_size, params.hop_size,params.min_freq, params.max_freq, params.num_mel_filts, params.n_dct);
[mfccs2, fs_mfcc2] = compute_mfccs(fpath2, params.win_size, params.hop_size,params.min_freq, params.max_freq, params.num_mel_filts, params.n_dct);
features = [mfccs1 mfccs2];
[n,m] = size(mfccs1);
label1 = ones(1,m);
[n,m] = size(mfccs2);
label2 = 2*ones(1,m);
labels = [label1 label2];
end