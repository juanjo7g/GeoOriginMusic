function [fs] = featuresSelectionSFS(x, y)
    xtrain = x(1:741, :); xtest = x(742:end, :);
    ytrain = y(1:741); ytest = y(742:end);

    ypred = classify(xtest, xtrain, ytrain);
    sum(ytest ~= ypred);

    f = @(xtrain, ytrain, xtest, ytest) sum(ytest ~= classify(xtest, xtrain, ytrain));

    fs = sequentialfs(f,x,y)
end

