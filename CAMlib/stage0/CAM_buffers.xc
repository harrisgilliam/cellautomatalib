#include <CAM/CAM.h>
#include <CAM/CAM_err.h>
#include <CAM/CAM_buffers.h>


void CAM_resize_buffer(CAM8 cam8, BUFFER b, int size)
{
  T_ENTER("CAM_resize_buffer");
  CAMABORT(!b, (cam8->err, "buffer is NULL"));

  if (b->sz != size) {
    HEAP hp = b->hp;

    CAM_free(cam8, b);

    if (hp)
      bcopy((char *) _alloc_mem(cam8, hp, size), (char *) b, sizeof(Inbuf));
    else
      bcopy((char *) _alloc_buffer(cam8, size), (char *) b, sizeof(Buffer));
  }
  T_LEAVE;
}

void CAM_begin_defaults(CAM8 cam8)
{
  if (cam8->def->defining_defaults >= 0)
    cam8->def->defining_defaults++;
}

void CAM_end_defaults(CAM8 cam8)
{
  if (cam8->def->defining_defaults > 0)
    cam8->def->defining_defaults--;
}

BUFFER CAM_reg_default(CAM8 cam8, int d)
{
  return(cam8->def->defbuf[d]);
}
