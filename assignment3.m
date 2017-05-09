% Anmol Monga : N18513543
clear all;
params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',8000,'num_mel_filts',40,'n_dct',15);
%% Q1
fpath1 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/piano_train.wav';
fpath2 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/trumpet_train.wav';
[train_features, train_labels] = create_set(fpath1, fpath2, params);
% Q2
fpath1 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/piano_test.wav';
fpath2 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/trumpet_test.wav';
[test_features, test_labels] = create_set(fpath1, fpath2, params);
% Q3
predicted_labels = predict_labels(train_features, train_labels,test_features);
[overall_accuracy, per_class_accuracy] = score_prediction(test_labels, predicted_labels);
%% Q5
clear all;
params = struct('win_size',1024,'hop_size',512,'min_freq',86,'max_freq',8000,'num_mel_filts',40,'n_dct',15);
fpath1 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/trombone_train.wav';
fpath2 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/trumpet_train.wav';
[train_features, train_labels] = create_set(fpath1, fpath2, params);
fpath1 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/trombone_test.wav';
fpath2 = '/Users/compume/Documents/MATLAB/audio_content/assignment_3/audio3/trumpet_test.wav';
[test_features, test_labels] = create_set(fpath1, fpath2, params);
predicted_labels = predict_labels(train_features, train_labels,test_features);
[overall_accuracy, per_class_accuracy] = score_prediction(test_labels, predicted_labels);