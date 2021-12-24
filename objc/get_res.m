// Saved as a.m
// Compile and run with `clang -framework AppKit a.m && ./a.out`
#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[])
{
    NSArray *screens = [NSScreen screens];
    NSScreen *s = [screens objectAtIndex:0];
    NSRect fr = [s frame];
    int w = fr.size.width;
    int h = fr.size.height;
    printf("%d x %d\n", w, h);

    // from https://stackoverflow.com/a/12589799/3046402
    NSDictionary *description = [s deviceDescription];
    NSSize displayPixelSize = [[description objectForKey:NSDeviceSize] sizeValue];
    CGSize displayPhysicalSize = CGDisplayScreenSize(
                   [[description objectForKey:@"NSScreenNumber"] unsignedIntValue]);

    w = displayPixelSize.width;
    h = displayPixelSize.height;
    printf("%d x %d\n", w, h);

    w = displayPhysicalSize.width;
    h = displayPhysicalSize.height;
    printf("%d x %d\n", w, h);

    // https://stackoverflow.com/a/59899904/3046402
    auto mainDisplayId = CGMainDisplayID();
    w = CGDisplayPixelsWide(mainDisplayId);
    h = CGDisplayPixelsHigh(mainDisplayId);
    printf("%d x %d\n", w, h);

    return 0;
}
