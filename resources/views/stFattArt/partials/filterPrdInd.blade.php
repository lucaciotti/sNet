
    <div class="form-group">
        <label>{{ trans('prod.groupProd') }}</label>
        <select name="grpPrdSelected[]" class="form-control select2" multiple="multiple"
            data-placeholder="{{ trans('prod.group_plchld') }}" style="width: 100%;">
            @foreach ($grpPrdList as $gruppo)
            <option value="{{ $gruppo->codice }}" @if(isset($grpPrdSelected) && in_array($gruppo->codice, $grpPrdSelected))
                selected
                @endif
                >[{{ $gruppo->codice }}] {{ $gruppo->descrizion }}</option>
            @endforeach
        </select>
    </div>


    <div class="form-group">
        <label>{{ trans('prod.masterGroup') }}</label>
        <div class="radio">
            <label>
                <input type="radio" name="optTipoProd" id="opt1" value="" @if(!isset($optTipoProd)) checked @endif> {{ trans('doc.allDocs') }}
            </label>
            <label>
                <input type="radio" name="optTipoProd" id="opt2" value="GRUPPO A" @if(isset($optTipoProd) && $optTipoProd=="GRUPPO A") checked @endif> GRUPPO A
            </label>
            <label>
                <input type="radio" name="optTipoProd" id="opt3" value="GRUPPO B" @if(isset($optTipoProd) && $optTipoProd=="GRUPPO B") checked @endif> GRUPPO B
            </label>
            <label>
                <input type="radio" name="optTipoProd" id="opt4" value="GRUPPO C" @if(isset($optTipoProd) && $optTipoProd=="GRUPPO C") checked @endif> GRUPPO C
            </label>
            @if(RedisUser::get('ditta')=='knet_es')
            <label>
                <input type="radio" name="optTipoProd" id="opt5" value="PLANET" @if(isset($optTipoProd) && $optTipoProd=="PLANET") checked @endif> Planet
            </label>
            @endif
        </div>
    </div>