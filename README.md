
Steps
=====

# Prepare environment
  Host: Windows 11

  VirtualBox: 
      https://download.virtualbox.org/virtualbox/7.0.8/VirtualBox-7.0.8-156879-Win.exe
      (or https://download.virtualbox.org/virtualbox/6.1.36/VirtualBox-6.1.36-152435-Win.exe)

  Guest: Ubuntu 20.04(https://releases.ubuntu.com/20.04.6/ubuntu-20.04.6-desktop-amd64.iso)

# Test in Guest
## Install dependencies
```
$ sudo apt install libavcodec58 ffmpeg -y
```

## Generate file
```sh
$ ./gen_file.sh
```

## Play Video and run tests
Download sample video file from: https://download.samplelib.com/mp4/sample-10s.mp4 or any other videos for your convenient.
Play videos by Videos application and run below tests.
```sh
$ ./test_copy.sh
```
