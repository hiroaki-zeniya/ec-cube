<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2010 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<form name="form1" id="form1" method="post" action="?">
<input type="hidden" name="mode" value="send" />
<input type="hidden" name="order_id" value="<!--{$tpl_order_id}-->" />
<!--{foreach key=key item=item from=$arrHidden}-->
<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->" />
<!--{/foreach}-->
<!--{foreach key=key item=item from=$arrSearchHidden}-->
<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->" />
<!--{/foreach}-->
<div id="order" class="contents-main">
  <h2>メール配信</h2>

  <table class="form">
    <tr>
      <th>件名</th>
      <td><!--{$tpl_subject|escape}--></td>
    </tr>
    <tr>
      <th>本文</th>
      <td><!--{$tpl_body|escape|nl2br}--></td>
    </tr>
  </table>

  <div class="btn">
    <a class="btn_normal" href="javascript:;" onclick="fnModeSubmit('return', '', '');"><span>前のページへ戻る</span></a>
    <a class="btn_normal" href="javascript:;" onclick="return confirm('この内容でメールを送信しても宜しいですか');"><span>メール送信</span></a>
  </div>
</div>
</form>
