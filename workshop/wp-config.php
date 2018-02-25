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
define('DB_NAME', 'wordcamp-praha-2018-workshop');

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
define('AUTH_KEY',         'M[1ZcX@7`ZuDPN;@Hw#9_&O C,rDZ?_;-#Ir&M,%X]|#)ar`o)F1qb5!Gx#%W PZ');
define('SECURE_AUTH_KEY',  'R,4rzVb%Mg^M_o7Ka@.eBgCtbBM|;lYefG3aIggKbA(g,hDfiay=gOO%T/d}<j7_');
define('LOGGED_IN_KEY',    'c?BQPy)}&CXgFxJLbO_N&Zm1e].WZql^Lpe8[b1QN-Ex,eswxxGQpd(q3Ac@,.2x');
define('NONCE_KEY',        '[@n8)1*#+{D^%2UFI/5$C.4t@E$t<:`ST;1HCq6l0E_A=tQ0I$_k-!VkEXt4IXDo');
define('AUTH_SALT',        '}&lV|TRUyEZ9_Zd^9+Y#4UW>XY<]pl$ent&z5w1Q[j}OUoeo s+(+;G],_QLwO4^');
define('SECURE_AUTH_SALT', '=$2ePlgsqliUe5CrnH{Gt`rw9)oS1~3_-$=#<~3F>x~Tld2P9j%|$bgpP#`X+sJi');
define('LOGGED_IN_SALT',   '*>IX.MfN7*.IDJA;jd`vw(,vxD9Qp/g`,{J=~=@<>Qts1;&deOUzQm}k,oivv[jp');
define('NONCE_SALT',       'FyP}0zSZuuTQ24b@W)u<&HI<<golK?OvgN1D#0X0=|S~,^5Pe4{!&LmFMOMtt}3e');

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
