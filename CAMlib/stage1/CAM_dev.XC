#include <CAM/CAM.H>
#include <CAM/CAM_err.H>
#include <CAM/CAM_instr.H>
#include <CAM/CAM_init.H>
#include <CAM/CAM_step.H>
#include <CAM/CAM_dev.H>



int CAM_dev(CAM8 cam8, int r, int v)
{
  T_ENTER("CAM_dev");
  CAMABORT(ioctl(cam8->camfd, r, (char *) &v) == -1,
	   (cam8->err, "ioctl call failed"));
  T_LEAVE;
  return(v);
}

void CAM_set_scan(CAM8 cam8, unsigned int hblank, unsigned int vblank)
{
  T_ENTER("CAM_set_scan");
  CAMABORT(vblank >= CAM_v_total, (cam8->err, "Invalid VSYNC value!"));
  CAMABORT(hblank >= (CAM_h_total - 4), (cam8->err, "Invalid HSYNC value!"));

  SET_SCAN_LEN(cam8, CAM_h_total - hblank, CAM_v_total - vblank);
  SET_BLANK_LEN(cam8, hblank, vblank);
  T_LEAVE;
}

void CAM_reset_ifc(CAM8 cam8)
{
  T_ENTER("CAM_reset_ifc");
  cam8->mp->num_layers = 16;

  INITIATE_IFC_RESET(cam8);
  CAM_reset_list(cam8);
  CLEAR_IFC_INTS(cam8);
  CLEAR_EXCEPTION(cam8);
  ENABLE_IFC_EXCEPTIONS(cam8);
#ifdef SIMULATOR_INTERFACE
  ENABLE_IFC_INTS(cam8);
#endif
  T_LEAVE;
}  

void CAM_reset_cam(CAM8 cam8)
{
  T_ENTER("CAM_reset_cam");
  %delay	128 clocks;
  CAM__reset_cam(cam8);
  %*step*;
  T_LEAVE;
}

void CAM_reset_video(CAM8 cam8)
{
  int i;
  T_ENTER("CAM_reset_video");

  if (cam8->mp->scan_io_delay < 62) {
    cam8->mp->scan_io_delay = 62;
  }

  %site-src	site;
  %display	host;

  %scan-io	0 immediate-word;
  
  for(i = 0; i < 16; i++)
    %scan-io	((CAM_bt858_data[i])<<16) immediate-word;
    
  %scan-io	0xFF immediate-word;

  %scan-index;

  %*step*;
  T_LEAVE;
}

void CAM_reset_sync(CAM8 cam8)
{
  T_ENTER("CAM_reset_sync");
  switch (CAM_SBus_clock) {

  case 20: {
    CAM_set_scan(cam8, 88, 13);
    break;
  }
  case 21: {
    CAM_set_scan(cam8, 129, 13);
    break;
  }
  default:
    CAM_set_scan(cam8, 247, 13);
  }
  T_LEAVE;
}
 
