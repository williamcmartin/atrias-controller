function plot_fscope(fig_num, x_data, y_data, legend_data, title_data, x_label, y_label, y_lim)
    figure(fig_num);
    hold all;
    plot(x_data, y_data);
    legend(legend_data);
    title(title_data);
    xlabel(x_label); 
    ylabel(y_label);
    ylim(y_lim);
end

