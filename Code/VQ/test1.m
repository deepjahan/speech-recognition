function test1()
  recObj = audiorecorder;
  f= figure ;
  uicontrol(f,'style','pushbutton','position',[10 10 200 20],'String','Record','CallBack',@buttonCallback) ;
  function buttonCallback(~,~)
      disp('Recording... start talking');
      recObj.recordblocking(2);
      disp('Stopped.');
      b= getaudiodata(recObj);
      wavwrite(b, 8000, 8, 's.wav');
  end
end