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
define('DB_NAME', '0-wpfw');

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
define('AUTH_KEY',         ';KvktH/z;DmVy3l17J=dHgM@g=>V?9-.2}yJ/N(|ngEB#OIB/p|o H!H`U7Oxg15');
define('SECURE_AUTH_KEY',  'L&Hb^d_<]YzBN47x$8hzb (hSLv!u=?@+DojtcTv&v_(7|DYPQ&X{JGt9+#6}@y)');
define('LOGGED_IN_KEY',    '6_BUn=u@g:(}V:72bD?KNMi]$CbRSFbLzU<Ci%/r1B~GFk$0>W+ai,*wi;C5yfGy');
define('NONCE_KEY',        'VMCA#3j:G`uflLJg UW#_3)aeypjeUuDERq!ZF,XX9v*v-K:5a7jO |cR_dH[-cU');
define('AUTH_SALT',        '%-_G|b0?;S[~1<Hn)vYb5yNpo3?KsoX0q<;^NH1^+)VD4%3[e-m`x1*6`K?KA1{?');
define('SECURE_AUTH_SALT', ']2@a.jAnUdi)DyBg?J/[TI reSpF;A/CWv{]yPGJXyj]}=#+Tg=i>ooPcin5Vn>,');
define('LOGGED_IN_SALT',   '|]Xm5>W[ev[:aunii =|Goho]P2CQ^R=-.u[W(Rme*|$VD@X4M Ny2>;u37{;.|Q');
define('NONCE_SALT',       '09fB4hj< O^P4ZQeTi![iv0TM,(3YP6Hs~i#4[N2qj{)^!Jot1ui0ZC?{<ETGEP$');

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
