# Language statistics

### Description

This is a simple exercise that demands to create a Bash script that provides statistics on the use of characters in a language.

NB: The French language is chosen.

Therefore, a dico.txt file is provided. This file contains all French words, one word per line, totally with uppercase characters:

```sh
ABAISSA
ABAISSABLE
ABAISSABLES
ABAISSAI
ABAISSAIENT
[...]
```

### Missions

- The first mission is to extract the number of words using each letter of alphabet. The script will take as parameter the name of the dictionary file (dico.txt).
- The second mission is to create additional functionnality for your script. This feature can be activated by the presence of a second parameter of your own choice.

### Requirements

No requirements for **Linux** users.

For **Windows** users:

- Vagrant
- VirtualBox

It is recommended that Windows users use the **_Git Bash_** terminal

### Instructions

For **Windows** users:

1. Download an install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Clone the repository or download it.
3. Open your **_Git Bash_** terminal to the project folder.
4. Run `vagrant up` to install the linux OS.
5. Then run `vagrant ssh`.
6. Then change directory to access your shared files by running `cd /vagrant`.
7. Finally run the following command:

   ```sh
   ./langstat.sh dico.txt
   ```

For **Linux** users:

1. Clone the repository or download it.
2. Run the following command:

   ```sh
   ./langstat.sh dico.txt
   ```

The **output** sould be like:

```sh
278814 - E
229938 - A
219131 - I
210391 - R
207889 - S
179165 - N
176030 - T
158282 - O
    [...]
```

### options

To achieve the second mission, you can insert a second parameter when running the script:

- To display result in ascending order, type:

  ```sh
  ./langstat.sh dico.txt --ascending
  ```

  **Output**:

  ```sh
   529 - W
   1595 - K
   5743 - J
   8262 - X
   11030 - Y
   16340 - Q
   30562 - V
   34982 - Z
     [...]
  ```

* To sort result by characters, type:

  ```sh
  ./langstat.sh dico.txt --char
  ```

  **Output**:

  ```sh
   229938 - A
   43471 - B
   98832 - C
   72481 - D
   278814 - E
   36777 - F
   48942 - G
   35940 - H
     [...]
  ```

- To sort result by characters in reversed way, type:

  ```sh
  ./langstat.sh dico.txt --rchar
  ```

  **Output**:

  ```sh
  Z - 34982
  Y - 11030
  X - 8262
  W - 529
  V - 30562
  U - 108195
  T - 176030
  [...]
  ```

- To display result with some infos such as execution duration, script's name, shell type, current script path and script's user, type:

  ```sh
  ./langstat.sh dico.txt --infos
  ```

  **Output**:

  ```sh
  278814 - E
  229938 - A
  219131 - I
  210391 - R
  207889 - S
  179165 - N
  176030 - T
  158282 - O
      [...]

  Script executed during 7 seconds
  Script's name : ./langstat.sh
  Shell type : /bin/bash
  Current Script path : /vagrant
  User : vagrant

  ```
