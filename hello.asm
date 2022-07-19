#include "includes/ti84pce.inc"

 .assume ADL=1
 .org userMem-2
 .db tExtTok,tAsm84CeCmp

  call _homeup
  call _ClrScrnFull
  ld hl,Message
  call _PutS
  call _GetKey
  call _ClrScrnFull
  res donePrgm,(iy+doneFlags)
  ret

Message:
  .db "Hello TI-84 Plus CE from Z80 Assembly!!!",0