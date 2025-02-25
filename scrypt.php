<?php
$config = require 'config.php';

//connexion bdd
$host = $config['db']['host'];
$user = $config['db']['user'];
$password = $config['db']['password'];
$database = $config['db']['database'];

// connexion SSH
$ssh_host = $config['ssh']['host'];
$ssh_user = $config['ssh']['user'];
$ssh_password = $config['ssh']['password'];

// fichier sauvegarde
$backup_file = "/var/www/html/database";
$encrypted_file = "/var/www/html/scrypt/testbdd.sql.enc";
$decrypted_file = "/var/www/html/backup/testbdd.sql";

// checksum
$checksum_command = "sha256sum";

// Fonction pour effectuer le dump de la base de données
function create_backup() {
    global $host, $user, $password, $database, $backup_file;
    exec("mysqldump -h $host -u $user -p$password $database > testbdd.sql");
    echo ('fichier creer');
}



// Fonction pour chiffrer le fichier de sauvegarde

function encrypt_file() {
    global $backup_file, $encrypted_file;
    exec("openssl enc -aes-256-cbc -salt -in testbdd.sql -out testbdd.sql.enc -pass pass:btsinfo");
    echo('fichier chiffrer');
}



// Fonction pour envoyer le fichier chiffré par SSH
function send_file_via_ssh() {
<<<<<<< HEAD
    global $ssh_host, $ssh_user, $ssh_password, $encrypted_file;
    exec("scp testbdd.sql.enc backup123@10.229.187.102:/var/www/html/backup");
=======
    global $ssh_host, $ssh_user, $ssh_password, $encrypted_file, $remote_path;
    exec("sshpass -p 'btsinfo' scp testbdd.sql.enc backup123@10.229.187.102:/var/www/html/backup");
>>>>>>> a2f66ea606379c86c7854c4b10d8f91af6b02afb
    echo('fichier envoyer');
}



//* Fonction pour vérifier l'intégrité du fichier

/*
function verify_checksum() {
    global $encrypted_file, $ssh_host, $ssh_user, $ssh_password, $remote_path;
    $local_checksum = trim(exec("sha256sum $encrypted_file | awk '{ print $1 }'"));
    $remote_checksum = trim(exec("sshpass -p '$ssh_password' ssh $ssh_user@$ssh_host \"sha256sum $remote_path/testbdd.sql.enc | awk '{ print $1 }'\""));

<<<<<<< HEAD
/*function verify_checksum() {
    global $ssh_host, $ssh_user, $ssh_password, $remote_path, $encrypted_file, $checksum_command;


    $local_checksum = exec("$checksum_command $encrypted_file");

    $remote_checksum = exec("sshpass -p '$ssh_password' ssh $ssh_user@$ssh_host \"$checksum_command $remote_path/testbdd.sql.enc\"");

    if ($local_checksum == $remote_checksum) {
        echo "Les checksums correspondent, le transfert est réussi.\n";
=======
    if ($local_checksum === $remote_checksum) {
        echo "Les checksums correspondent, le fichier est valide.\n";
        return true;
>>>>>>> a2f66ea606379c86c7854c4b10d8f91af6b02afb
    } else {
        echo "Les checksums ne correspondent pas, le fichier est corrompu.\n";
        return false;
    }
<<<<<<< HEAD
}*/
=======
}

*/
>>>>>>> a2f66ea606379c86c7854c4b10d8f91af6b02afb

//* Fonction pour dechiffrer le fichier


function decrypt_file() {
    global $encrypted_file, $decrypted_file;
    exec("openssl enc -d -aes-256-cbc -in $encrypted_file -out $decrypted_file -pass pass:btsinfo");
    echo('Fichier déchiffré et enregistré dans le dossier de sauvegarde');
}




 // Exécution des fonctions
create_backup();
//encrypt_file();

<<<<<<< HEAD
//send_file_via_ssh();
// decrypt_file();
// verify_checksum();
=======
send_file_via_ssh();

//verify_checksum();
//decrypt_file();
 // verify_checksum();
>>>>>>> a2f66ea606379c86c7854c4b10d8f91af6b02afb
