for i=1:2000
    [block,param] = tg.getparamname(i);
    fprintf('%s -> %s\n',block, param);
end

% or
% tg.ShowParameters = 'on'