# bot-detector-mysql

# project design
<!-- https://drive.google.com/file/d/16IO84vE3rJWRclbZAnOIEdKAmx5xAi3I/view?usp=sharing -->
![image](https://user-images.githubusercontent.com/40169115/153727141-0e39c6fe-1fdb-42f4-8019-2552bd127751.png)

## building this repository

### Install:
* [Docker](https://docs.docker.com/get-docker/)
*  [Github desktop](https://desktop.github.com/)
    * [Git windows](https://gitforwindows.org),  [Git unix](https://git-scm.com/download/linux) will also work.
* An integrated development environment (IDE).
    * We recommend [VSCode](https://code.visualstudio.com), but any IDE will work.

### Setup:
1. Open a terminal `cmd`
2. Navigate `cd` to where you want to save our code.
3. The command below will Create a folder `bot-detector` with two sub folders `remote` & `local` & download the remote repositories in the `remote` folder.
    * To add the repositories in github desktop, select `File` on the top left than click `Add local repository`, and navigate to the cloned repositories.

Windows
```
mkdir bot-detector\remote bot-detector\local && cd bot-detector\remote
git clone https://github.com/Bot-detector/bot-detector-mysql.git
```
Linux
```
mkdir -p bot-detector/{remote,local}
git clone https://github.com/Bot-detector/bot-detector-mysql.git
```
4. Now you can start the project. **Make sure docker desktop is running!**

Creating the database. (you can skip this step if the database is already created) (**this might take a while**)
```
cd bot-detector-mysql
docker-compose up --build
```
In the terminal you will now see `/usr/sbin/mysqld: ready for connections.`
The database has been created
You can now query the database via attaching a shell to the docker instance or running mysqlworkbench

### contributing
To contribute you must fork a repository, if you followed the setup step, fork the repository in the `bot-detector\local` folder.

