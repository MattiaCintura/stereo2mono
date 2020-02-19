function stereo2mono(filename) % 'filename' is a variable, the input of the function
% Load an audio file
[y , fs] = audioread(filename);
% Check if is a stereo file
  if size(y , 2) == 2
    yMono = (y(: , 1) + y(: , 2)) / 2;
    audiowrite([filename(1 : end - 4) , '_mono.wav'] , yMono , fs) % Save a new mono audio file
  else
   disp('This file is already mono')
  end
endfunction