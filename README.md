<p align="center"><img src="/img/logo.png" width="200"></p>
<p align="center">sync all your dotfiles with a git repo</p>

<p>We all have this one folder with all our nice and beloved dotfiles. Sometimes you also have more than one PC where you want to use these dotfiles and keep them in sync or just want your dots when you configure a new device. DSYM is the lightweight python script that do the job.</p>

### Status

working! (but on your own risk!)

### Prerequisite
Keep the `config.ini` in the same directory like the DSYM tool and enter your credentials:<br>

`machine_name = ` Name of the machine<br> 
`dotfile_repo =`  URL of the remote dotfile repository<br>  
`dotfile_path = ` path to your local dotfile folder (/home/user/.config/)<br> 
`dsym_path = ` path to the dsym folder you created (/home/user/dsym/)<br>

### Usage
`dsym.py -init` start a new DSYM repo <br>
`dsym.py -add`  add new dotfiles to DSYM repo<br> 
`dsym.py -push` syncing up (push) to the remote repo<br> 
`dsym.py -pull` syncing down (pull) from existing DSYM repo<br>

### Installation
#### NixOS
- soon

#### Other
##### Pip:
`pip install dsym`

##### Shell:
You can use the `install.sh` script in the repo to make the tool executable.
The script copy DSYM to a systemfolder, make it executable and create a symlink to DSYM. When it's done your can use `dsym` in your terminal.

`sh install.sh`

