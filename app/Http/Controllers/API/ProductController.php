<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\ProductResource;

class ProductController extends Controller
{
	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{

		try {
			$products = Product::orderBy('id', 'Desc')->take(25)->get();

			$json =[

				"status"=>"success",
				"data"=>$products,
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
			"price"=> 'required',
			"description"=> 'required',
			"category"=> 'required',
			"name"=> 'required'
			]);

		if ($validator->fails()) {
			return response(['error' => $validator->errors(), 'Validation Error']);
		}

		$product = Product::create($data);


		$json =[

			"status"=>"success",
			"data"=>$product
		];


		} catch (\Throwable $th) {
			$json =[

				"status"=>"fail",
				"remark"=>$th->getMessage(),
			];
		}

		
		
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  \App\Models\Product  $product
	 * @return \Illuminate\Http\Response
	 */
	public function show(Request $request, $id )
	{
		
		try {
			
			$inputs=  $request->all();
			$products = Product::where('id', '=', $id)->first();;
		
			$json =[
				"status"=>"success",
				"data"=>$products,
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
	 * @param  \App\Models\Product  $product
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, Product $product)
	{
		$data = $request->all();

		$validator = Validator::make($data, [
			'title' => 'required',
		]);

		if ($validator->fails()) {
			return response(['error' => $validator->errors(), 'Validation Error']);
		}

		$product->update($request->all());
		return new ProductResource($product);
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\Models\Product  $product
	 * @return \Illuminate\Http\Response
	 */
	public function destroy(Product $product)
	{
		$product->delete();
		return new ProductResource($product);
	}

	/**
	 * Search for a name
	 *
	 * @param  str  $name
	 * @return \Illuminate\Http\Response
	 */
	public function search($title)
	{
		$products = Product::where('title', 'like', '%'.$title.'%')->get();
		return ProductResource::collection($products);
	}
}
