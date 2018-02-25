<?php

class KT_ZZZ_Ads_Config implements KT_Configable
{
    const FORM_PREFIX = "kt-zzz-ads";

    // --- fieldsety ---------------------------

    public static function getAllGenericFieldsets()
    {
        return self::getAllNormalFieldsets() + self::getAllSideFieldsets();
    }

    public static function getAllNormalFieldsets()
    {
        return [
            self::PARAMS_FIELDSET => self::getParamsFieldset(),
        ];
    }

    public static function getAllSideFieldsets()
    {
        return [];
    }

    // --- parametry ---------------------------

    const PARAMS_FIELDSET = "kt-zzz-ads-params";
    const PARAMS_DATE = "kt-zzz-ads-params-date";
    const PARAMS_PRICE = "kt-zzz-ads-params-price";

    public static function getParamsFieldset()
    {
        $fieldset = new KT_Form_Fieldset(self::PARAMS_FIELDSET, __("Parametry", "ZZZ_ADMIN_DOMAIN"));
        $fieldset->setPostPrefix(self::PARAMS_FIELDSET);

        $fieldset->addText(self::PARAMS_DATE, __("Datum:", "ZZZ_ADMIN_DOMAIN"));

        $fieldset->addText(self::PARAMS_PRICE, __("Cena:", "ZZZ_ADMIN_DOMAIN"))
            ->setInputType(KT_Text_Field::INPUT_NUMBER);

        return $fieldset;
    }
}
