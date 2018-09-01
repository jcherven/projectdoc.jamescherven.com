a:162:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Our Lab Environment";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:46:"https://www.digitalocean.com/products/compute/";i:1;s:12:"DigitalOcean";}i:2;i:34;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" instances (AKA Droplets) with ";}i:2;i:97;}i:6;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:46:"https://www.digitalocean.com/products/storage/";i:1;s:22:"attached block Volumes";}i:2;i:128;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:181:" will be used in this lab environment. Droplets are inexpensive, highly available virtualized server instances that can very quickly be created, modified, destroyed, and configured.";}i:2;i:201;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:382;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:382;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"In order to make our test environment easily replicated and deterministic, we will also make use of ";}i:2;i:384;}i:11;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:34:"https://www.docker.com/what-docker";i:1;s:6:"Docker";}i:2;i:484;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:" images running in a container on our Digital Ocean Droplet host. An image of the test environment container will be available ";}i:2;i:529;}i:13;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:45:"https://hub.docker.com/r/jcherven/zfsproject/";i:1;s:4:"here";}i:2;i:656;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" so it can easily be pulled to the Docker host, examined, run, and modified on your own.";}i:2;i:710;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:798;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:798;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:268:"The test environment can easily be run on any server you have available, and DigitalOcean is only highly recommended for those without readily accessible resources or for the sake of convenience. This document will deal with setting up the environment on DigitalOcean.";}i:2;i:800;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1068;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1068;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:524:"Virtualized and containerized environments will understandably have a certain effect on storage and computing performance in our benchmarks, so we will be looking at our data in this context. The data produced will be synthetic and only compared with other similar environments. This serves our need for convenience as a first look at ZFS storage pools, but our tests will have the ability to run on hardware uncontainerized if that context is needed. The bash source for our configuration and test scripts are available on ";}i:2;i:1070;}i:21;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:38:"https://github.com/jcherven/zfsproject";i:1;s:6:"Github";}i:2;i:1594;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1643;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1644;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1646;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"DigitalOcean Droplet Environment";i:1;i:3;i:2;i:1646;}i:2;i:1646;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1646;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1690;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Create the Virtual Host";i:1;i:4;i:2;i:1690;}i:2;i:1690;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1690;}i:30;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:1722;}i:31;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1722;}i:32;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1722;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" Create an account at ";}i:2;i:1726;}i:34;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:48:"https://cloud.digitalocean.com/registrations/new";i:1;s:12:"DigitalOcean";}i:2;i:1748;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:233:". Payment information will be required, but running simple, temporary instances is very inexpensive. Billing is dependent on usage, so a $20 per month Droplet can end up costing as little as a dollar for running our test environment.";}i:2;i:1813;}i:36;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2046;}i:37;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2046;}i:38;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2046;}i:39;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2046;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:" Create a new virtualized server instance, known as a Droplet, from the upper-right hand corner of the window. ";}i:2;i:2050;}i:41;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:41:":screen_shot_2016-11-12_at_2.14.56_pm.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:2161;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2216;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2216;}i:44;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:2216;}i:45;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:2217;}i:46;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2217;}i:47;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2217;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:165:" DigitalOcean offers a preconfigured Docker 1.12 host running on Ubuntu 16.04, which we will use. (Information on installing Docker on an existing host can be found ";}i:2;i:2221;}i:49;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:42:"https://docs.docker.com/engine/getstarted/";i:1;s:4:"here";}i:2;i:2386;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"). The preconfigured host is found in the One-Click Apps section at the top of the screen. ";}i:2;i:2437;}i:51;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:42:"::screen_shot_2016-11-12_at_2.19.00_pm.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:2528;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2584;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2584;}i:54;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2584;}i:55;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2584;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" In the ";}i:2;i:2588;}i:57;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2596;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Choose a Size";}i:2;i:2598;}i:59;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2611;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:281:" heading, it is highly recommended to select the Standard $20/month instance which includes 2GB of RAM and two CPU in order to accommodate ZFS's requirements. Since charges are based on usage of the instance, actual cost of running our test environment will be significantly less. ";}i:2;i:2613;}i:61;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:42:"::screen_shot_2016-11-12_at_2.24.44_pm.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:2894;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2950;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2950;}i:64;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2950;}i:65;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2950;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" In the ";}i:2;i:2954;}i:67;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2962;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Choose Datacenter Region";}i:2;i:2964;}i:69;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2988;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:" heading, select either NYC1, SFO1, or FRA1 depending on your geographic location. These locations support ";}i:2;i:2990;}i:71;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:46:"https://www.digitalocean.com/products/storage/";i:1;s:7:"Volumes";}i:2;i:3097;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:", a feature that will be necessary for adding virtual block storage devices our test environment. ";}i:2;i:3155;}i:73;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:42:"::screen_shot_2016-11-12_at_2.32.59_pm.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:3253;}i:74;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3309;}i:75;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3309;}i:76;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3309;}i:77;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3309;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" In the ";}i:2;i:3313;}i:79;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3321;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Add Your SSH Keys";}i:2;i:3323;}i:81;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3340;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:171:" section, it is highly recommended to add a SSH public key from your PC. This will simplify secure remote access to the host after creation. More information can be found ";}i:2;i:3342;}i:83;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:95:"https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets";i:1;s:4:"here";}i:2;i:3513;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:3617;}i:85;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3618;}i:86;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3618;}i:87;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3618;}i:88;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3618;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" In the ";}i:2;i:3622;}i:90;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:3630;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Finalize and Create";}i:2;i:3632;}i:92;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:3651;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:" section, choose a hostname and complete the Droplet creation.";}i:2;i:3653;}i:94;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3715;}i:95;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3715;}i:96;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:3715;}i:97;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3719;}i:98;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Droplet Configuration";i:1;i:3;i:2;i:3719;}i:2;i:3719;}i:99;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3719;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3719;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:420:"If you are proceeding with a Droplet as your test environment host, we now will add block storage known as Volumes to the Droplet. These virtual block devices will be a simulacra of our ZFS storage pool's physical array, allowing physical and logical topologies to be configured in various ways. These instructions can be extended to support more disks than we create here to experiment with further zpool configuration.";}i:2;i:3752;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4173;}i:103;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:4173;}i:104;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4173;}i:105;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4173;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:" Select your newly created Droplet from your DO dashboard and find the Volumes area on the left. Click ";}i:2;i:4177;}i:107;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4280;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"Add Volume";}i:2;i:4282;}i:109;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4292;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" to get started. ";}i:2;i:4294;}i:111;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:41:":screen_shot_2016-11-12_at_3.09.06_pm.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:4311;}i:112;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4366;}i:113;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4366;}i:114;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4366;}i:115;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4366;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:179:" We're creating a limited, synthetic test environment and will have modest storage needs. Select the $0.10/month Volume set to 1GB, then give the device a sequential name such as ";}i:2;i:4370;}i:117;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4549;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"zfs1";}i:2;i:4551;}i:119;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4555;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:4557;}i:121;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4561;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"disk1";}i:2;i:4563;}i:123;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:4568;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:". A Volume created in this menu will automatically be attached to your Droplet. ";}i:2;i:4570;}i:125;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:41:":screen_shot_2016-11-12_at_3.14.07_pm.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:6:"nolink";}i:2;i:4650;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:" Because our ZFS environment deals with raw disks, you can ignore the mounting information screen which follows. Repeat this step to create four Volumes, sequentially named.";}i:2;i:4705;}i:127;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4878;}i:128;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4878;}i:129;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:4878;}i:130;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4878;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:277:"At this point we should have a remote virtual host running Ubuntu with Docker and four or more attached block devices. You can now SSH to the machine and review its configuration. It's recommended the get the Ubuntu system fully up to date before proceeding. Additionally, run ";}i:2;i:4880;}i:132;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5157;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"lsblk";}i:2;i:5159;}i:134;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5164;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:134:" to verify that your block devices are present. The Droplet's root device should be /dev/vda, and the Volumes should be /dev/sd{a..d}.";}i:2;i:5166;}i:136;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5301;}i:137;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5301;}i:138;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Host Configuration";i:1;i:3;i:2;i:5301;}i:2;i:5301;}i:139;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5301;}i:140;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5301;}i:141;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:232:"Ubuntu's ZFS packages will need to be installed on the Docker host, since the container layer of our test environment will rely on the ZFS modules in the host's kernel layer. Ubuntu 16.04 includes ZFS natively with the package name ";}i:2;i:5330;}i:142;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:27:"https://wiki.ubuntu.com/ZFS";i:1;s:3:"zfs";}i:2;i:5562;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:5597;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5598;}i:145;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5598;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Once installed, verify that ZFS is running: ";}i:2;i:5600;}i:147;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5649;}i:148;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:254:"# lsmod | grep zfs
zfs                  2813952  3
zunicode              331776  1 zfs
zcommon                57344  1 zfs
znvpair                90112  2 zfs,zcommon
spl                   102400  3 zfs,zcommon,znvpair
zavl                   16384  1 zfs";i:1;N;i:2;N;}i:2;i:5649;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5649;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"If one or more of these modules are missing, rebooting your Droplet may load them properly.";}i:2;i:5913;}i:151;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6004;}i:152;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6004;}i:153;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"To verify that Docker is up and running, run:";}i:2;i:6006;}i:154;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6056;}i:155;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:831:"# docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker Hub account:
 https://hub.docker.com

For more examples and ideas, visit:
 https://docs.docker.com/engine/userguide/";i:1;N;i:2;N;}i:2;i:6056;}i:156;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6056;}i:157;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"Now we should be ready to pull the test environment image from the Docker Hub public repo:";}i:2;i:6897;}i:158;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6993;}i:159;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:396:"# docker pull jcherven/zfsproject:latest
latest: Pulling from jcherven/zfsproject
6bbedd9b76a4: Already exists
fc19d60a83f1: Already exists
de413bb911fd: Already exists
2879a7ad3144: Already exists
668604fde02e: Already exists
6a9a3232045b: Pull complete
Digest: sha256:3ea80d41b59dc51b6fe3086c9e74c84d2d4118b9f502a8b3661d245a467c6c41
Status: Downloaded newer image for jcherven/zfsproject:latest";i:1;N;i:2;N;}i:2;i:6993;}i:160;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7398;}i:161;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7398;}}