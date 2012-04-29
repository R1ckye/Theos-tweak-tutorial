#import <SpringBoard/SpringBoard.h>

int i = 0;
%hook SpringBoard

- (void)deviceUnlockFailed {
i++;

if  (i==3) {
system("killall -9 SpringBoard");
} //Lezárja az if-et
%orig;
} //Lezárja a függvényt

%end //Lezárja a hook-ot