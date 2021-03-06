# Modified by Princeton University on June 9th, 2015
# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T1 Processor File: sjm_5.cmd
# Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
# 
# The above named program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public
# License version 2 as published by the Free Software Foundation.
# 
# The above named program is distributed in the hope that it will be 
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public
# License along with this work; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
# 
# ========== Copyright Header End ============================================
CONFIG id=30 iosyncadr=0x7EF00BEEF00
TIMEOUT 10000000
IOSYNC
#==================================================
#==================================================

WRITEIO  0x0000061df8fad380 4 0x4a15bc2e 

WRITEMSKIO  0x000006121c7022c0 0xff00  0x59570335 0x4a08a562 0x00000000 0x00000000 

WRITEBLKIO  0x0000060d36543700 +
        0x791956b1 0xe71d7b5a 0x04c566bf 0x74a77b53 +
        0xd14c7abe 0x93d4fb52 0x91fe8cdd 0x2a402778 +
        0x31d78711 0xee1d72d3 0x778cdc14 0x70b87bb3 +
        0x961dfb73 0xd8341532 0x28a01838 0xcfc4d754 

READMSKIO   0x000006121c7022c0 0xff00  0x59570335 0x4a08a562 0x00000000 0x00000000 

WRITEBLKIO  0x0000060b2070eac0 +
        0x721e921c 0x8c7a8ee3 0x39bbbd9b 0xd268fbdc +
        0xc4a1f7ce 0xba29076d 0x7c156513 0xbe9aa7c8 +
        0x801e43d0 0x96b16446 0xd198055b 0xf0e5ef6f +
        0xade701c9 0x68790481 0x07fe59ec 0x77bb8d47 

WRITEBLKIO  0x0000061a83683400 +
        0x57a70a49 0x1439bc71 0x31bca453 0x1a92779b +
        0xc17494ef 0xeffeef81 0x376f4933 0xae4e97e8 +
        0xcf506ca3 0x042707e0 0xfca51bb2 0xbae7d0b2 +
        0xa363afb8 0x2a5c5357 0xdafcf5db 0x11294838 

WRITEMSKIO  0x00000605bc8b48c0 0xf0ff  0xa411f7f0 0x00000000 0x0490eb82 0xd8b2b4b2 

READBLKIO  0x0000060d36543700 +
        0x791956b1 0xe71d7b5a 0x04c566bf 0x74a77b53 +
        0xd14c7abe 0x93d4fb52 0x91fe8cdd 0x2a402778 +
        0x31d78711 0xee1d72d3 0x778cdc14 0x70b87bb3 +
        0x961dfb73 0xd8341532 0x28a01838 0xcfc4d754 

WRITEMSKIO  0x00000608dfddfdc0 0x000f  0x00000000 0x00000000 0x00000000 0x6feed3ef 

WRITEBLK  0x0000000a8bd8de00 +
        0xe643fb22 0x628d8687 0x3b92a06b 0x6c1c5b86 +
        0x04a5b2a2 0x9f736254 0x2bfd54be 0x7abc03df +
        0x81c2a9d3 0x9fcc7d71 0x1ae69b10 0xde42334f +
        0xf0a8956e 0xc0ca7cf2 0x0c2a93b7 0x9264f5a1 

READMSKIO   0x00000605bc8b48c0 0xf0ff  0xa411f7f0 0x00000000 0x0490eb82 0xd8b2b4b2 

WRITEMSKIO  0x0000060806138280 0xff00  0x15674d3b 0x684888d7 0x00000000 0x00000000 

READBLK  0x0000000a8bd8de00 +
        0xe643fb22 0x628d8687 0x3b92a06b 0x6c1c5b86 +
        0x04a5b2a2 0x9f736254 0x2bfd54be 0x7abc03df +
        0x81c2a9d3 0x9fcc7d71 0x1ae69b10 0xde42334f +
        0xf0a8956e 0xc0ca7cf2 0x0c2a93b7 0x9264f5a1 

WRITEIO  0x00000615a1487080 4 0x32021f91 

READIO  0x0000061df8fad380 4 0x4a15bc2e 
WRITEBLK  0x0000000cc8fec440 +
        0x4dafed1b 0x0b915ac4 0x3aa658ef 0x13c6fd65 +
        0x2e583815 0x5fafe5ff 0x130bfd3c 0x19d3c078 +
        0xc8700679 0x86b5dbe5 0x939ed234 0xa3c70d5a +
        0x2f9434a5 0x09d65923 0x37bab54f 0x8729575b 

READIO  0x00000615a1487080 4 0x32021f91 
WRITEIO  0x0000060892872840 4 0x3e8a4e86 

READBLK  0x0000000cc8fec440 +
        0x4dafed1b 0x0b915ac4 0x3aa658ef 0x13c6fd65 +
        0x2e583815 0x5fafe5ff 0x130bfd3c 0x19d3c078 +
        0xc8700679 0x86b5dbe5 0x939ed234 0xa3c70d5a +
        0x2f9434a5 0x09d65923 0x37bab54f 0x8729575b 

READMSKIO   0x00000608dfddfdc0 0x000f  0x00000000 0x00000000 0x00000000 0x6feed3ef 

READIO  0x0000060892872840 4 0x3e8a4e86 
READMSKIO   0x0000060806138280 0xff00  0x15674d3b 0x684888d7 0x00000000 0x00000000 

WRITEBLKIO  0x0000060813b88200 +
        0x6ab078d4 0x5149d590 0x5fe25fd0 0x7f17fd7a +
        0x0ed5c2dd 0xb8403e45 0x81f2f05e 0xf3e0002e +
        0x6aea8980 0x253aece7 0x04b5b061 0x87bbcc4a +
        0xb92dd1e9 0xbb1b9249 0x074c8a69 0x54d32bd9 

WRITEIO  0x00000606b710b700 4 0x08412425 

WRITEBLK  0x00000006e13e3e40 +
        0xc1384d40 0x882558fe 0xa06d0367 0x9376b7eb +
        0x6c878754 0x5740b801 0x2f6ac2ff 0x7f4734a8 +
        0x7f64ecaa 0x16971640 0x39dcc9e6 0x9972f51c +
        0xa7df4a24 0x9d096e99 0xa1804e9d 0x887f31af 

READBLK  0x00000006e13e3e40 +
        0xc1384d40 0x882558fe 0xa06d0367 0x9376b7eb +
        0x6c878754 0x5740b801 0x2f6ac2ff 0x7f4734a8 +
        0x7f64ecaa 0x16971640 0x39dcc9e6 0x9972f51c +
        0xa7df4a24 0x9d096e99 0xa1804e9d 0x887f31af 

WRITEMSKIO  0x0000061504dc7400 0x0fff  0x00000000 0xf07c41c9 0x946ab7b9 0x57b3f47e 

WRITEIO  0x0000061a0e7ff480 4 0xc535cb58 

WRITEBLK  0x0000000ff90b2140 +
        0x35056c9c 0x4915e2d2 0x2156efa5 0xa6a5ba17 +
        0x00eea9de 0x947c163c 0x336f4f42 0x2fc8805b +
        0x7afb0254 0x9d343ee4 0x243d491f 0x09b7649e +
        0xbf2c58df 0x5da86510 0x7281cc52 0x526f4e95 

WRITEMSKIO  0x0000061171f0dbc0 0x0f00  0x00000000 0x10094b70 0x00000000 0x00000000 

WRITEBLKIO  0x0000060cc32ff580 +
        0xa310f662 0xc0c8d254 0xe841112f 0x59bb9c66 +
        0x3f9f78fd 0xc55c3456 0xcfd5d142 0xf08c89bd +
        0xb00039f7 0x7a077370 0x46017091 0xe573f5bf +
        0x9d5f07d9 0x6ad0e375 0xddac3c23 0x4e01fca6 

READMSKIO   0x0000061504dc7400 0x0fff  0x00000000 0xf07c41c9 0x946ab7b9 0x57b3f47e 

READBLK  0x0000000ff90b2140 +
        0x35056c9c 0x4915e2d2 0x2156efa5 0xa6a5ba17 +
        0x00eea9de 0x947c163c 0x336f4f42 0x2fc8805b +
        0x7afb0254 0x9d343ee4 0x243d491f 0x09b7649e +
        0xbf2c58df 0x5da86510 0x7281cc52 0x526f4e95 

READBLKIO  0x0000060b2070eac0 +
        0x721e921c 0x8c7a8ee3 0x39bbbd9b 0xd268fbdc +
        0xc4a1f7ce 0xba29076d 0x7c156513 0xbe9aa7c8 +
        0x801e43d0 0x96b16446 0xd198055b 0xf0e5ef6f +
        0xade701c9 0x68790481 0x07fe59ec 0x77bb8d47 

READIO  0x00000606b710b700 4 0x08412425 
