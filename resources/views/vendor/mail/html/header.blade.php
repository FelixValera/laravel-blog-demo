@props(['url'])
<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;color:#E5E7EB">
@if (trim($slot) === 'Laravel')
<img src="https://laravel.com/img/notification-logo.png" class="logo" alt="Laravel Logo">
@else
<x-application-logo class="block h-9 w-auto fill-current text-gray-800 dark:text-gray-200" />
{{ $slot }}
@endif
</a>
</td>
</tr>
