% Anmol Monga : N18513543
function predicted_labels = predict_labels(train_features, train_labels, test_features)
% Predict the labels of the test features,
% given training features and labels,
% using a nearest-neighbor classifier.
%
% Parameters
% ----------
% train features: NF x NE train matrix
% matrix of training set features (NF is number of
% features and NE train is number of training feature instances)
% train labels: 1 x NE train array
% vector of labels (class numbers) for each instance
% of train features
% test features: NF x NE test matrix
% matrix of test set features (NF is number of
% features and NE test is number of testing feature instances)
%
% Returns
% -------
% predicted labels: 1 x NE test array
% array of predicted labels
A = (train_features')* test_features;
[m,i]= max(A,[],1);
predicted_labels = train_labels(i);
end