# ffmpeg command

## macos

```sh
ffmpeg -i ./python_nodejs_cpp_runner_demo.mov -vf scale=1080:-1 -r 10 output/ffout%3d.png

convert -delay 8 -loop 0 output/ffout*.png -layers optimize output/animation_opt.gif
```

Source: [gist](https://gist.github.com/tskaggs/6394639), [super user post for optimization](https://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality)

