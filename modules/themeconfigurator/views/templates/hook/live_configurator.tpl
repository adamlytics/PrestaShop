{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div id="gear-right">
	<i class="icon-cogs icon-2x icon-light"></i>
</div>
<form action="" method="post">
	<input type="hidden" name="theme" id="theme" />
<div id="tool_customization">
	<p>
		{l s='The customization tool allows you to make color and font changes in your theme.' mod='themeconfigurator'}<br /><br />
		<span>
			{l s='Only you, as a merchant can see this tool (as you are currently logged in your Back-office), your visitors will not see this tool.' mod='themeconfigurator'}
		</span>
	</p>
	<div class="list-tools">
		<p>
		  {l s='Color theme' mod='themeconfigurator'} 
		  <i class="icon-caret-down pull-right"></i> 
		</p>
	</div>
	{if isset($themes_colors)}
	<div id="color-box">
		<ul>
			{foreach $themes_colors as $theme}
			<li class="{$theme}">
				<div class="color-theme1 color1"></div>
				<div class="color-theme2 color2"> </div>
			</li>
			{/foreach}
		</ul>
	</div>
	{/if}
	<div class="list-tools">
		<p>
		  {l s='Font' mod='themeconfigurator'} 
		  <i class="icon-caret-down pull-right"></i> 
		</p>
	</div>
	<div id="font-box">
		<p>{l s='Text page' mod='themeconfigurator'}</p>
		<select name="text-page-font" class="font-list">
			{foreach $themes_fonts as $key => $font}
			<option value="{$key}">{$font}</option>
			{/foreach}
		</select>
		<p>{l s='Text menu parrent normal' mod='themeconfigurator'}</p>
		<select name="text-menu-font" class="font-list">
			{foreach $themes_fonts as $key => $font}
			<option value="{$key}">{$font}</option>
			{/foreach}
		</select>
		<p>{l s='Product name' mod='themeconfigurator'}</p>
		<select name="product-name-font" class="font-list">
			{foreach $themes_fonts as $key => $font}
			<option value="{$key}">{$font}</option>
			{/foreach}
		</select>
	</div>
	<div class="btn-tools">
		<button type="reset" class="btn btn-1">{l s='Reset' mod='themeconfigurator'}</button>
		<button type="submit" class="btn btn-2" name="submitLiveConfigurator">{l s='Save' mod='themeconfigurator'}</button>
	</div>
	<div id="block-advertisement">
		<img src="{$advertisement_image}" alt="{$advertisement_text}" />
	</div>
</div>
</form>