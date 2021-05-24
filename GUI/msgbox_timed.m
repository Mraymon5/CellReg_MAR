function msgbox_timed(text_msg,max_delay)
% function that will display a timed msgbox.
% this message box will either wait that the user close the window or close
% it after a given delay

mb = msgbox(text_msg);
t_start = tic;

while ishandle(mb) & toc(t_start) < max_delay
    % just wait
    pause(0.1)
end

if ishandle(mb)
    delete(mb)
end