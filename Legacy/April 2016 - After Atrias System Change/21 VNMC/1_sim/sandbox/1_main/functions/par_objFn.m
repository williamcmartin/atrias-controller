function f = par_objFn(param, varargin)

global simFile

sizeParam = size(param);

parN = sizeParam(2);

if parN == 1
    k=1;
    f(k) = feval(simFile, param(:,k), varargin);
else
    parfor k=1:parN
        f(k) = feval(simFile, param(:,k), varargin);
    end
end
    