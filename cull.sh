
# remove ms* tags up to but not including the closing >.  Leaves a lot of manual cleanup of hanging >'s.
:%s/<\!--ms[^>]*//g
# remove the first instance of <!--ms*--> tags in every line, up to but not including the next tag's <.  May leave some ms tags at the end of the line.
:%s/<\!--ms[^>]*//g


%s/ target="_blank"//g
#%s/<font [^"]*>//g
%s/<.*font>//g
%s/<.*i>//g
%s/<.*em>//g
%s/<.*b>//g
%s/<.*strong>//g
%s/ lang="[^"]*"//g
%s/ dir="[^"]*"//g
%s/ font="[^"]*"//g
%s/ face="[^"]*"//g
%s/ size="[^"]*"//g
%s/ color="[^"]*"//g
%s/ style="[^"]*"//g
%s/ class="[^"]*"//g
%s/ width="[^"]*"//g
%s/ height="[^"]*"//g
%s/ hspace="[^"]*"//g
%s/ border="[^"]*"//g
%s/ valign="[^"]*"//g
%s/ align="[^"]*"//g
%s/ background="[^"]*"//g
%s/ cellpadding="[^"]*"//g
%s/ cellspacing="[^"]*"//g
#%s/<table [^"]*>//g

%s/&nbsp;/ /g
%s/Web://g
%s/E-mail: //g
%:q
:q
:/E-mail://g

%s/<td><img src="_themes\/nature-iuns\/anabull1.gif" alt="bullet"><\/td>//g
