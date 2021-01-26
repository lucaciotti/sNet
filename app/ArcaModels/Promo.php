<?php

namespace knet\ArcaModels;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

use Carbon\Carbon;
use knet\Helpers\RedisUser as RedisUser;

class Promo extends Model
{
    protected $table = 'u_promo';
    public $timestamps = false;
    // protected $primaryKey = 'id';
    public $incrementing = false;
    protected $connection = '';

    protected $dates = ['dataini', 'datafine'];
    // protected $appends = ['master_clas', 'master_grup', 'listino', 'tipo_prod'];

    // Scope that garante to find only Supplier from anagrafe
    protected static function boot()
    {
        parent::boot();

        static::addGlobalScope('attivo', function (Builder $builder) {
            $builder->where('datafine', '>=', Carbon::now()->subMonths(6)->endOfYear()->subDay());
            // ->orWhere('datafine', '=', '')->orWhereNull('datafine')
        });
    }

    public function __construct($attributes = array())
    {
        self::boot();
        parent::__construct($attributes);
        //Imposto la Connessione al Database
        $this->setConnection(RedisUser::get('ditta_DB'));
    }

    // JOIN Tables
    public function product()
    {
        return $this->belongsTo('knet\ArcaModels\Product', 'codicearti', 'codice');
    }

    public function listino()
    {
        return $this->hasManyThrough(
            Listini::class,
            PromoLis::class,
            'id_promo',
            'id',
            'id',
            'id_listino'
        );
    }
}
