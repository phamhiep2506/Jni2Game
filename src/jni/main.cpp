#include <stdio.h>
#include <fcntl.h>
#include <android/log.h>
#include <libevdev.h>

int main()
{
    struct libevdev *dev = NULL;
    int fd;
    int rc = 1;
    fd = open("/dev/input/event0", O_RDONLY | O_NONBLOCK);

    rc = libevdev_new_from_fd(fd, &dev);
}
