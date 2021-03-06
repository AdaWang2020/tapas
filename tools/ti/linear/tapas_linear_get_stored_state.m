function [sstate, si] = tapas_linear_get_stored_state(data, model, ...
    inference, state)
%% Get the state that should be stored 
%
% aponteeduardo@gmail.com
% copyright (C) 2016
%

sstate = struct('graph', {cell(4, 1)}, 'llh', {cell(4, 1)});

sstate.graph{2} = state.graph{2}.y;
sstate.graph{3} = state.graph{3}.y;

sstate.llh{1} = state.llh{1};
sstate.llh{2} = state.llh{2};
sstate.llh{3} = state.llh{3};

si = state.nsample - inference.nburnin;

end

