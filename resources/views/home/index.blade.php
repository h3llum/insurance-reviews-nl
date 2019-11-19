@extends('layouts.app')

@section('content')
<div class="container">

    <h1>Insurers</h1>

    @foreach($insurers as $insurer)
    {{$insurer['name']}}<br/>
    @endforeach

</div>
@endsection