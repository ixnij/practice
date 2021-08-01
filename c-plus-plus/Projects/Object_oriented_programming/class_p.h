#ifndef CLASS_P_H
#define CLASS_P_H

class p {
  int private_variable_in_class;
  short panicer = 3;

public:
  p(int arg) : private_variable_in_class(arg) {}
  p() : private_variable_in_class(1) {}
  virtual ~p();
  virtual int pointered(int *p) = 0;
  virtual int max(int, int) = 0;
  virtual int counter();
};

class anotr : public p {
public:
  virtual int pointered(int *p) override { return *p; }
  virtual inline int max(int, int) override;
  virtual inline int counter() override;
};

#endif // CLASS_P_H
