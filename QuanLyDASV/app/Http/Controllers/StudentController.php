<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\These;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       // $students = Student::paginate(8);
        $theses = These::paginate(5);
        $students = Student::all();

        return view('students.index', compact('theses', 'students'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
//        $departments = These::all();
        return view('students.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'first_name' =>'required|string|min:3|max:50',
            'last_name' =>'required|string|min:3|max:50',
            'email' => 'required|string|email|unique:students,email', // đảm bảo email duy nhất
            'student_number' => 'required|string|max:10|unique:students,student_number',
        ]);

        // Tạo 1 bản Person mới và đổ dữ liệu đã xác thực
        $student = new Student();
        $student->fill($validateData);
        $student->save();
        return redirect()->route('students.index')->with('success_add', 'Student created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $person = Student::find($id);
        return view('students.detail', compact(''));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $person = Student::find($id);
        $department = Department::find($person->department_id);
        return view('students.edit',compact('person',''));
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

        $person = Student::findOrFail($id);// data trong db can sua
//        $depart = Department::firstOrCreate(['name' => 'department_name']);
//        $person->department_id = $depart->id;
        $person->update($validateData);
        //$person->save();

        return redirect()->route('students.index')->with('success_update', 'Student updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $person = Student::find($id);
        $person->delete();
        return redirect()->route('students.index')->with('success_delete','Student deleted successfully');
    }
}
