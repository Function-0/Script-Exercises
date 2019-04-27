#!/bin/sh

is_quit_requested=false

while [ $is_quit_requested = false ]
do
  # Display options menu.
  echo "============================================"
  echo "           System Command Options" 
  echo "============================================"
  echo "a) yum"
  echo "b) rpm"
  echo "c) du"
  echo "d) fstab"
  echo "e) fsck"
  echo "f) mount/umount"
  echo "g) hostname" 
  echo "q) Quit"
  echo -n "\nEnter letter: "

  read option
  option=$(echo "$option" | tr "[:upper:]" "[:lower:]")
  echo "============================================"
  
  # Explain and execute various system commands.
  case $option in
    "a")
        echo "yum - Yellowdog Updater Modified\n"
        echo yum is an interactive, rpm based, package manager.\
             It can automatically perform system updates, installation\
             of new packages, removal of old packages and perform queries\
             on the installed and/or available packages. This utility may\
             need to be installed onto your system for it to work.
        echo "\nExample:\n"
        echo "$ sudo yum install firefox\n"
        echo The above command would install the firefox internet browser.\
             However, this command, and all commands for yum, will not work\
             unless repos are present on your system. Repos, or repositories,\
             are storage locations of software packages that you can install onto\
             your system. 
        echo "" 
        echo This is what happens when you try to install firefox with yum\
             with no repos on your system:
        echo "\n$ sudo yum install firefox"
        echo "$(sudo yum install firefox)"
        ;;
    "b")
        echo "rpm - RPM Package Manager, or RedHat Package Manager\n"
        echo rpm is a powerful Package Manager, which can be used to build,\
             install, query, verify, update, and erase individual software packages.\
             This utility may need to be installed onto your system for it to work.
        echo "\nExample:\n"
        echo "$ rpm -i firefox\n"
        echo The above command would install the firefox internet browser.\
             However, similar to the yum command, this and all other commands\
             associated with rpm will not work unless repos are present on your system.
        echo "" 
        echo This is what happens when you try to install firefox with rpm\
             with no repos on your system:
        echo "\n$ rpm -i firefox"
        echo "$(rpm -i firefox)" 
        ;;
    "c")
        echo "du - estimate file space usage, stands for Disk Usage\n"
        echo du summarizes disk usage of the set of FILEs sourcing from\
             the current directory, and files discovered recursively for\
             directories location in said current directory.
        echo "\nExample:\n"
        echo "$ du -ah\n"
        echo The above command would display a list of all the files located\
             in the current directory and sub directories sourcing from said\
             current directory, alongside how much data each file takes up.\
             At the bottom of the list the total amount of data used up by the\
             listed files is displayed.
        echo "\nThis is what happens when you run the aformentioned command:"
        echo "\n$ du -ah"
        echo "$(du -ah)" 
        ;;
    "d")
        echo "fstab - static information about the filesystems, stands for File System Table\n"
        echo fstab is a file that contains descriptive information about the\
             filesystems the system can mount. This file is located in the\
             directory /etc/fstab.
        echo "\nExample:\n"
        echo "$ cat /etc/fstab\n"
        echo The above command would display the contents of the fstab file.\
             It is a text file that holds a table designated by 6 columns:\
             file system, mount point, type, options, dump, and pass.
        echo "" 
        echo The \<file system\> column indicates the universally unique\
             identifier \(UUID\) of the file system.
        echo ""
        echo The \<mount point\> column indicates where the file system\
             is located on the system in the linux file tree.
        echo "\nThe <type> column indicates the format that the file system is in."
        echo "\nThe <options> column indicates properties associated with a file system."
        echo "" 
        echo The \<dump\> column indicates if the file system will dump its\
             contents somewhere as a backup incase the system goes down.
        echo "" 
        echo The \<pass\> column indicates the order in which the fsck command\
             will check the file systems present on the system.
        echo "\nThis is what happens when you run the aformentioned command:"
        echo "\n$ cat /etc/fstab"
        echo "$(cat /etc/fstab)" 
        ;;
    "e")
        echo fsck - check and repair a Linux filesystem, stands for\
             File System Consistency Check
        echo "\nfsck is used to check and optionally repair one or more Linux filesystems."
        echo "\nExample:\n"
        echo "$ fsck -A\n"
        echo The above command would check all the filesystems listed in\
             the /etc/fstab text file. However, if a filesystem is mounted\
             then fsck cannot operate on said filesystem. In our case all\
             the filesystems on our system are currently mounted, and so\
             fsck will not be allowed to operate on them.
        echo "\nThis is what happens when you run the aformentioned command:"
        echo "\n$ fsck -A" 
        echo "$(fsck -A)"
        ;;
    "f")
        echo "mount - mount a filesystem"
        echo "umount - unmount file systems\n"
        echo All files accessible in a system are arranged in one big tree,\
             the file hierarchy, rooted at /. These files can be spread out\
             over several devices. The mount command serves to attach the\
             filesystem found on some device to the big file tree.\
             Conversely, the umount command will detach it again.
        echo "\nExample for mount:\n"
        echo "$ sudo mount\n"
        echo The above command would display all filesystems currently\
             attached, and where they are attached to, in the system\'s file hierarchy.
        echo "\nThis is what happens when you run the aformentioned command:"
        echo "\n$ sudo mount"
        echo "$(sudo mount)"
        echo "\nExample for umount:\n"
        echo "$ sudo umount -a\n"
        echo The above command would detach all filesystems that are\
             currently attached to the system\'s file hierarchy. However,\
             you cannot unmount filesystems that are currently being used.\
             In our case all our filesystems are currently being used,\
             and so umount will not be allowed to operate on them.
        echo "\nThis is what happens when you run the aformentioned command:"
        echo "\n$ sudo umount -a"
        echo "$(sudo umount -a)"
        ;;
    "g")
        echo "hostname - show or set the system's host name\n"
        echo Hostname is used to display the system\'s DNS name,\
             and to display or set its hostname or NIS domain name.
        echo "\nExample:\n"
        echo "$ hostname -i\n"
        echo The above command would display the IP addresses\
             associated with the system\'s hostname.
        echo "\nThis is what happens when you run the aformentioned command:"
        echo "\n$ hostname -i"
        echo "$(hostname -i)"
        ;;
    "q")
        is_quit_requested=true 
        ;;
      *)
        echo "Error: $option is not a valid option\n"
        ;;
  esac
done
