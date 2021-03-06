<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/zf2 for the canonical source repository
 * @copyright Copyright (c) 2005-2013 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace ZendTest\Di\TestAsset\AwareClasses;

class B implements NoParamsAwareInterface
{
    /**
     * @see \ZendTest\Di\TestAsset\AwareClasses\NoParamsAwareInterface::getSomething()
     */
    public function getSomething()
    {
    }

    /**
     * @see \ZendTest\Di\TestAsset\AwareClasses\NoParamsAwareInterface::setSomething()
     */
    public function setSomething(A $something)
    {
    }
}
