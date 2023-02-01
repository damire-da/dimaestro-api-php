<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use App\Models\OrdersResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class OrdersController extends Controller
{
    public function createOrder(Request $req) {
        $req_arr = $req->toArray();
        $this->updateOrCreateOrders($req_arr);
        $bonus = 3;

        $response = [
            'client_id' => $req_arr['client_id'],
            'scores' => 0,
            'id' => $req_arr['id'],
        ];

        foreach($req_arr['items'] as $item) {
            if ($item['article'] == '3005-13') {
                $response['scores'] += $bonus * $item['quantity'];
            }
        }
        $this->updateOrCreateOrdersResponse($response);

        return $response;
    }

    public function updateOrCreateOrders($record) {
        Orders::updateOrCreate([
            'id' => $record['id']
        ],[
            'id' => $record['id'],
            'client_id' => $record['client_id'],
            'item' => json_encode($record['items']),
            'status' => $record['status'],
        ]);
    }

    public function updateOrCreateOrdersResponse($record) {
        OrdersResponse::updateOrCreate([
            'id' => $record['id']
        ], $record);
    }
}
