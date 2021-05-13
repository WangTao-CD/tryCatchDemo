# tryCatchDemo

Simulate a multi-threaded development environment like POS. You can see test code in ViewController's **trycatch** func.

1. syncThrowException

   Try catch can capture exception,logs like this:

   ~~~
   2021-05-13 10:21:36.955352+0800 TryCatchDemo[56350:3492813] 1==========
   
   2021-05-13 10:21:36.955645+0800 TryCatchDemo[56350:3492813] Catch exception = Unexpected message type received
   
   2021-05-13 10:21:36.955782+0800 TryCatchDemo[56350:3492813] 3==========
   
   2021-05-13 10:21:36.956027+0800 TryCatchDemo[56350:3492813] finally==========
   ~~~

2. asyncThrowException

   Will crash.

