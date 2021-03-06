<?php

namespace WpTracy;

/**
 * Custom panel based on global (WP) $post variable
 * 
 * @author Martin Hlaváč
 * @link http://www.ktstudio.cz/
 */
class WpPostPanel extends WpPanelBase {

    public function getTab() {
        global $post;
        if (self::issetAndNotEmpty($post)) {
            return parent::getSimpleTab(__("Post"));
        }
        return null;
    }

    public function getPanel() {
        /* @var $wpdb \WP_Post */
        global $post;
        $output = parent::getObjectPanel($post);
        return $output;
    }

}
