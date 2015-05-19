docker-ubuntu-vnc-desktop
=========================

From Docker Index
```
docker pull bjwolf/Desktop-lxde
```

Build yourself
```
git clone https://github.com/bjwolf/Desktop-lxde.git
docker build --rm -t userid/ubuntu-desktop-lxde-vnc .
```

Run
```
docker run -i -t -p 6080:6080 userid/ubuntu-desktop-lxde-vnc
```

Browse http://127.0.0.1:6080/vnc.html





