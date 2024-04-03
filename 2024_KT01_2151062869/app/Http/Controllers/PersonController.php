<?php

namespace App\Http\Controllers;

use App\Models\Person;
use Illuminate\Http\Request;

class PersonController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
//        $persons = Person::all();
        $persons = Person::orderBy('id','desc')->get(); // lay ra 10 ban ghi

        return view('persons.index', compact('persons'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('persons.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $phone = $request->phone;
        $title = $request->title;

        $person = new Person();
        $person->name = $name;
        $person->email = $email;
        $person->phone = $phone;
        $person->title = $title;

        $person->save();

        return redirect()->route('persons.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $person = Person::find($id);
        return view('persons.detail', compact('person'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $person = Person::find($id);
        return view('persons.edit',compact('person'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
//        $name = $request->name;
//        $email = $request->email;
//        $phone = $request->phone;
//        $title = $request->title;
//
//        $person = new Person();
//        $person->name = $name;
//        $person->email = $email;
//        $person->phone = $phone;
//        $person->title = $title;
//
//        $person->update($person);
//
        $validateData = $request->validate([ // data moi muon sua
            'name' => 'required',
            'email' =>'required',
            'phone' => 'required',
            'title' => 'required'
        ]);
        $person = Person::find($id);// data trong db can sua

        $person->update($validateData);
        return redirect()->route('persons.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $person = Person::find($id);
        $person->delete();
        return redirect()->route('persons.index');
    }
}
