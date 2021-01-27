<?php

namespace knet\ArcaModels;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use knet\Helpers\RedisUser;

class Product extends Model
{
  protected $table = 'magart';
  public $timestamps = false;
  protected $primaryKey = 'codice';
  public $incrementing = false;
  protected $connection = '';
  protected $fillable = ['codice', 'descrizion', 'listino1', 'listino6', 'listino7'];

  protected $dates = ['u_datacrea'];
  protected $appends = ['master_clas', 'master_grup', 'listino', 'tipo_prod'];

  // Scope that garante to find only Supplier from anagrafe
  protected static function boot()
  {
      parent::boot();

      static::addGlobalScope('Listino', function(Builder $builder) {
          $builder->where('u_artlis', '=', true);
      });
  }

  public function __construct ($attributes = array())
  {
    self::boot();
    parent::__construct($attributes);
    //Imposto la Connessione al Database
    $this->setConnection(RedisUser::get('ditta_DB'));
  }

  //Accessors
  public function getMasterClasAttribute(){
      return substr($this->attributes['classe'],0,3);
  }

  public function getMasterGrupAttribute(){
      return substr($this->attributes['gruppo'],0,3);
  }

  public function getTipoProdAttribute(){
      if (substr($this->attributes['gruppo'],0,3)=="B06"){
        $tipo = "GRUPPO A";
      } elseif (substr($this->attributes['gruppo'],0,1)=="B") {
        $tipo = "GRUPPO B";
      } elseif (substr($this->attributes['gruppo'],0,1)=="A") {
        $tipo = "GRUPPO C";
      } elseif (substr($this->attributes['gruppo'],0,1)=="C") {
        $tipo = "GRUPPO Z";
      } elseif (substr($this->attributes['gruppo'],0,1)=="2") {
        $tipo = "GRUPPO Z";
      } else {
        $tipo = "GRUPPO Z";
      }
      return $tipo;
  }

  public function getListinoAttribute(){
      if(RedisUser::get('ditta_DB')== "kNet_it") {
        if(substr($this->attributes['gruppo'],0,1)=='B'){
          $listino = $this->attributes['listino6'];
        } else {
          $listino = $this->attributes['listino1'];
        }
      } else {
        $listino = $this->attributes['listino1'];
      }
      return $listino;
  }

  // JOIN Tables
  public function docrow(){
    return $this->hasMany('knet\ArcaModels\DocRow', 'codicearti', 'codice');
  }

  public function masterClas(){
    return $this->hasOne('knet\ArcaModels\ClasProd', 'codice', 'master_clas');
  }

  public function clasProd(){
    return $this->hasOne('knet\ArcaModels\SubClasProd', 'codice', 'classe');
  }

  public function masterProd(){
    return $this->hasOne('knet\ArcaModels\GrpProd', 'codice', 'master_grup');
  }

  public function grpProd(){
    return $this->hasOne('knet\ArcaModels\SubGrpProd', 'codice', 'gruppo');
  }

  public function descrLang(String $lang)
  {
    return $this->hasOne('knet\ArcaModels\ProdLang', 'codicearti', 'codice')->where('codlingua', strtoupper($lang));
  }

  //Multator
  // public function getDescrizionAttribute($value)
  // {
  //     return ucfirst(strtolower($value));
  // }
}
