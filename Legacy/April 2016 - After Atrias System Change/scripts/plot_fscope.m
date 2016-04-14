function plot_fscope(name, x_data, y_data, legend_data, title_data, x_label, y_label, y_lim, plots, shading)
    h = figure('name',name);
    
    % optional arguments
    if (~exist('shading', 'var'))
        shading = [];
    end
    
    if (~exist('plots', 'var'))
        plots = size(x_data,2);
    end
    

    if ~iscell(x_data)
            hold all;
            plot(x_data, y_data);
            legend(legend_data);
            title(title_data);
            xlabel(x_label); 
            ylabel(y_label);
            ylim(y_lim);
            set(findall(gca, 'Type', 'Line'),'LineWidth',2);
    else
        for i=1:plots
            subplot(plots,1,i);
            hold all;
            if ~isempty(shading)
                area(x_data{i},shading{i},'LineStyle','none','FaceColor',0.9*[1 1 1]);
                area(x_data{i},-shading{i},'LineStyle','none','FaceColor',0.9*[1 1 1],'HandleVisibility','off');
            end
             plot(x_data{i}, y_data{i});
            legend(legend_data{i});
            title(title_data{i});
            xlabel(x_label{i}); 
            ylabel(y_label{i});
            ylim(y_lim{i});
            set(findall(gca, 'Type', 'Line'),'LineWidth',2);
        end
    end
    
    set(findall(h,'-property','FontSize'),'FontSize',16)
    
end

