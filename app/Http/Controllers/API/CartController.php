<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Auth;
use Exception;

class CartController extends Controller
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{

		try {
			$carts = Cart::orderBy('id', 'Desc')->take(25)->get();

			$json =[

				"status"=>"success",
				"data"=>$carts,
			];
		} catch (\Throwable $th) {
			
			$json =[

				"status"=>"fail",
				"remark"=>$th->getMessage(),
				"line"=> $th->getLine()
			];
		}

		return response()->json($json);
	
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{

		try {
			$data = $request->all();

			$validator = Validator::make($data, [
			"sessoin_id"=> 'required',
			"product_id"=> 'required',
			"qty"=> 'required'
			]);

		if ($validator->fails()) {
			return response(['error' => $validator->errors(), 'Validation Error']);
		}

		$Cart = Cart::create($data);


		$json =[

			"status"=>"success",
			"data"=>$Cart
		];


		} catch (\Throwable $th) {
			$json =[

				"status"=>"fail",
				"remark"=>$th->getMessage(),
			];
		}

		return response()->json($json);
		
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  \App\Models\Cart  $Cart
	 * @return \Illuminate\Http\Response
	 */
	public function show(Request $request, $id )
	{
		
		try {
			
			$inputs=  $request->all();
			$Carts = Cart::where('id', '=', $id)->first();;
		
			$json =[
				"status"=>"success",
				"data"=>$Carts,
			];

		} catch (\Throwable $th) {
			$json =[

				"status"=>"fail",
				"remark"=>$th->getMessage(),
				"line"=> $th->getLine()
			];
		}

		return response()->json($json);

	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \App\Models\Cart  $Cart
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{

		try {


			$inputs = $request->all();

			if (empty($inputs['sessoin_id'])) {
				throw new Exception("Error Processing Request", 1);
			}

			$sessoin_id =  $inputs['sessoin_id'];

		 	$result = Cart::where('id', '=',  $id)->where('sessoin_id', '=',  $sessoin_id)->first();

		 	if (empty($result->id)) {
		 		throw new Exception("Error Processing Request", 1);
		 	}


		 	$result->qty = $inputs['qty'];

		 	$result->save();

		 	$json=[

		 		"status"=>"success",
		 		"data"=> $result

		 	];


		} catch (\Throwable $th) {
			
			$json=[

				"remark"=>$th->getMessage(),
				"line"=> $th->getLine()
			];

		}

		return response()->json($json);

		
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\Models\Cart  $Cart
	 * @return \Illuminate\Http\Response
	 */
	public function destroy(Request $request, $id)
	{

		try {


			$result =Cart::where('id',$id)->delete();

			$json =[

				"status"=>"success",
				"data"=>$result,
			];


		} catch (\Throwable $th) {
			
			$json =[

				"status"=>"fail",
				"remark"=>$th->getMessage(),
			];
		}
		
		return response()->json($json);


	}

}
