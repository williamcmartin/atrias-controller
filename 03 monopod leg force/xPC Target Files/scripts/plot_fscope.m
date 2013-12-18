function plot_fscope(name, x_data, y_data, legend_data, title_data, x_label, y_label, y_lim, plots)
    figure('name',name);
    
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
            plot(x_data{i}, y_data{i});
            legend(legend_data{i});
            title(title_data{i});
            xlabel(x_label{i}); 
            ylabel(y_label{i});
            ylim(y_lim{i});
        end
    end
end

