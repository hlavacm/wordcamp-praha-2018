<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '3-assely');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '~t%~D`[zc=kd^3M&/ZXzQxLpW.MZ~{,)o =g7m()WaU2kkbWK% TklQHZJj[U0T>');
define('SECURE_AUTH_KEY',  '-:z$SwHE%MB_D.J)j]RZP]JaliPrTJ<nS3v0;X4>ZCY_DD5<!E{9vSUiGb:#)f .');
define('LOGGED_IN_KEY',    'to_!@=Q`-IJBX(BVp;/-fu_).:z}((hcAnf.=pg&Ky71XvwM@c`PkcoY+[8w4)BW');
define('NONCE_KEY',        ',TL;Lv^Fy _N_LB B|SUpsD+Rf8z>`#x:SFe[%Tp*HIEo4erg5+F{11$d6<x)P*N');
define('AUTH_SALT',        'iO$#spVY>5,b@{=Ac|~mK61q/ .v9hc!9:C(%CDTX*Zg(fOaznNSt,i<]:U.kE?L');
define('SECURE_AUTH_SALT', '5<DtzX|Z&;EBM-bPX0u@bitc$dNV1DP $7/O;[Sd%0nXN$$]9rQuFUuC4@.,g~P?');
define('LOGGED_IN_SALT',   'nrWI6;0>I#xBdEW2y:t0/Uz*4V*n&t5J!13n%FVep`ScqS.fL{m,5Fd%Pw`O(~UE');
define('NONCE_SALT',       '7be$$5+Q3:oFWWMD%KD /S(jx)IowK<wHwb6r4)N73K(G#~%g+gZy1ZUH+n?C-nO');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'kt_wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
