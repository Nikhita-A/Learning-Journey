FILE SYSTEM
------------

[Refer here for detailed notes on file system](https://directdevops.blog/2020/08/08/linux-classroom-series-07-aug-2020/)


MOUNTING
---------

[Refer here for detailed notes on mounting](https://directdevops.blog/2020/08/12/linux-classroom-series-11-aug-2020/)

* Every volume is considered to be a block device cause it uses blocks to store
* `lsblk`: list the block devices
* `blkid`: list block ids
* When a disk(volume) is added to a linux machine, it gets stored in `/dev`
* Whenever we want to mount any disk, we first need to have a filesystem(xfs, btrfs, ext4 etc...)
* `mkfs`: to create a filesystem

```bash
# -t: type of file system
# /dev/xvdf: disk/device path
sudo mkfs -t ext4 /dev/xvdf

# create a directory /extra
mkdir /extra

# mount the disk to directory
sudo mount /dev/xvdf /extra
```

* By mounting the disk to a directory, whatever is created in that particular directory gets saved in the disk mounted to it


VOLUMES AND PARTITIONS
-----------------------

[Refer here for detailed notes on volumes and partitions](https://directdevops.blog/2020/08/12/linux-classroom-series-12-aug-2020/)

* `Snapshot`: _snapshot_ is nothing but a copy of the disk
* `Volume group`: 
    * This is simply a collection of physical volumes. 
    * _Volume groups_ are not mountable. 
    * These are like a kind of raw disks.
* `Logical volumes`: 
    * These are equivalent to disk partitions
    * _Logical volumes_ are created from the physical volumes 
    * They can be mounted on to directories or folders but internally the data will be getting stored in the physical volumes(disks) itself
* `Extents`: 
    * If we basically divide the volumes further, they are called _extents_
        * Physical extents: Physical volumes can be divided into _physical extents_
        * Logical extents: Logical volumes can be divided into logical extents_
    