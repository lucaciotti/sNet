@extends('layouts.app')

@section('htmlheader_title')
    - {{ trans('stFatt.headTitle_agt') }}
@endsection

@section('contentheader_title')
    {{ trans('stFatt.contentTitle_agt') }}
@endsection

@section('contentheader_breadcrumb')
    {!! Breadcrumbs::render('agentStFat', $agente) !!}
@endsection

@push('css-head')
@endpush

@section('main-content')
<div class="row">
  <div class="col-lg-3">
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title" data-widget="collapse">Detail</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          {{-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button> --}}
        </div>
      </div>
      <div class="box-body">
        {{-- <form action="{{ route('stAbc::idxAg') }}" method="post">
          <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <div class="form-group">
            <label>{{ trans('stFatt.selAgent') }}</label>
            <select name="codag" class="form-control select2" style="width: 100%;">
              <option value=""> </option>
              @foreach ($agents as $agent)
                <option value="{{ $agent->codice }}"
                  @if($agent->codice==$agente)
                      selected
                  @endif
                  >{{ $agent->descrizion or "Error $agent->codice - No Description" }}</option>
              @endforeach
            </select>
          </div>
          <div>
            <button type="submit" class="btn btn-primary">{{ trans('_message.submit') }}</button>
          </div>
        </form> --}}
        <dl class="dl-horizontal">
            <dt>Cod. Art.</dt>
            <dd>
              <big><strong>{{$AbcProds->first()->articolo}}</strong></big><br>
              <small>{{$AbcProds->first()->product->descrizion}}</small>
            </dd>
            <br>
            <dt>Agente</dt>
            <dd>{{ $descrAg or "Error $agente - No Description" }}</dd>
          </dl>
      </div>
    </div>
  </div>

  <div class="col-lg-9">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs pull-right">
        <li class="active"><a href="#statAbc" data-toggle="tab" aria-expanded="true">{{ strtoupper(trans('stFatt.total')) }}</a></li>
        <li class="pull-left header"><i class="fa fa-th"></i> {{ trans('stFatt.statsTitle') }}</li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="statAbc">
        @include('stAbc.partials.tblDetArt', [
          'agente' => $agente,
          'AbcProds' => $AbcProds,
          'thisYear' => $thisYear,
          'prevYear' => $prevYear,
          'thisMonth' => $thisMonth,
        ])
        </div>
      </div>
    </div>
  </div>

</div>
@endsection

@section('extra_script')
  @include('layouts.partials.scripts.iCheck')
  @include('layouts.partials.scripts.select2')
  @include('layouts.partials.scripts.datePicker')
@endsection

@push('script-footer')

@endpush
