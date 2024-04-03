<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Person;
use App\Models\Department;

class PersonController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $persons = Person::all();
        // $persons = Person::orderBy('id','desc')->take(10)->get(); // lay ra 10 ban ghi
        //$persons = DB::table('persons')->simplePaginate(5);
        //$persons = Person::table('persons')->orderBy('id','desc')->cursorPaginate(5);

        $persons = Person::paginate(8);
//         $person = Person::all();
//         dd($person);
        $departments = Department::all();

        return view('persons.index', compact('persons','departments'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $departments = Department::all();
        return view('persons.add', compact('departments'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'name' =>'required|string|min:3|max:50',
            'email' => 'required|string|email|unique:people,email', // đảm bảo email duy nhất
            'phone' => 'required|string|max:10|unique:people,phone',
            'title' => 'required|string',
//            'department_name' => 'required|string'
            'department_id' => 'required|string'
        ]);


        // Tạo 1 bản Person mới và đổ dữ liệu đã xác thực
        $person = new Person();
//        $person->name = $validateData['name'];
//        $person->email = $validateData['email'];
//        $person->phone = $validateData['phone'];
//        $person->title = $validateData['title'];

        $person->fill($validateData);
        // liên kết department vs person
//        $person->department_id = $department->id;
        $person->save();
        return redirect()->route('persons.index')->with('success_add', 'Person created successfully!');
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
//        $department = Department::find($person->department_id);
        $departments = Department::all();
        return view('persons.edit',compact('person','departments'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validateData = $request->validate([ // data moi muon sua
            'name' =>'required|string',
            'email' => 'required|string|email', // đảm bảo email duy nhất
            'phone' => 'required|string|max:10',
            'title' => 'required|string',
            'department_id' => 'required|exists:departments,id'
        ]);

        $person = Person::findOrFail($id);// data trong db can sua
//        $depart = Department::firstOrCreate(['name' => 'department_name']);
//        $person->department_id = $depart->id;
        $person->update($validateData);
        //$person->save();

        return redirect()->route('persons.index')->with('success_update', 'Person updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $person = Person::find($id);
        $person->delete();
        return redirect()->route('persons.index')->with('success_delete','Person deleted successfully');
    }
}
