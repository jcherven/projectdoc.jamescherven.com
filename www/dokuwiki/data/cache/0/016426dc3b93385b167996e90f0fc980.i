a:69:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"ZFS: A Primer";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:28;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Why ZFS?";i:1;i:3;i:2;i:28;}i:2;i:28;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:28;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:28;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:528:"A typical storage administration scenario involves the sysadmin in numerous tasks that can be considered somewhat arcane when we step back and really look at what we're doing. The logical storage space is often coupled to some storage device's physical capacity in a direct way. That device has its own partition table and filesystem that must be mounted. If that device fails or suffers low level corruption, it needs to be unmounted, the disk replaced, the partition rewritten, then the data copied onto the replacement media.";}i:2;i:48;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:576;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:576;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:805:"There are fewer and fewer susbsystems in modern computing that still require this much low-level management by the system administrator. The ideas behind filesystems that are still used today were devised at a time when today's device storage capacity was inconceivable and the mounting of nontrivial storage spaces was very computationally expensive. Many of the compromises made are dogmatic principles of the prevailing storage models today. We've built technology directly on those storage models without really updating the storage model itself. If hard drives are all but guaranteed to fail at some point in time, why do our filesystems assume immortal physical media in their design? Why is the swapping of failed drives or the repair of a corrupted filesystem sometimes such a painful undertaking?";}i:2;i:578;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1383;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1383;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:694:"Compare block storage to other types of storage, such as RAM. When a DIMM fails, the machine is powered down, the DIMM module is replaced, and the machine is powered back up. To the virtual memory subsystem, the recognition and initialization of that new hardware and its resources is abstracted away so it can carry on with its duties. Some types of modern RAM also protect against silent data corruption, rebuilding corrupted data and refusing to pass data that it believes is incorrect. This exact behavior directly inspired the design of the Zettabyte File System, or ZFS, so named as its mathematical limits for a single storage pool extend into the order of a zettabyte (and well beyond).";}i:2;i:1385;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2079;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2081;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Copy-On-Write Filesystems";i:1;i:3;i:2;i:2081;}i:2;i:2081;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2081;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2081;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:950:"ZFS is not the only filesystem taking advantage of modern ideas on data storage models, but it was one of the first and is currently one of the most mature. Microsoft's ReFS, Btrfs, WAFL, and NILFS are some other examples of filesystems that take advantage of a data storage model known as copy-on-write (COW). This is a perfectly descriptive name for how the model works: when a block is modified, a copy of it is made instead of being modified directly. The copy is then referenced as the active data, and the old block is dereferenced and marked as free. As a COW filesystem gets used more and more, the data in use crawls toward the end of the disk. When there are no more blocks ahead of the last written one, data starts being written over free blocks at the beginning of the disk. Even on small storage pools, this can take quite a long time. Even so, COW filesystems have have features that help prevent losing that data if you still need it.";}i:2;i:2118;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3068;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3068;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:459:"The greatest advantage of COW is the ability take snapshots of the data set that are very cheap on disk space but very resilient and useful for backup and restoration. The dereferenced blocks, while marked as free, provide a copy that can be referenced if you'd like to restore previous data. This is no small advantage over filesystems which simply write blocks directly to free space on disk, because many backup and restoration tasks are made much simpler.";}i:2;i:3070;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3529;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3529;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:489:"Why are snapshots so inexpensive in terms of disk space? COW filesystems cryptographically hash each data block and adds that hash as a node on a tree structure known as a Merkle Tree, which is simply a tree of hashes. Each hash block has a direct relationship with the data block. The snapshot taken is a copy of the Merkle Tree, which can be used to rebuild its corresponding data tree. Thus, snapshots of the dataset take up only the amount of space per block as its cryptographic hash.";}i:2;i:3531;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4020;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4020;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:584:"This is actually a side effect of a more direct purpose for hashing each data block, which is to assure data integrity. Since each hash block has a direct relationship with its data block, data blocks can be checked against its hash block to detect silent corruption. If the data block does not match the hash block, the filesystem believes with fairly high certainty that it is corrupted and can correct the data. COW filesystems take full advantage of cheap computing capacity in the service of assuring the solipsitic trust in stored data as well as simplifying its administration.";}i:2;i:4022;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4606;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4608;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"More Than A Filesystem";i:1;i:3;i:2;i:4608;}i:2;i:4608;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4608;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4608;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"ZFS is really a subsystem of the ";}i:2;i:4642;}i:35;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:4675;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:564:". The idea that it is a filesystem actually requires a shift in thought about what the filesystem's responsibilities are. For ZFS, this includes volume management and assurance of data integrity, which in other storage models are usually software layers above the filesystem. COW is most likely the next step forward for disk filesystems in general. In this future where more disk subsystems take advantage of the COW model, disk subsystems that incorporate storage administration features such as volume management should become the rule rather than an exception.";}i:2;i:4677;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5241;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5241;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:623:"The ZFS subsystem gives us management commands that allow us to manage logical storage pools, organize datasets, and arrange physical disks into arrays of various levels of redundancy. In order to get system administrators away from a dogma of logical storage space having a one-to-one relationship to the physical capacities of disks, ZFS wants us to consider volume management a feature of the filesystem. It underlies the block-level storage and organization of data on the physical media, but it also is a set of comprehensive commands and subcommands that sysadmins use to organize their entire storage infrastructure.";}i:2;i:5243;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5867;}i:41;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5867;}i:42;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"ZFS On Linux";i:1;i:3;i:2;i:5867;}i:2;i:5867;}i:43;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5867;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5867;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:249:"ZFS was originally developed at Sun for the Solaris platform. Sun's code was originally open source, but upon Sun's assimilation into Oracle further development on ZFS was made proprietary. Fortunately, the existing Sun code was forked to start the ";}i:2;i:5891;}i:46;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:34:"http://open-zfs.org/wiki/Main_Page";i:1;s:7:"OpenZFS";}i:2;i:6140;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:216:" project and licensed under the CDDL. It is today considered a very mature, stable community project. This implementation is used natively in other *nix systems such as FreeBSD, NetBSD, and OpenIndiana, among others.";}i:2;i:6186;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6402;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6402;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:195:"The Lawrence Livermore National Laboratory, in service of their own computing purposes, has produced a native ZFS for Linux as a loadable kernel module. This work is open source and available as ";}i:2;i:6404;}i:51;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:25:"http://www.zfsonlinux.org";i:1;s:12:"ZFS on Linux";}i:2;i:6599;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:" (ZoL). The LKM approach is necessary to work around the copyleft restrictions of the ";}i:2;i:6641;}i:53;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"GPL";}i:2;i:6727;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:" that prohibits OpenZFS from being included in the Linux kernel binaries.";}i:2;i:6730;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6803;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6803;}i:57;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:6805;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6807;}i:59;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"=>";}i:2;i:6808;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:" Continue reading: ";}i:2;i:6810;}i:61;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:14:"labenvironment";i:1;s:19:"Our Lab Environment";}i:2;i:6829;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6867;}i:63;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"=>";}i:2;i:6868;}i:64;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:6870;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:6872;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6872;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6872;}i:68;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6872;}}