#ifndef FFMPEF_PLUS_H
#define FFMPEF_PLUS_H

#include "ffmpef.h"

class ffmpef_plus : public ffmpef {
private:
  int cont = 3;
  int *ptr_newer;

public:
  virtual int fut(int one) override { return cont + one; }
  unsigned qu() { return cont; }
  ffmpef_plus(int arg) : ffmpef(arg), cont(arg) {
    ptr_newer = new int;
    *ptr_newer = cont;
  }
  //       ffmpef_plus() = default;
  virtual ~ffmpef_plus() { delete ptr_newer; }
  ffmpef_plus &operator=(ffmpef_plus &&) noexcept;
};

#endif // FFMPEF_PLUS_H
