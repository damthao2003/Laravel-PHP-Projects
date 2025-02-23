<?php

namespace App\Http\Controllers;

use App\Models\Department;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $departments = Department::paginate(8);
        return view('departments.index', compact('departments'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $departments = Department::all();
        return view('departments.add', compact('departments'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'name' =>'required|string|min:3|max:50',
            'description' => 'required|string',
        ]);

        $department = new Department();
        $department->fill($validateData);
        $department->save();

        $departName = $request->input('name');
//        if($departName){
//            return redirect()->back()->withErrors(['name' =>'This department already exists']);
//        }
//        else return redirect()->back()->with('success', 'Tên hợp lệ và không bị trùng.');

        return redirect()->route('departments.index')->with('success_add', 'Department created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $department = Department::find($id);
        return view('departments.detail', compact('department'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $department = Department::find($id);
        return view('persons.edit',compact('department'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validateData = $request->validate([ // data moi muon sua
            'name' =>'required|string|50',
            'description' => 'required|string|200', // đảm bảo email duy nhất
        ]);

        $department = Department::findOrFail($id);// data trong db can sua
        $department->update($validateData);
        return redirect()->route('departments.index')->with('success_update', 'Department updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $department = Department::find($id);
        $department->delete();
        return redirect()->route('departments.index')->with('success_delete','Department deleted successfully');
    }
}
