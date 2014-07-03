function plot_fscope(name, x_data, y_data, legend_data, title_data, x_label, y_label, y_lim, plots, shading)
    figure('name',name);
    
    % optional arguments
    if (~exist('shading', 'var'))
        shading = [];
    end

    if ~iscell(x_data)
            hold all;
            plot(x_data, y_data);
            legend(legend_data);
            title(title_data);
            xlabel(x_label); 
            ylabel(y_label);
            ylim(y_lim);
    else
        for i=1:plots
            subplot(plots,1,i);
            hold all;
            if ~isempty(shading)
                area(x_data{i},shading{i},'LineStyle','none','FaceColor',0.9*[1 1 1]);
            end
            plot(x_data{i}, y_data{i});
            legend(legend_data{i});
            title(title_data{i});
            xlabel(x_label{i}); 
            ylabel(y_label{i});
            ylim(y_lim{i});
        end
    end
end

