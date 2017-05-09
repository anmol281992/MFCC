% Anmol Monga : N18513543
function [overall_accuracy, per_class_accuracy] = score_prediction(test_labels, predicted_labels)
comp = test_labels - predicted_labels;
k = find(comp == 0);
overall_accuracy = (length(k)/length(test_labels)) * 100 ;
i = find(test_labels == 1);
j = find(test_labels == 2);
per_class_accuracy = zeros(1,2);
per_class_accuracy(1) = length(find(test_labels(k) == 1))/length(test_labels(i))*100;
per_class_accuracy(2) = length(find(test_labels(k) == 2))/length(test_labels(j))*100;
end