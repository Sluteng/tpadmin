<?php
namespace app\common\validate;

use think\Validate;

class Map extends Validate
{
    protected $rule = [
        "url|站点地图" => "require",
    ];
}
