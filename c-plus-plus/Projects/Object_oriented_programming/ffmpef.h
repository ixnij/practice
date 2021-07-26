#ifndef FFMPEF_H
#define FFMPEF_H

class ffmpef {
    private:
        enum { max };
        int* ptr_t;
    public:
//        ffmpef() = default;
        ffmpef(int value) { ptr_t = new int; *ptr_t = value;}
        virtual ~ffmpef() { delete ptr_t; }
        virtual int fut(int one) { return max + one; }
};

#endif // FFMPEF_H
