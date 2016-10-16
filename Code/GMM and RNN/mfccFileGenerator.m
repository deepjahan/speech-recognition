function c = mfccFileGenerator(wavfile,fileName)
[s, fs] = wavread(wavfile);
c=mfcc(s,fs);
c=c';
fid = fopen( fileName, 'wt' );
for i = 1:size(c,1)
    for j=1:size(c,2)
    fprintf( fid, '%f ', c(i,j));
    end
    if(i~=size(c,1))
    fprintf( fid, '\n');
end
end
