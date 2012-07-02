#include <math.h>

/* Integer versions of math functions from libm.a */
int i_acos(x)
     int x;
{
  return((int) acos((double) x));
}

int i_asin(x)
     int x;
{
  return((int) asin((double) x));
}

int i_atan(x)
     int x;
{
  return((int) atan((double) x));
}

int i_ceil(x)
     int x;
{
  return((int) ceil((double) x));
}

int i_cos(x)
     int x;
{
  return((int) cos((double) x));
}

int i_cosh(x)
     int x;
{
  return((int) cosh((double) x));
}

int i_exp(x)
     int x;
{
  return((int) exp((double) x));
}

int i_fabs(x)
     int x;
{
  return((int) fabs((double) x));
}

int i_floor(x)
     int x;
{
  return((int) floor((double) x));
}

int i_log(x)
     int x;
{
  return((int) log((double) x));
}

int i_log10(x)
     int x;
{
  return((int) log10((double) x));
}

int i_sin(x)
     int x;
{
  return((int) sin((double) x));
}

int i_sinh(x)
     int x;
{
  return((int) sinh((double) x));
}

int i_sqrt(x)
     int x;
{
  return((int) sqrt((double) x));
}

int i_tan(x)
     int x;
{
  return((int) tan((double) x));
}

int i_tanh(x)
     int x;
{
  return((int) tanh((double) x));
}

int i_acosh(x)
     int x;
{
  return((int) acosh((double) x));
}

int i_asinh(x)
     int x;
{
  return((int) asinh((double) x));
}

int i_atanh(x)
     int x;
{
  return((int) atanh((double) x));
}

int i_cbrt(x)
     int x;
{
  return((int) cbrt((double) x));
}

int i_erf(x)
     int x;
{
  return((int) erf((double) x));
}

int i_erfc(x)
     int x;
{
  return((int) erfc((double) x));
}

int i_expm1(x)
     int x;
{
  return((int) expm1((double) x));
}

int i_log1p(x)
     int x;
{
  return((int) log1p((double) x));
}

int i_exp2(x)
     int x;
{
  return((int) exp2((double) x));
}

int i_log2(x)
     int x;
{
  return((int) log2((double) x));
}

int i_j0(x)
     int x;
{
  return((int) j0((double) x));
}

int i_j1(x)
     int x;
{
  return((int) j1((double) x));
}

int i_jn(n, x)
     int n, x;
{
  return((int) jn((double) n, (double) x));
}

int i_y0(x)
     int x;
{
  return((int) y0((double) x));
}

int i_y1(x)
     int x;
{
  return((int) y1((double) x));
}

int i_yn(n, x)
     int n, x;
{
  return((int) yn((double) n, (double) x));
}

int i_lgamma(x)
     int x;
{
  return((int) lgamma((double) x));
}

int i_aint(x)
     int x;
{
  return((int) aint((double) x));
}

int i_anint(x)
     int x;
{
  return((int) anint((double) x));
}

int i_rint(x)
     int x;
{
  return((int) rint((double) x));
}

int i_irint(x)
     int x;
{
  return((int) irint((double) x));
}

int i_nint(x)
     int x;
{
  return((int) nint((double) x));
}

int i_copysign(x, y)
     int x, y;
{
  return((int) copysign((double) x, (double) y));
}

int i_hypot(x, y)
     int x, y;
{
  return((int) hypot((double) x, (double) y));
}

int i_compount(x, y)
     int x, y;
{
  return((int) compound((double) x, (double) y));
}

int i_annuity(x, y)
     int x, y;
{
  return((int) annuity((double) x, (double) y));
}

int i_atan2(y, x)
     int x, y;
{
  return((int) atan2((double) y, (double) x));
}

int i_frexp(v, ep)
     int v, *ep;
{
  return((int) frexp((double) v, ep));
}

int i_ldexp(v, e)
     int v, e;
{
  return((int) ldexp((double) v, e));
}

int i_modf(v, ep)
     int v, *ep;
{
  double r, p;

  r = (int) modf((double) v, &p);
  *ep = (int) p;
  return(r);
}

int i_pow(x, y)
     int x, y;
{
  return((int) pow((double) x, (double) y));
}
