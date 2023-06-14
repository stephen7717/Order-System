@include('partials.header', ['title' => 'Order System'])
<?php $array= array('title' => 'Order System') ;?>
<x-nav :data="$array"/>

<header class="max-w-lg mx-auto mt-5">
    <a href="">
        <h1 class="text-4xl text-white font-bold text-center">Order List</h1>
    </a>
</header>

<section class="mt-10 ">
    <div class="overflow-x-auto relative rounded-lg ">
        <table class="w-96 mx-auto text-sm text-left text-gray-500 ">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50">
                <tr>
                    <th scope="col" class="py-3 px-6">
                        Customer
                    </th>
                    <th scope="col" class="py-3 px-6">
                        OrderStatus
                    </th>
                </tr>
            </thead>

            <tbody>
                @foreach ($orders as $order)
                <tr class="bg-gray-800 border-b text-white">
                    <td class="py-4 px-6">
                        {{ $order->customer}}
                    </td>
                    <td class="py-4 px-6">
                        {{ $order->order_status}}
                    </td>
                </tr>
                @endforeach
            </tbody>
@include('partials.footer')

{{-- 
<ul>
    
        
    
    <li>{{$order->customer}}</li>
    {{$->}}
    
</ul> --}}