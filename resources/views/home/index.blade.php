@extends('layouts.app')

@section('content')
<div class="container">
    
    <div class="grid--12">
        <h1>Zorgverzekeraar overzicht</h1>
    </div>

    <div class="grid--8">

        <ul class="insurer-overview">
        @foreach($insurers as $insurer)
            <li class="insurer-overview__insurer">
                <div class="grid--8">
                    <div class="insurer-overview__insurer__name">{{$insurer->name}}</div>
                    <div class="insurer-overview__insurer__parent">Concern: {{$insurer->parent}}</div>
                    <div class="insurer-overview__insurer__contracts">
                        <div class="insurer-overview__insurer__contracts__title">
                            Contracten met:
                        </div>
                        <div class="insurer-overview__insurer__contracts__hospital">
                            UMCG
                        </div>
                        <div class="insurer-overview__insurer__contracts__hospital">
                            VUMC
                        </div>
                        <div class="insurer-overview__insurer__contracts__hospital">
                            Stepwork
                        </div>
                    </div>
                </div>
                <div class="grid--4">
                    <div class="insurer-overview__insurer__score"></div>
                </div>
            </li>
        @endforeach
        </ul>

    </div>
</div>
@endsection