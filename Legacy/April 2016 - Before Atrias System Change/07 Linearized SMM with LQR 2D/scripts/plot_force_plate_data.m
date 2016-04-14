% Plot AMTI force plate data from text file 
function [ F ] = plot_force_plate_data( file_name , show_plot )

    % optional arguments
    if (~exist('show_plot', 'var'))
        show_plot = true;
    end
    
    force_plate_data = load(file_name);
    N_force_plate_data = size(force_plate_data,1);
    freq_force_plate = 200;
    t_force_plate = 0:(1/freq_force_plate):(N_force_plate_data/freq_force_plate)-(1/freq_force_plate);
    
    if show_plot
        figure('Name','Force Plate Data');
        subplot(211);
        title('Vertical Force');
        plot(t_force_plate, force_plate_data(:,3));
        legend('F_z');
        subplot(212);
        title('Transverse Forces');
        plot(t_force_plate, force_plate_data(:,1:2));
        legend('F_x','F_y');
    end

    F = force_plate_data(:,1:3);
end

