Ansible-Role: Simulated Webcam
==============================

This role installs a simulated webcam. The "cam" is simulated 
by ffmpeg. It reads a mp4-video in a loop and publishes it to
a RTSP-Proxy.


Requirements
------------

Any Debian or Ubuntu should do.

Role Variables
--------------

```
simulatedwebcam_loglevel: info
simulatedwebcam_logdest: "[stdout]"
simulatedwebcam_logfile: "mediamtx.log"
simulatedwebcam_user: "camuser"
simulatedwebcam_pass: "campass"
simulatedwebcam_readuser: "cam"
simulatedwebcam_readpass: "cam"

simulatedwebcam_tools:
  - ffmpeg

simulatedwebcam_mediamtx_version: "1.2.0"
simulatedwebcam_mediatmx_url: "https://github.com/bluenviron/mediamtx/releases/download/v{{simulatedwebcam_mediamtx_version}}/mediamtx_v{{simulatedwebcam_mediamtx_version}}_linux_amd64.tar.gz"

simulatedwebcam_rtsp_url: "rtsp://{{simulatedwebcam_user}}:{{simulatedwebcam_pass}}@localhost:8554/mystream"
simulatedwebcam_video: "/opt/webcamsimulation.mp4"
```

Example Playbook
----------------

```
    - hosts: localhost
      roles:
         - role: simulatedwebcam
           vars:
             simulatedwebcam_readuser: "videoserver"
             simulatedwebcam_readpass: "vs_password"
```

License
-------

GPL-3.0

Author Information
------------------

Wolfgang Hotwagner (https://www.ait.ac.at)
