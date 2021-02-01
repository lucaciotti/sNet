@extends('layouts.app')

@section('htmlheader_title')
    - {{ trans('stFatt.headTitle_cli') }}
@endsection

@section('contentheader_title')
    {{ trans('stFatt.contentTitle_cli') }}
@endsection

@section('contentheader_breadcrumb')
    {!! Breadcrumbs::render('clientStFat', $cliente) !!}
@endsection

@push('css-head')
  <!-- Morris charts -->
  <link rel="stylesheet" href="{{ asset('/plugins/morris/morris.css') }}">
@endpush

@section('main-content')
<div class="row">
  <div class="col-lg-3">
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title" data-widget="collapse">{{ trans('stFatt.client') }}</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          {{-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button> --}}
        </div>
      </div>
      <div class="box-body">
        <form action="{{ route('stFatt::idxCli') }}" method="post">
          <input type="hidden" name="_token" value="{{ csrf_token() }}">
          <div class="form-group">
            <label>{{ trans('stFatt.selClient') }}</label>
            <select name="codcli" class="form-control select2" style="width: 100%;">
              <option value=""> </option>
              @foreach ($clients as $client)
                <option value="{{ $client->codicecf }}"
                  @if($client->codicecf==$cliente)
                      selected
                  @endif
                  >{{ $client->client->descrizion or 'cDeleted' }}</option>
              @endforeach
            </select>
          </div>
          <div>
            <button type="submit" class="btn btn-primary">{{ trans('_message.submit') }}</button>
          </div>
        </form>
      </div>
    </div>

    <div class="box box-default collapsed-box">
      <div class="box-header with-border">
        <h3 class="box-title" data-widget="collapse"><i class='fa fa-cloud-download'> </i> Download</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
        </div>
      </div>
      <div class="box-body">
        <a type="button" class="btn btn-default btn-block" target="_blank" href="{{ route('schedaCli::PDF', $cliente) }}">Scheda Cliente PDF</a>
      </div>
    </div>

    <div class="box box-default">
      {{-- <div class="box-header with-border">
        <h3 class="box-title" data-widget="collapse">% Target</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        </div>
      </div> --}}
      <div class="box-body text-center">
        @php
          $valMese = 'valore' . $prevMonth;
          $tgtMese = $fat_PY->isEmpty() ? 0 : $fat_PY->first()->$valMese;
          $fatMese = $fat_TY->isempty() ? 0 : $fat_TY->first()->fattmese;
          $deltaProg = $tgtMese==0 ? 0 : round((($fatMese) / $tgtMese) * 100,2);
          $deltaProg = $deltaProg > 100 ? 100 : $deltaProg;
          $colorDelta = ($deltaProg < 33) ? 'red' : (($deltaProg > 33 && $deltaProg < 66) ? 'orange' : 'green');
        @endphp
          <input type="text" class="knob" data-thickness="0.2" data-angleArc="250" data-angleOffset="-125" value="{{ $deltaProg }}" data-width="120" data-height="120" data-fgColor="{{ $colorDelta }}">

          <div class="knob-label"><strong>{{ trans('stFatt.targetGraph') }}</strong></div>
        </div>
    </div>
  </div>

  <div class="col-lg-9">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs pull-right">
        <li class="active"><a href="#StatTot" data-toggle="tab" aria-expanded="true">{{ strtoupper(trans('stFatt.total')) }}</a></li>
        {{-- <li class=""><a href="#StatDet" data-toggle="tab" aria-expanded="false">{{ trans('stFatt.detailed') }}</a></li> --}}
        <li class="pull-left header"><i class="fa fa-th"></i> {{ trans('stFatt.statsTitle') }}</li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="StatTot">
        @include('stFatt.partials.tblTotAg', [
          'fat_TY' => $fat_TY,
          'fat_PY' => $fat_PY,
          'prevMonth' => $prevMonth,
        ])
        </div>

        {{-- <div class="tab-pane" id="StatDet">

          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#Krona" data-toggle="tab" aria-expanded="true">Krona</a></li>
              <li class=""><a href="#Koblenz" data-toggle="tab" aria-expanded="false">Koblenz</a></li>
              <li class=""><a href="#Kubica" data-toggle="tab" aria-expanded="false">Kubica</a></li>
              <li class=""><a href="#Grass" data-toggle="tab" aria-expanded="false">Grass</a></li>
              <li class=""><a href="#Altro" data-toggle="tab" aria-expanded="false">{{ trans('stFatt.otherGroup') }}</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="Krona">
                @include('stFatt.partials.tblDetAg', [
                  'fatturato' => $fatDet->where('prodotto', 'KRONA'),
                ])
              </div>

              <div class="tab-pane" id="Koblenz">
                @include('stFatt.partials.tblDetAg', [
                  'fatturato' => $fatDet->where('prodotto', 'KOBLENZ'),
                ])
              </div>

              <div class="tab-pane" id="Kubica">
                @include('stFatt.partials.tblDetAg', [
                  'fatturato' => $fatDet->where('prodotto', 'KUBIKA'),
                ])
              </div>

              <div class="tab-pane" id="Grass">
                @include('stFatt.partials.tblDetAg', [
                  'fatturato' => $fatDet->where('prodotto', 'GRASS'),
                ])
              </div>

              <div class="tab-pane" id="Altro">
                @include('stFatt.partials.tblDetAg', [
                  'fatturato' => $fatDet->where('prodotto', 'ALTRO'),
                ])
              </div>
            </div>
          </div>

        </div> --}}
      </div>
    </div>
  </div>

  <div class="col-lg-12">
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title" data-widget="collapse">{{ trans('stFatt.graphTitle') }}</h3>
        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        </div>
      </div>
      <div class="box-body chart-responsive">
        <div class="chart" id="revenue-chart" style="height: 300px;"></div>
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
  <script src="{{ asset('/plugins/knob/jquery.knob.js') }}"></script>
  <!-- Morris.js charts -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
  <script src="{{ asset('/plugins/morris/morris.min.js') }}"></script>
  <script>
  $(function () {
    /* jQueryKnob */
    $(".knob").knob({
      /*change : function (value) {
       //console.log("change : " + value);
       },
       release : function (value) {
       console.log("release : " + value);
       },
       cancel : function () {
       console.log("cancel : " + this.value);
       },*/
      draw: function () {}
    });
    /* END JQUERY KNOB */

    "use strict";
    // AREA CHART
    var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var data = {!! $stats !!};
    var revenueLabel = "{!! trans('stFatt.revenue') !!}";
    var targetLabel = "{!! trans('stFatt.target') !!}";
    var area = new Morris.Line({
      element: 'revenue-chart',
      resize: true,
      data: data,
      xkey: 'm',
      ykeys: ['a', 'b'],
      labels: [revenueLabel, targetLabel],
      lineColors: ['#227a03', '#cd6402'],
      hideHover: 'auto',
      xLabels: 'month',
      xLabelFormat: function(x) { // <--- x.getMonth() returns valid index
        var month = months[x.getMonth()];
        return month;
      },
      dateFormat: function(x) {
        var month = months[new Date(x).getMonth()];
        return month;
      },
    });
  });
</script>
@endpush
