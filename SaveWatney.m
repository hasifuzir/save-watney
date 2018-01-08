scra_ID = fopen('scra_chunk_21','rb') %Open scrambled chunk
scra_21 = fread(scra_ID,inf,'double') %Read scrambled chunk
hist_ID = fopen('hist_chunk_21','rb') %Open histogram
hist_21 = fread(hist_ID,inf,'int32') %Read histogram
max_hist = max(hist_21) %Find element with the highest value
pos_hist = find(hist_21 == max_hist) %Store position of highest value element
scra_freq = freq_count(scra_21)  %Use function freq_count to create a histogram of the scrambled chunk's data
max_scra = max(scra_freq) %Find element with the highest value
pos_scra = find(scra_freq == max_scra)  %Store position of highest value element
offset = pos_scra - pos_hist %Calculate offset
unscra_21 = scra_21 - offset %Minus the offset from scrambled chunk
log_21 = char(unscra_21') %Convert scrambled chunk to characters
save_ID = fopen('watney.txt','at') %Open new file to save log
 fprintf(save_ID,'%s\r\n \b', log_21) %Print log to the file
fclose all
