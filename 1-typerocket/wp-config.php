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
define('DB_NAME', '1-typerocket');

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
define('AUTH_KEY',         'rM6!@[9l3]1=za<PV/%iQ#i90xGPu;6d]bL14h$GtBGa0{v??#uOarACdj5x3BrN');
define('SECURE_AUTH_KEY',  'H%^fGw$FYFh9u8v!(pih1*6GPF@o;WhWHV:H1!-@}pw-?B^+y{4DU|m-o/:Y^Tb~');
define('LOGGED_IN_KEY',    '(I#&I9[X0hht (>y6;ZSa}GF6$xnXWZ?DV(lt[rRIi=X#w5l<k,n`t>xf1CeI(5|');
define('NONCE_KEY',        'uAc7F!pKpA}Y,Ec&D9a: r^lM|S@93/A<8;Z:C||D,&>f`~oC=u>~#gLr<j;@`Wl');
define('AUTH_SALT',        '?v_8C{c/DuV,=Fi*-{)`?{Z8]DbLMMoUc9Z}:vJ=;)rO5|I2nA>)%eFLAh;HKcdF');
define('SECURE_AUTH_SALT', 'PtK_Ll7}{?m:gYQv`^B_k6!Ws1pp]{-lKndYyBe(BN|rnML^Bc0-)>?:TM4)nN0|');
define('LOGGED_IN_SALT',   'x%y@9>!`Q#Im7yF~5av+w6#;7Fe$9`q2S_y_3BFS74aPK|vkD@51)yFa)9BBH_+I');
define('NONCE_SALT',       '3t+mGkWp 9QT4lb|?hs;E,r&S/;>+1 S7<@Vm:0!6C# u]D^%guMy$?[z9hA9e+m');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'tr_wp_';

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
