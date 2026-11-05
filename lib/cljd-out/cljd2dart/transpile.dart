// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "transpile.dart" as lcoc_transpile;
import "../cljd/core.dart" as lcoc_core;
import "../cljd/string.dart" as lcoc_string;
import "runtime-src.dart" as lcocr_src;

// BEGIN and-expr
dc.dynamic and_expr(dc.dynamic args$1, dc.dynamic env$1, dc.dynamic ind$1, ){
late final dc.dynamic $if_$1;
if((args$1 is lcoc_core.ISeqable$iface)){
$if_$1=((args$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(args$1, ) as lcoc_core.ISeqable$ext).$_seq$0(args$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return "true";
}
late final dc.int cast$1;
if((args$1 is lcoc_core.ICounted$iface)){
cast$1=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $1=(lcoc_core.$EQ_.$_invoke$2(1, cast$1, ));
if($1){
return lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, );
}
late final dc.int cast$2;
if((args$1 is lcoc_core.ICounted$iface)){
cast$2=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.int $2=(cast$2 - 1);
final dc.dynamic $3=(lcoc_core.range.$_invoke$1($2, ));
final dc.dynamic $4=(lcoc_core.map.$_invoke$2((dc.dynamic $UNDERSCORE_$1, ){
return lcoc_transpile.fresh("and", );
}, $3, ));
final lcoc_core.PersistentVector names$1=lcoc_core.vec($4, );
final lcoc_core.PersistentVector vals$1=lcoc_core.vec((lcoc_core.map.$_invoke$2((dc.dynamic p1$9519_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9519_$SHARP_$1, env$1, );
}, lcoc_core.butlast(args$1, ), )), );
final dc.dynamic last_expr$1=lcoc_transpile.expr(lcoc_core.last(args$1, ), env$1, );
late final dc.int cast$3;
if((names$1 is lcoc_core.ICounted$iface)){
cast$3=(((names$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$3=(((lcoc_core.ICounted.extensions(names$1, ) as lcoc_core.ICounted$ext).$_count$0(names$1, )) as dc.int);
}
final dc.dynamic $5=(lcoc_core.range.$_invoke$1(cast$3, ));
final dc.dynamic $6=(lcoc_core.map.$_invoke$2((dc.dynamic i$1, ){
final dc.dynamic n$1=(lcoc_core.nth.$_invoke$2(names$1, i$1, ));
return (lcoc_core.str.$_invoke$5("final ", n$1, " = ", (lcoc_core.nth.$_invoke$2(vals$1, i$1, )), ";", ));
}, $5, ));
final lcoc_core.PersistentVector lines$1=lcoc_core.vec($6, );
late final dc.int cast$4;
if((names$1 is lcoc_core.ICounted$iface)){
cast$4=(((names$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$4=(((lcoc_core.ICounted.extensions(names$1, ) as lcoc_core.ICounted$ext).$_count$0(names$1, )) as dc.int);
}
final dc.dynamic $7=(lcoc_core.range.$_invoke$1(cast$4, ));
final dc.dynamic $8=(lcoc_core.map.$_invoke$2((dc.dynamic i$2, ){
final dc.dynamic n$2=(lcoc_core.nth.$_invoke$2(names$1, i$2, ));
return (lcoc_core.str.$_invoke$6(lcoc_transpile.spaces(((ind$1 as dc.num) + 2), ), "if (!_rt_truthy(", n$2, ")) return ", n$2, ";", ));
}, $7, ));
final lcoc_core.PersistentVector checks$1=lcoc_core.vec($8, );
return (lcoc_core.str.$_invoke_more$10("(() {\n", lcoc_transpile.emit_lines(lines$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.join_lines(checks$1, ), "\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "return ", last_expr$1, ";\n", [lcoc_transpile.spaces(ind$1, ), "})()", ], ));
}

// END and-expr

// BEGIN bind-all
dc.dynamic bind_all(dc.dynamic bindings$1, dc.dynamic env$1, ){
dc.dynamic pairs$1=lcoc_core.vec((lcoc_core.partition.$_invoke$2(2, bindings$1, )), );
dc.dynamic env$2=env$1;
dc.dynamic lines$1=lcoc_core.$_EMPTY_VECTOR;
do {
final dc.dynamic o7080$1=pairs$1;
late final dc.dynamic $if_$1;
if((o7080$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, env$2, ));
(fl$1[1]=lines$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}
final dc.dynamic pair$1=lcoc_core.first(pairs$1, );
final dc.dynamic b$1=(lcoc_core.nth.$_invoke$2(pair$1, 0, ));
final dc.dynamic v$1=(lcoc_core.nth.$_invoke$2(pair$1, 1, ));
final dc.dynamic value$1=lcoc_transpile.expr(v$1, env$2, );
final dc.dynamic vec$9509_$1=lcoc_transpile.bind_pattern(b$1, value$1, env$2, lines$1, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9509_$1, 0, null, ));
final dc.dynamic lines2$1=(lcoc_core.nth.$_invoke$3(vec$9509_$1, 1, null, ));
pairs$1=lcoc_core.vec(lcoc_core.rest(pairs$1, ), );
env$2=env2$1;
lines$1=lines2$1;
continue;
} while(true);
}

// END bind-all

// BEGIN bind-keys
dc.dynamic bind_keys(dc.dynamic ks$1, dc.dynamic kind$1, dc.dynamic tmp$1, dc.dynamic defaults$1, dc.dynamic env$1, dc.dynamic lines$1, ){
dc.dynamic f7135$1(dc.dynamic state$1, dc.dynamic sym$1, ){
final dc.dynamic env$2=(lcoc_core.nth.$_invoke$3(state$1, 0, null, ));
final dc.dynamic lines$2=(lcoc_core.nth.$_invoke$3(state$1, 1, null, ));
final dc.dynamic local_name$1=(lcoc_core.symbol.$_invoke$1(lcoc_core.name(sym$1, ), ));
late final dc.dynamic key_expr$1;
if((lcoc_core.$EQ_.$_invoke$2(kind$1, const lcoc_core.Keyword(null, "keys", 2502457436, ), ))){
late final dc.String? cast$1;
if((sym$1 is lcoc_core.INamed$iface)){
cast$1=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$1=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
if((null != cast$1)){
final dc.dynamic arg$1=lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), );
late final dc.String? cast$2;
if((sym$1 is lcoc_core.INamed$iface)){
cast$2=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$2=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
final dc.dynamic $1=lcoc_transpile.dart_string(cast$2, );
key_expr$1=(lcoc_core.str.$_invoke$5("_Kw(", arg$1, ", ", $1, ")", ));
}else{
key_expr$1=(lcoc_core.str.$_invoke$3("_Kw(", lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), ), ")", ));
}
}else if((lcoc_core.$EQ_.$_invoke$2(kind$1, const lcoc_core.Keyword(null, "strs", 1791426614, ), ))){
key_expr$1=lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), );
}else{
late final dc.String? cast$3;
if((sym$1 is lcoc_core.INamed$iface)){
cast$3=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$3=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
if((null != cast$3)){
final dc.dynamic arg$2=lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), );
late final dc.String? cast$4;
if((sym$1 is lcoc_core.INamed$iface)){
cast$4=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$4=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
final dc.dynamic $2=lcoc_transpile.dart_string(cast$4, );
key_expr$1=(lcoc_core.str.$_invoke$5("_Sym(", arg$2, ", ", $2, ")", ));
}else{
key_expr$1=(lcoc_core.str.$_invoke$3("_Sym(", lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), ), ")", ));
}
}
final dc.dynamic value$1=lcoc_transpile.default_for(defaults$1, sym$1, tmp$1, key_expr$1, env$2, );
return lcoc_transpile.bind_pattern(local_name$1, value$1, env$2, lines$2, );
}
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, env$1, ));
(fl$1[1]=lines$1);
final lcoc_core.PersistentVector start7136$1=lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$1, -1, );
if((ks$1 is lcoc_core.IReduce$iface)){
return ((ks$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, start7136$1, ));
}
return ((lcoc_core.IReduce.extensions(ks$1, ) as lcoc_core.IReduce$ext).$_reduce$2(ks$1, f7135$1, start7136$1, ));
}

// END bind-keys

// BEGIN bind-map
dc.dynamic bind_map(dc.dynamic binding$1, dc.dynamic tmp$1, dc.dynamic env$1, dc.dynamic lines$1, ){
late final dc.dynamic or$6824_$AUTO_$1;
if((binding$1 is lcoc_core.ILookup$iface)){
or$6824_$AUTO_$1=((binding$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "or", 3079089802, ), ));
}else{
or$6824_$AUTO_$1=((lcoc_core.ILookup.extensions(binding$1, ) as lcoc_core.ILookup$ext).$_lookup$1(binding$1, const lcoc_core.Keyword(null, "or", 3079089802, ), ));
}
late final dc.dynamic defaults$1;
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
defaults$1=or$6824_$AUTO_$1;
}else{
defaults$1=lcoc_core.$_EMPTY_MAP;
}
late final dc.dynamic $as_$1;
if((binding$1 is lcoc_core.ILookup$iface)){
$as_$1=((binding$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "as", 55427094, ), ));
}else{
$as_$1=((lcoc_core.ILookup.extensions(binding$1, ) as lcoc_core.ILookup$ext).$_lookup$1(binding$1, const lcoc_core.Keyword(null, "as", 55427094, ), ));
}
late final dc.dynamic vec$9494_$1;
if(((false != $as_$1) && (null != $as_$1))){
vec$9494_$1=lcoc_transpile.bind_pattern($as_$1, tmp$1, env$1, lines$1, );
}else{
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, env$1, ));
(fl$1[1]=lines$1);
vec$9494_$1=lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}
final dc.dynamic env0$1=(lcoc_core.nth.$_invoke$3(vec$9494_$1, 0, null, ));
final dc.dynamic lines0$1=(lcoc_core.nth.$_invoke$3(vec$9494_$1, 1, null, ));
dc.dynamic entries$1;
if((binding$1 is lcoc_core.ISeqable$iface)){
entries$1=((binding$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
entries$1=((lcoc_core.ISeqable.extensions(binding$1, ) as lcoc_core.ISeqable$ext).$_seq$0(binding$1, ));
}
dc.dynamic env$2=env0$1;
dc.dynamic lines$2=lines0$1;
do {
final dc.dynamic o7080$2=entries$1;
late final dc.dynamic $if_$1;
if((o7080$2 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$2, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, env$2, ));
(fl$2[1]=lines$2);
return lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$2, -1, );
}
final dc.dynamic e$1=lcoc_core.first(entries$1, );
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$2(e$1, 0, ));
final dc.dynamic v$1=(lcoc_core.nth.$_invoke$2(e$1, 1, ));
if((lcoc_core.$EQ_.$_invoke$2(k$1, const lcoc_core.Keyword(null, "as", 55427094, ), ))){
entries$1=lcoc_core.rest(entries$1, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(k$1, const lcoc_core.Keyword(null, "or", 3079089802, ), ))){
entries$1=lcoc_core.rest(entries$1, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(k$1, const lcoc_core.Keyword(null, "keys", 2502457436, ), ))){
final dc.dynamic vec$9497_$1=lcoc_transpile.bind_keys(v$1, const lcoc_core.Keyword(null, "keys", 2502457436, ), tmp$1, defaults$1, env$2, lines$2, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9497_$1, 0, null, ));
final dc.dynamic lines2$1=(lcoc_core.nth.$_invoke$3(vec$9497_$1, 1, null, ));
entries$1=lcoc_core.rest(entries$1, );
env$2=env2$1;
lines$2=lines2$1;
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(k$1, const lcoc_core.Keyword(null, "strs", 1791426614, ), ))){
final dc.dynamic vec$9500_$1=lcoc_transpile.bind_keys(v$1, const lcoc_core.Keyword(null, "strs", 1791426614, ), tmp$1, defaults$1, env$2, lines$2, );
final dc.dynamic env2$2=(lcoc_core.nth.$_invoke$3(vec$9500_$1, 0, null, ));
final dc.dynamic lines2$2=(lcoc_core.nth.$_invoke$3(vec$9500_$1, 1, null, ));
entries$1=lcoc_core.rest(entries$1, );
env$2=env2$2;
lines$2=lines2$2;
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(k$1, const lcoc_core.Keyword(null, "syms", 2551195227, ), ))){
final dc.dynamic vec$9503_$1=lcoc_transpile.bind_keys(v$1, const lcoc_core.Keyword(null, "syms", 2551195227, ), tmp$1, defaults$1, env$2, lines$2, );
final dc.dynamic env2$3=(lcoc_core.nth.$_invoke$3(vec$9503_$1, 0, null, ));
final dc.dynamic lines2$3=(lcoc_core.nth.$_invoke$3(vec$9503_$1, 1, null, ));
entries$1=lcoc_core.rest(entries$1, );
env$2=env2$3;
lines$2=lines2$3;
continue;
}
final dc.dynamic key_expr$1=lcoc_transpile.expr(v$1, env$2, );
final dc.String value$1=(lcoc_core.str.$_invoke$5("_rt_get(", tmp$1, ", ", key_expr$1, ")", ));
final dc.dynamic vec$9506_$1=lcoc_transpile.bind_pattern(k$1, value$1, env$2, lines$2, );
final dc.dynamic env2$4=(lcoc_core.nth.$_invoke$3(vec$9506_$1, 0, null, ));
final dc.dynamic lines2$4=(lcoc_core.nth.$_invoke$3(vec$9506_$1, 1, null, ));
entries$1=lcoc_core.rest(entries$1, );
env$2=env2$4;
lines$2=lines2$4;
continue;
} while(true);
}

// END bind-map

// BEGIN bind-params
dc.dynamic bind_params(dc.dynamic params$1, dc.dynamic env$1, ){
dc.dynamic ps$1=lcoc_core.vec(params$1, );
dc.dynamic env$2=env$1;
dc.dynamic sig$1=lcoc_core.$_EMPTY_VECTOR;
dc.dynamic pre$1=lcoc_core.$_EMPTY_VECTOR;
do {
final dc.dynamic o7080$1=ps$1;
late final dc.dynamic $if_$1;
if((o7080$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, env$2, ));
(fl$1[1]=sig$1);
(fl$1[2]=pre$1);
return lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, );
}
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(lcoc_core.first(ps$1, ), )), "&", ))){
return lcoc_transpile.unsupported("variadic fn", params$1, );
}
if(lcoc_core.symbol$QMARK_(lcoc_core.first(ps$1, ), )){
final dc.dynamic p$1=lcoc_core.first(ps$1, );
final dc.dynamic n$1=lcoc_transpile.fresh((lcoc_core.str.$_invoke$1(p$1, )), );
ps$1=lcoc_core.vec(lcoc_core.rest(ps$1, ), );
final dc.dynamic coll7202$1=env$2;
final dc.String k7203$1=(lcoc_core.str.$_invoke$1(p$1, ));
if((coll7202$1 is lcoc_core.IAssociative$iface)){
env$2=((coll7202$1 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$1, n$1, ));
}else{
env$2=((lcoc_core.IAssociative.extensions(coll7202$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7202$1, k7203$1, n$1, ));
}
final dc.dynamic coll7119$1=sig$1;
final dc.String o7120$1=(lcoc_core.str.$_invoke$2("dynamic ", n$1, ));
if((coll7119$1 is lcoc_core.ICollection$iface)){
sig$1=((coll7119$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}else{
sig$1=((lcoc_core.ICollection.extensions(coll7119$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7119$1, o7120$1, ));
}
continue;
}
final dc.dynamic p$2=lcoc_core.first(ps$1, );
final dc.dynamic tmp$1=lcoc_transpile.fresh("p", );
final dc.dynamic vec$9512_$1=lcoc_transpile.bind_pattern(p$2, tmp$1, env$2, pre$1, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9512_$1, 0, null, ));
final dc.dynamic pre2$1=(lcoc_core.nth.$_invoke$3(vec$9512_$1, 1, null, ));
ps$1=lcoc_core.vec(lcoc_core.rest(ps$1, ), );
env$2=env2$1;
final dc.dynamic coll7119$2=sig$1;
final dc.String o7120$2=(lcoc_core.str.$_invoke$2("dynamic ", tmp$1, ));
if((coll7119$2 is lcoc_core.ICollection$iface)){
sig$1=((coll7119$2 as lcoc_core.ICollection$iface).$_conj$1(o7120$2, ));
}else{
sig$1=((lcoc_core.ICollection.extensions(coll7119$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7119$2, o7120$2, ));
}
pre$1=pre2$1;
continue;
} while(true);
}

// END bind-params

// BEGIN bind-pattern
dc.dynamic bind_pattern(dc.dynamic binding$1, dc.dynamic value$1, dc.dynamic env$1, dc.dynamic lines$1, ){
if(lcoc_core.symbol$QMARK_(binding$1, )){
return lcoc_transpile.bind_symbol(binding$1, value$1, env$1, lines$1, );
}
if(lcoc_core.vector$QMARK_(binding$1, )){
return lcoc_transpile.bind_vector(binding$1, (lcoc_core.str.$_invoke$3("(", value$1, ")", )), env$1, lines$1, );
}
if(lcoc_core.map$QMARK_(binding$1, )){
return lcoc_transpile.bind_map(binding$1, (lcoc_core.str.$_invoke$3("(", value$1, ")", )), env$1, lines$1, );
}
return lcoc_transpile.unsupported("binding form", binding$1, );
}

// END bind-pattern

// BEGIN bind-symbol
dc.dynamic bind_symbol(dc.dynamic sym$1, dc.dynamic value$1, dc.dynamic env$1, dc.dynamic lines$1, ){
final dc.dynamic n$1=lcoc_transpile.fresh((lcoc_core.str.$_invoke$1(sym$1, )), );
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.String k7203$1=(lcoc_core.str.$_invoke$1(sym$1, ));
late final dc.dynamic $if_$1;
if((env$1 is lcoc_core.IAssociative$iface)){
$if_$1=((env$1 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$1, n$1, ));
}else{
$if_$1=((lcoc_core.IAssociative.extensions(env$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env$1, k7203$1, n$1, ));
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, $if_$1, ));
final dc.dynamic o7120$1=lcoc_transpile.decl_line(n$1, value$1, );
late final dc.dynamic $if_$2;
if((lines$1 is lcoc_core.ICollection$iface)){
$if_$2=((lines$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(lines$1, ) as lcoc_core.ICollection$ext).$_conj$1(lines$1, o7120$1, ));
}
(fl$1[1]=$if_$2);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}

// END bind-symbol

// BEGIN bind-vector
dc.dynamic bind_vector(dc.dynamic binding$1, dc.dynamic tmp$1, dc.dynamic env$1, dc.dynamic lines$1, ){
dc.dynamic bs$1=lcoc_core.vec(binding$1, );
dc.dynamic i$1=0;
dc.dynamic env$2=env$1;
dc.dynamic lines$2=lines$1;
do {
final dc.dynamic o7080$1=bs$1;
late final dc.dynamic $if_$1;
if((o7080$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, env$2, ));
(fl$1[1]=lines$2);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(lcoc_core.first(bs$1, ), )), "&", ))){
final dc.dynamic r$1=lcoc_core.second(bs$1, );
final dc.String value$1=(lcoc_core.str.$_invoke$5("_rt_drop(", i$1, ", ", tmp$1, ")", ));
final dc.dynamic vec$9482_$1=lcoc_transpile.bind_pattern(r$1, value$1, env$2, lines$2, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9482_$1, 0, null, ));
final dc.dynamic lines2$1=(lcoc_core.nth.$_invoke$3(vec$9482_$1, 1, null, ));
bs$1=lcoc_core.vec((lcoc_core.drop.$_invoke$2(2, bs$1, )), );
env$2=env2$1;
lines$2=lines2$1;
continue;
}
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(lcoc_core.first(bs$1, ), )), ":as", ))){
final dc.dynamic s$1=lcoc_core.second(bs$1, );
final dc.dynamic vec$9485_$1=lcoc_transpile.bind_pattern(s$1, tmp$1, env$2, lines$2, );
final dc.dynamic env2$2=(lcoc_core.nth.$_invoke$3(vec$9485_$1, 0, null, ));
final dc.dynamic lines2$2=(lcoc_core.nth.$_invoke$3(vec$9485_$1, 1, null, ));
bs$1=lcoc_core.vec((lcoc_core.drop.$_invoke$2(2, bs$1, )), );
env$2=env2$2;
lines$2=lines2$2;
continue;
}
final dc.dynamic b$1=lcoc_core.first(bs$1, );
final dc.dynamic vec$9488_$1=lcoc_transpile.bind_pattern(b$1, (lcoc_core.str.$_invoke$5("_rt_nth(", tmp$1, ", ", i$1, ")", )), env$2, lines$2, );
final dc.dynamic env2$3=(lcoc_core.nth.$_invoke$3(vec$9488_$1, 0, null, ));
final dc.dynamic lines2$3=(lcoc_core.nth.$_invoke$3(vec$9488_$1, 1, null, ));
bs$1=lcoc_core.vec(lcoc_core.rest(bs$1, ), );
i$1=(1 + (i$1 as dc.num));
env$2=env2$3;
lines$2=lines2$3;
continue;
} while(true);
}

// END bind-vector

// BEGIN call-expr
dc.dynamic call_expr(dc.dynamic head$1, dc.dynamic args$1, dc.dynamic env$1, dc.dynamic ind$1, ){
if(lcoc_core.keyword$QMARK_(head$1, )){
final dc.dynamic arg$2=lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, );
final dc.dynamic arg$1=lcoc_transpile.kw_expr(head$1, );
late final dc.int cast$1;
if((args$1 is lcoc_core.ICounted$iface)){
cast$1=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $1=(cast$1 > 1);
late final dc.String? $if_$1;
if($1){
$if_$1=(lcoc_core.str.$_invoke$2(", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ));
}else{
$if_$1=null;
}
return (lcoc_core.str.$_invoke$6("_rt_get(", arg$2, ", ", arg$1, $if_$1, ")", ));
}
final dc.bool or$6824_$AUTO_$1=lcoc_core.map$QMARK_(head$1, );
late final dc.bool $if_$2;
if(or$6824_$AUTO_$1){
$if_$2=or$6824_$AUTO_$1;
}else{
final dc.bool or$6824_$AUTO_$2=lcoc_core.vector$QMARK_(head$1, );
if(or$6824_$AUTO_$2){
$if_$2=or$6824_$AUTO_$2;
}else{
$if_$2=lcoc_core.set$QMARK_(head$1, );
}
}
if($if_$2){
final dc.dynamic arg$4=lcoc_transpile.expr(head$1, env$1, );
final dc.dynamic arg$3=lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, );
late final dc.int cast$2;
if((args$1 is lcoc_core.ICounted$iface)){
cast$2=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $2=(cast$2 > 1);
late final dc.String? $if_$3;
if($2){
$if_$3=(lcoc_core.str.$_invoke$2(", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ));
}else{
$if_$3=null;
}
return (lcoc_core.str.$_invoke$6("_rt_get(", arg$4, ", ", arg$3, $if_$3, ")", ));
}
if(lcoc_core.symbol$QMARK_(head$1, )){
final dc.String h$1=(lcoc_core.str.$_invoke$1(head$1, ));
if((lcoc_core.$EQ_.$_invoke$2(h$1, ".", ))){
return lcoc_transpile.dot_call(args$1, env$1, );
}
if(lcoc_string.starts_with$QMARK_(h$1, ".-", )){
return lcoc_transpile.interop_call(head$1, args$1, env$1, );
}
if(lcoc_string.starts_with$QMARK_(h$1, ".", )){
return lcoc_transpile.interop_call(head$1, args$1, env$1, );
}
final dc.bool and$6942_$AUTO_$1=lcoc_string.includes$QMARK_(h$1, "/", );
late final dc.bool $if_$4;
if(and$6942_$AUTO_$1){
$if_$4=(lcoc_core.not$EQ_.$_invoke$2(h$1, "/", ));
}else{
$if_$4=and$6942_$AUTO_$1;
}
if($if_$4){
late final dc.String? ns$1;
if((head$1 is lcoc_core.INamed$iface)){
ns$1=(((head$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
ns$1=(((lcoc_core.INamed.extensions(head$1, ) as lcoc_core.INamed$ext).$_namespace$0(head$1, )) as dc.String?);
}
final dc.String nm$1=lcoc_core.name(head$1, );
if((lcoc_core.$EQ_.$_invoke$2(ns$1, "cljd.core", ))){
final dc.dynamic or$6824_$AUTO_$3=lcoc_transpile.core_call(nm$1, args$1, env$1, );
if(((false != or$6824_$AUTO_$3) && (null != or$6824_$AUTO_$3))){
return or$6824_$AUTO_$3;
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("cljd.core/", nm$1, )), head$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(ns$1, "clojure.core", ))){
final dc.dynamic or$6824_$AUTO_$4=lcoc_transpile.core_call(nm$1, args$1, env$1, );
if(((false != or$6824_$AUTO_$4) && (null != or$6824_$AUTO_$4))){
return or$6824_$AUTO_$4;
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("clojure.core/", nm$1, )), head$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(ns$1, "cljd.string", ))){
final dc.dynamic or$6824_$AUTO_$5=lcoc_transpile.core_call((lcoc_core.str.$_invoke$2("str/", nm$1, )), args$1, env$1, );
if(((false != or$6824_$AUTO_$5) && (null != or$6824_$AUTO_$5))){
return or$6824_$AUTO_$5;
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("cljd.string/", nm$1, )), head$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(ns$1, "cljd.set", ))){
final dc.dynamic or$6824_$AUTO_$6=lcoc_transpile.core_call((lcoc_core.str.$_invoke$2("set/", nm$1, )), args$1, env$1, );
if(((false != or$6824_$AUTO_$6) && (null != or$6824_$AUTO_$6))){
return or$6824_$AUTO_$6;
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("cljd.set/", nm$1, )), head$1, );
}
late final dc.dynamic $if_$5;
if((env$1 is lcoc_core.ILookup$iface)){
$if_$5=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}else{
$if_$5=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}
final dc.bool $3=(lcoc_core.$EQ_.$_invoke$2(ns$1, $if_$5, ));
if($3){
return (lcoc_core.str.$_invoke$5("_rt_invoke(", lcoc_transpile.munge(nm$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9530_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9530_$SHARP_$1, env$1, );
}, args$1, )), )), "])", ));
}
late final dc.dynamic $if_$6;
if((env$1 is lcoc_core.ILookup$iface)){
$if_$6=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "imports", 42919989, ), ));
}else{
$if_$6=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "imports", 42919989, ), ));
}
final dc.bool $4=lcoc_core.contains$QMARK_($if_$6, ns$1, );
if($4){
late final dc.dynamic o7258$4;
if((env$1 is lcoc_core.ILookup$iface)){
o7258$4=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "imports", 42919989, ), ));
}else{
o7258$4=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "imports", 42919989, ), ));
}
late final dc.dynamic imported$1;
if((o7258$4 is lcoc_core.ILookup$iface)){
imported$1=((o7258$4 as lcoc_core.ILookup$iface).$_lookup$1(ns$1, ));
}else{
imported$1=((lcoc_core.ILookup.extensions(o7258$4, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$4, ns$1, ));
}
if((lcoc_core.$EQ_.$_invoke$2(imported$1, "cljd.string", ))){
final dc.dynamic or$6824_$AUTO_$7=lcoc_transpile.core_call((lcoc_core.str.$_invoke$2("str/", nm$1, )), args$1, env$1, );
if(((false != or$6824_$AUTO_$7) && (null != or$6824_$AUTO_$7))){
return or$6824_$AUTO_$7;
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("cljd.string/", nm$1, )), head$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(imported$1, "cljd.set", ))){
final dc.dynamic or$6824_$AUTO_$8=lcoc_transpile.core_call((lcoc_core.str.$_invoke$2("set/", nm$1, )), args$1, env$1, );
if(((false != or$6824_$AUTO_$8) && (null != or$6824_$AUTO_$8))){
return or$6824_$AUTO_$8;
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("cljd.set/", nm$1, )), head$1, );
}
final dc.String member$1=lcoc_string.replace(nm$1, "/", ".", );
final dc.String callee$1=(lcoc_core.str.$_invoke$3(ns$1, ".", member$1, ));
return (lcoc_core.str.$_invoke$4(callee$1, "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9531_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9531_$SHARP_$1, env$1, );
}, args$1, )), )), ")", ));
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("namespace ", ns$1, )), head$1, );
}
if(lcoc_string.ends_with$QMARK_(h$1, ".", )){
return (lcoc_core.str.$_invoke$4(lcoc_transpile.munge(lcoc_transpile.constructor_name(head$1, ), ), "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9532_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9532_$SHARP_$1, env$1, );
}, args$1, )), )), ")", ));
}
final dc.dynamic test$1=lcoc_core.re_matches(dc.RegExp("[A-Z].*", ), h$1, );
if(((false != test$1) && (null != test$1))){
return (lcoc_core.str.$_invoke$4(lcoc_transpile.munge(h$1, ), "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9533_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9533_$SHARP_$1, env$1, );
}, args$1, )), )), ")", ));
}
final lcoc_core.PersistentHashSet not_found7256$1=lcoc_core.$_EMPTY_SET;
late final dc.dynamic $if_$7;
if((env$1 is lcoc_core.ILookup$iface)){
$if_$7=((env$1 as lcoc_core.ILookup$iface).$_lookup$2(const lcoc_core.Keyword(null, "globals", 1865841327, ), not_found7256$1, ));
}else{
$if_$7=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$2(env$1, const lcoc_core.Keyword(null, "globals", 1865841327, ), not_found7256$1, ));
}
final dc.bool $5=lcoc_core.contains$QMARK_($if_$7, h$1, );
late final dc.dynamic or$6824_$AUTO_$9;
if($5){
or$6824_$AUTO_$9=null;
}else{
or$6824_$AUTO_$9=lcoc_transpile.core_call(h$1, args$1, env$1, );
}
if(((false != or$6824_$AUTO_$9) && (null != or$6824_$AUTO_$9))){
return or$6824_$AUTO_$9;
}
return (lcoc_core.str.$_invoke$5("_rt_invoke(", lcoc_transpile.symbol_expr(head$1, env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9534_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9534_$SHARP_$1, env$1, );
}, args$1, )), )), "])", ));
}
return (lcoc_core.str.$_invoke$5("_rt_invoke(", lcoc_transpile.expr(head$1, env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9535_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9535_$SHARP_$1, env$1, );
}, args$1, )), )), "])", ));
}

// END call-expr

// BEGIN case-expr
dc.dynamic case_expr(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.dynamic target$1=(lcoc_core.nth.$_invoke$2(form$1, 1, ));
final dc.dynamic clauses$1=(lcoc_core.drop.$_invoke$2(2, form$1, ));
final lcoc_core.PersistentVector pairs$1=lcoc_core.vec((lcoc_core.partition.$_invoke$2(2, clauses$1, )), );
late final dc.int cast$1;
if((clauses$1 is lcoc_core.ICounted$iface)){
cast$1=(((clauses$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(clauses$1, ) as lcoc_core.ICounted$ext).$_count$0(clauses$1, )) as dc.int);
}
final dc.bool has_default$1=cast$1.isOdd;
late final dc.dynamic $default_$1;
if(has_default$1){
$default_$1=lcoc_core.last(clauses$1, );
}else{
$default_$1=null;
}
final dc.dynamic t$1=lcoc_transpile.fresh("case", );
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, lcoc_transpile.decl_line(t$1, lcoc_transpile.expr(target$1, env$1, ), ), ));
final dc.dynamic $1=lcoc_transpile.emit_lines(lcoc_core.PersistentVector(null, 1, 5, arg$1, fl$1, -1, ), (1 + (ind$1 as dc.num)), );
final dc.dynamic arg$2=lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic pair$1, ){
final dc.dynamic test$1=(lcoc_core.nth.$_invoke$2(pair$1, 0, ));
final dc.dynamic body$1=(lcoc_core.nth.$_invoke$2(pair$1, 1, ));
late final dc.String cond$1;
if(lcoc_core.list$QMARK_(test$1, )){
cond$1=(lcoc_core.str.$_invoke$5("_rt_in([", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9527_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9527_$SHARP_$1, env$1, );
}, test$1, )), )), "], ", t$1, ")", ));
}else{
cond$1=(lcoc_core.str.$_invoke$5("_rt_eq(", t$1, ", ", lcoc_transpile.expr(test$1, env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$6(lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "if (", cond$1, ") return ", lcoc_transpile.expr(body$1, env$1, ), ";", ));
}, pairs$1, )), );
late final dc.String? $if_$2;
if(has_default$1){
$if_$2=(lcoc_core.str.$_invoke$5("\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "return ", lcoc_transpile.expr($default_$1, env$1, ), ";", ));
}else{
$if_$2=null;
}
late final dc.String? $if_$1;
if(has_default$1){
$if_$1=null;
}else{
$if_$1=(lcoc_core.str.$_invoke$3("\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "throw Exception('case: no matching clause');", ));
}
return (lcoc_core.str.$_invoke$9("(() {\n", $1, "\n", arg$2, $if_$2, $if_$1, "\n", lcoc_transpile.spaces(ind$1, ), "})()", ));
}

// END case-expr

// BEGIN cond-result
dc.dynamic cond_result(dc.dynamic clauses$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final lcoc_core.PersistentVector pairs$1=lcoc_core.vec((lcoc_core.partition.$_invoke$2(2, clauses$1, )), );
late final dc.dynamic $if_$1;
if((pairs$1 is lcoc_core.ISeqable$iface)){
$if_$1=((pairs$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(pairs$1, ) as lcoc_core.ISeqable$ext).$_seq$0(pairs$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return "null";
}
final dc.dynamic pair$1=lcoc_core.first(pairs$1, );
final dc.dynamic test$1=(lcoc_core.nth.$_invoke$2(pair$1, 0, ));
final dc.dynamic body$1=(lcoc_core.nth.$_invoke$2(pair$1, 1, ));
final lcoc_core.PersistentVector rest_clauses$1=lcoc_core.vec((lcoc_core.apply.$_invoke$2(lcoc_core.concat, lcoc_core.vec(lcoc_core.rest(pairs$1, ), ), )), );
final dc.bool or$6824_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(test$1, )), ":else", ));
late final dc.bool $if_$3;
if(or$6824_$AUTO_$1){
$if_$3=or$6824_$AUTO_$1;
}else{
$if_$3=dc.identical(test$1, true, );
}
if($if_$3){
return lcoc_transpile.expr(body$1, env$1, );
}
return (lcoc_core.str.$_invoke$7("(", lcoc_transpile.truthy(lcoc_transpile.expr(test$1, env$1, ), ), " ? ", lcoc_transpile.expr(body$1, env$1, ), " : ", lcoc_transpile.cond_result(rest_clauses$1, env$1, ind$1, ), ")", ));
}

// END cond-result

// BEGIN cond-stmt
dc.dynamic cond_stmt(dc.dynamic clauses$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final lcoc_core.PersistentVector pairs$1=lcoc_core.vec((lcoc_core.partition.$_invoke$2(2, clauses$1, )), );
late final dc.dynamic $if_$1;
if((pairs$1 is lcoc_core.ISeqable$iface)){
$if_$1=((pairs$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(pairs$1, ) as lcoc_core.ISeqable$ext).$_seq$0(pairs$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return (lcoc_core.str.$_invoke$2(lcoc_transpile.spaces(ind$1, ), ";", ));
}
final dc.dynamic pair$1=lcoc_core.first(pairs$1, );
final dc.dynamic test$1=(lcoc_core.nth.$_invoke$2(pair$1, 0, ));
final dc.dynamic body$1=(lcoc_core.nth.$_invoke$2(pair$1, 1, ));
final lcoc_core.PersistentVector rest_clauses$1=lcoc_core.vec((lcoc_core.apply.$_invoke$2(lcoc_core.concat, lcoc_core.vec(lcoc_core.rest(pairs$1, ), ), )), );
final dc.bool or$6824_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(test$1, )), ":else", ));
late final dc.bool $if_$3;
if(or$6824_$AUTO_$1){
$if_$3=or$6824_$AUTO_$1;
}else{
$if_$3=dc.identical(test$1, true, );
}
if($if_$3){
return lcoc_transpile.stmt_block(body$1, env$1, ind$1, );
}
final dc.dynamic arg$4=lcoc_transpile.spaces(ind$1, );
final dc.dynamic arg$3=lcoc_transpile.expr(test$1, env$1, );
final dc.dynamic arg$2=lcoc_transpile.stmt_block(body$1, env$1, (1 + (ind$1 as dc.num)), );
final dc.dynamic arg$1=lcoc_transpile.spaces(ind$1, );
late final dc.dynamic $if_$4;
if((rest_clauses$1 is lcoc_core.ISeqable$iface)){
$if_$4=((rest_clauses$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(rest_clauses$1, ) as lcoc_core.ISeqable$ext).$_seq$0(rest_clauses$1, ));
}
late final dc.String? $if_$5;
if(((false != $if_$4) && (null != $if_$4))){
$if_$5=(lcoc_core.str.$_invoke$5(" else {\n", lcoc_transpile.cond_stmt(rest_clauses$1, env$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.spaces(ind$1, ), "}", ));
}else{
$if_$5=null;
}
return (lcoc_core.str.$_invoke$9(arg$4, "if (_rt_truthy(", arg$3, ")) {\n", arg$2, "\n", arg$1, "}", $if_$5, ));
}

// END cond-stmt

// BEGIN constructor-name
dc.dynamic constructor_name(dc.dynamic sym$1, ){
final dc.String s$1=(lcoc_core.str.$_invoke$1(sym$1, ));
if(lcoc_string.ends_with$QMARK_(s$1, ".", )){
late final dc.int cast$1;
if((s$1 is lcoc_core.ICounted$iface)){
cast$1=(((s$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(s$1, ) as lcoc_core.ICounted$ext).$_count$0(s$1, )) as dc.int);
}
final dc.int $1=(cast$1 - 1);
return (lcoc_core.subs.$_invoke$3(s$1, 0, $1, ));
}
return s$1;
}

// END constructor-name

// BEGIN core-call
dc.dynamic core_call(dc.dynamic fname$1, dc.dynamic args$1, dc.dynamic env$1, ){
late final dc.int n$1;
if((args$1 is lcoc_core.ICounted$iface)){
n$1=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
n$1=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "+", ))){
return lcoc_transpile.rt_list_call("_rt_add", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "-", ))){
return lcoc_transpile.rt_list_call("_rt_sub", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "*", ))){
return lcoc_transpile.rt_list_call("_rt_mul", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "/", ))){
return lcoc_transpile.rt_list_call("_rt_div", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "=", ))){
return lcoc_transpile.rt_list_call("_rt_eq_all", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "not=", ))){
return (lcoc_core.str.$_invoke$3("(!_rt_eq_all([", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9472_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9472_$SHARP_$1, env$1, );
}, args$1, )), )), "]))", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "<", ))){
return lcoc_transpile.rt_list_call("_rt_lt_all", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, ">", ))){
return lcoc_transpile.rt_list_call("_rt_gt_all", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "<=", ))){
return lcoc_transpile.rt_list_call("_rt_lte_all", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, ">=", ))){
return lcoc_transpile.rt_list_call("_rt_gte_all", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "not", ))){
return (lcoc_core.str.$_invoke$2("!", lcoc_transpile.truthy(lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ), ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str", ))){
return lcoc_transpile.rt_list_call("_rt_str", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "pr-str", ))){
return lcoc_transpile.rt_list_call("_rt_pr_str_many", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "print", ))){
return lcoc_transpile.rt_list_call("_rt_print", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "println", ))){
return lcoc_transpile.rt_list_call("_rt_println", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "pr", ))){
return lcoc_transpile.rt_list_call("_rt_pr", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "prn", ))){
return lcoc_transpile.rt_list_call("_rt_prn", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "assoc", ))){
return lcoc_transpile.rt_list_call("_rt_assoc", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "dissoc", ))){
return lcoc_transpile.rt_list_call("_rt_dissoc", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "conj", ))){
return lcoc_transpile.rt_list_call("_rt_conj", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "merge", ))){
return lcoc_transpile.rt_list_call("_rt_merge", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "min", ))){
return lcoc_transpile.rt_list_call("_rt_min", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "max", ))){
return lcoc_transpile.rt_list_call("_rt_max", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "list", ))){
return lcoc_transpile.rt_list_call("_rt_list", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "vector", ))){
return lcoc_transpile.rt_list_call("_rt_list", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "hash-map", ))){
return lcoc_transpile.rt_list_call("_rt_hash_map", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "set", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 0, ))){
return "_rt_set(null)";
}
return (lcoc_core.str.$_invoke$3("_rt_set(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "apply", ))){
return lcoc_transpile.rt_list_call("_rt_apply", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "concat", ))){
return lcoc_transpile.rt_list_call("_rt_concat", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "partial", ))){
return (lcoc_core.str.$_invoke$5("_rt_partial(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9473_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9473_$SHARP_$1, env$1, );
}, lcoc_core.rest(args$1, ), )), )), "])", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "comp", ))){
return lcoc_transpile.rt_list_call("_rt_comp", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "juxt", ))){
return lcoc_transpile.rt_list_call("_rt_juxt", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "complement", ))){
return lcoc_transpile.rt_call("_rt_complement", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "constantly", ))){
return lcoc_transpile.rt_call("_rt_constantly", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "atom", ))){
return lcoc_transpile.rt_call("_Atom", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "reset!", ))){
return lcoc_transpile.rt_call("_rt_reset", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "deref", ))){
return lcoc_transpile.rt_call("_rt_deref", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "swap!", ))){
return (lcoc_core.str.$_invoke$7("_rt_swap(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9474_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9474_$SHARP_$1, env$1, );
}, (lcoc_core.drop.$_invoke$2(2, args$1, )), )), )), "])", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "get", ))){
return lcoc_transpile.rt_call("_rt_get", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "get-in", ))){
return lcoc_transpile.rt_call("_rt_get_in", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "nth", ))){
return lcoc_transpile.rt_call("_rt_nth", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "subs", ))){
return lcoc_transpile.rt_call("_rt_subs", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "assoc-in", ))){
return lcoc_transpile.rt_call("_rt_assoc_in", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "update", ))){
return (lcoc_core.str.$_invoke$9("_rt_update(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ", ", lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(args$1, 2, )), env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9475_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9475_$SHARP_$1, env$1, );
}, (lcoc_core.drop.$_invoke$2(3, args$1, )), )), )), "])", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "update-in", ))){
return (lcoc_core.str.$_invoke$9("_rt_update_in(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ", ", lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(args$1, 2, )), env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9476_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9476_$SHARP_$1, env$1, );
}, (lcoc_core.drop.$_invoke$2(3, args$1, )), )), )), "])", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "range", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 1, ))){
return (lcoc_core.str.$_invoke$3("_rt_range(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(n$1, 2, ))){
return (lcoc_core.str.$_invoke$5("_rt_range(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$7("_rt_range(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ", ", lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(args$1, 2, )), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "map", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 2, ))){
return (lcoc_core.str.$_invoke$5("_rt_map(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$5("_rt_map_multi(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9477_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9477_$SHARP_$1, env$1, );
}, lcoc_core.rest(args$1, ), )), )), "])", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "mapv", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 2, ))){
return (lcoc_core.str.$_invoke$5("_rt_map(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$5("_rt_map_multi(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", [", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9478_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9478_$SHARP_$1, env$1, );
}, lcoc_core.rest(args$1, ), )), )), "])", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "map-indexed", ))){
return (lcoc_core.str.$_invoke$5("_rt_map_indexed(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "reduce", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 2, ))){
return (lcoc_core.str.$_invoke$5("_rt_reduce2(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$7("_rt_reduce3(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ", ", lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(args$1, 2, )), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "reduce-kv", ))){
return (lcoc_core.str.$_invoke$7("_rt_reduce_kv(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ", ", lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(args$1, 2, )), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "sort-by", ))){
return (lcoc_core.str.$_invoke$5("_rt_sort_by(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "sort", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 2, ))){
return (lcoc_core.str.$_invoke$5("_rt_sort_by(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$3("_rt_sort(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/join", ))){
if((lcoc_core.$EQ_.$_invoke$2(n$1, 2, ))){
return (lcoc_core.str.$_invoke$5("_rt_join(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$3("_rt_join('', ", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/split", ))){
return (lcoc_core.str.$_invoke$5("_rt_split(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ", ", lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/upper-case", ))){
return lcoc_transpile.rt_call("_rt_upper", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/lower-case", ))){
return lcoc_transpile.rt_call("_rt_lower", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/trim", ))){
return lcoc_transpile.rt_call("_rt_trim", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/triml", ))){
return lcoc_transpile.rt_call("_rt_triml", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/trimr", ))){
return lcoc_transpile.rt_call("_rt_trimr", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/capitalize", ))){
return lcoc_transpile.rt_call("_rt_capitalize", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/blank?", ))){
return lcoc_transpile.rt_call("_rt_blank_q", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/starts-with?", ))){
return lcoc_transpile.rt_call("_rt_starts_with", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/ends-with?", ))){
return lcoc_transpile.rt_call("_rt_ends_with", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/includes?", ))){
return lcoc_transpile.rt_call("_rt_includes", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/replace", ))){
return lcoc_transpile.rt_call("_rt_replace", args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(fname$1, "str/replace-first", ))){
return lcoc_transpile.rt_call("_rt_replace_first", args$1, env$1, );
}
if(lcoc_core.contains$QMARK_(lcoc_transpile.core_value_fns$v1, fname$1, )){
final dc.dynamic o7258$1=lcoc_transpile.core_value_fns$v1;
late final dc.dynamic $if_$1;
if((o7258$1 is lcoc_core.ILookup$iface)){
$if_$1=((o7258$1 as lcoc_core.ILookup$iface).$_lookup$1(fname$1, ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(o7258$1, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$1, fname$1, ));
}
return lcoc_transpile.rt_call($if_$1, args$1, env$1, );
}
return null;
}

// END core-call

// BEGIN core-value-fns
dc.dynamic core_value_fns$v1=(){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(10, "partial", ));
(fl$2[1]="_rt_partial");
(fl$2[2]="boolean");
(fl$2[3]="_rt_truthy");
(fl$2[4]="map");
(fl$2[5]="_rt_map");
(fl$2[6]="compare");
(fl$2[7]="_rt_compare");
(fl$2[8]="seq");
(fl$2[9]="_rt_seq");
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(31, lcoc_core.BitmapNode(5, 1142952000, 1142952000, fl$2, ), ));
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(6, "not-every?", ));
(fl$3[1]="_rt_not_every");
(fl$3[2]="drop-while");
(fl$3[3]="_rt_drop_while");
(fl$3[4]="vec");
(fl$3[5]="_rt_vec");
(fl$1[1]=lcoc_core.BitmapNode(3, 2147532800, 2147532800, fl$3, ));
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(8, "integer?", ));
(fl$4[1]="_rt_integer_q");
(fl$4[2]="min");
(fl$4[3]="_rt_variadic(_rt_min)");
(fl$4[4]="=");
(fl$4[5]="_rt_variadic(_rt_eq_all)");
(fl$4[6]="list");
(fl$4[7]="_rt_variadic(_rt_list)");
(fl$1[2]=lcoc_core.BitmapNode(4, 3221229576, 3221229576, fl$4, ));
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(10, "constantly", ));
(fl$5[1]="_rt_constantly");
(fl$5[2]="*");
(fl$5[3]="_rt_variadic(_rt_mul)");
(fl$5[4]="next");
(fl$5[5]="_rt_next");
(fl$5[6]="keys");
(fl$5[7]="_rt_keys");
(fl$5[8]="contains?");
(fl$5[9]="_rt_contains");
(fl$1[3]=lcoc_core.BitmapNode(5, 1075937288, 1075937288, fl$5, ));
(fl$1[4]="<=");
(fl$1[5]="_rt_variadic(_rt_lte_all)");
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(6, "find", ));
(fl$6[1]="_rt_find");
(fl$6[2]="number?");
(fl$6[3]="_rt_number_q");
(fl$6[4]="dissoc");
(fl$6[5]="_rt_variadic(_rt_dissoc)");
(fl$1[6]=lcoc_core.BitmapNode(3, 1050688, 1050688, fl$6, ));
(fl$1[7]="vector?");
(fl$1[8]="_rt_vector_q");
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, "hash-map", ));
(fl$7[1]="_rt_variadic(_rt_hash_map)");
(fl$7[2]="/");
(fl$7[3]="_rt_variadic(_rt_div)");
(fl$7[4]="str");
(fl$7[5]="_rt_variadic(_rt_str)");
(fl$1[9]=lcoc_core.BitmapNode(3, 3254779904, 3254779904, fl$7, ));
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(8, "reverse", ));
(fl$8[1]="_rt_reverse");
(fl$8[2]="rand");
(fl$8[3]="_rt_rand");
(fl$8[4]="every?");
(fl$8[5]="_rt_every");
(fl$8[6]="-");
(fl$8[7]="_rt_variadic(_rt_sub)");
(fl$1[10]=lcoc_core.BitmapNode(4, 537920016, 537920016, fl$8, ));
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(8, "true?", ));
(fl$9[1]="_rt_true_q");
(fl$9[2]="second");
(fl$9[3]="_rt_second");
(fl$9[4]="false?");
(fl$9[5]="_rt_false_q");
(fl$9[6]="max");
(fl$9[7]="_rt_variadic(_rt_max)");
(fl$1[11]=lcoc_core.BitmapNode(4, 25167360, 25167360, fl$9, ));
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(3, "nth", ));
(fl$10[1]="_rt_nth");
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(4, "comp", ));
(fl$11[1]="_rt_variadic(_rt_comp)");
(fl$11[2]="partition");
(fl$11[3]="_rt_partition");
(fl$10[2]=lcoc_core.BitmapNode(2, 536870916, 536870916, fl$11, ));
(fl$1[12]=lcoc_core.BitmapNode(3, 1073750016, 8192, fl$10, ));
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(4, "double?", ));
(fl$12[1]="_rt_double_q");
(fl$12[2]="take");
(fl$12[3]="_rt_take");
(fl$1[13]=lcoc_core.BitmapNode(2, 536879104, 536879104, fl$12, ));
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(8, "rest", ));
(fl$13[1]="_rt_rest");
(fl$13[2]="count");
(fl$13[3]="_rt_count");
(fl$13[4]="empty?");
(fl$13[5]="_rt_empty_coll_q");
(fl$13[6]="swap!");
(fl$13[7]="_rt_swap");
(fl$1[14]=lcoc_core.BitmapNode(4, 268961824, 268961824, fl$13, ));
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(7, "sort", ));
(fl$14[1]="_rt_sort");
(fl$14[2]="not-any?");
(fl$14[3]="_rt_not_any");
(fl$14[4]="apply");
(fl$14[5]="_rt_variadic(_rt_apply)");
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(4, "some?", ));
(fl$15[1]="_rt_some_q");
(fl$15[2]="rem");
(fl$15[3]="_rt_rem");
(fl$14[6]=lcoc_core.BitmapNode(2, 81920, 81920, fl$15, ));
(fl$1[15]=lcoc_core.BitmapNode(5, 266273, 4129, fl$14, ));
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(6, "distinct", ));
(fl$16[1]="_rt_distinct");
(fl$16[2]="name");
(fl$16[3]="_rt_name");
(fl$16[4]="nil?");
(fl$16[5]="_rt_nil_q");
(fl$1[16]=lcoc_core.BitmapNode(3, 49160, 49160, fl$16, ));
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(4, "drop", ));
(fl$17[1]="_rt_drop");
(fl$17[2]="vals");
(fl$17[3]="_rt_vals");
(fl$1[17]=lcoc_core.BitmapNode(2, 545259520, 545259520, fl$17, ));
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(12, "inc", ));
(fl$18[1]="_rt_inc");
(fl$18[2]="sort-by");
(fl$18[3]="_rt_sort_by");
(fl$18[4]="println");
(fl$18[5]="_rt_variadic(_rt_println)");
(fl$18[6]="not=");
(fl$18[7]="_rt_variadic(_rt_not_eq_all)");
(fl$18[8]="atom");
(fl$18[9]="_rt_atom");
(fl$18[10]="vector");
(fl$18[11]="_rt_variadic(_rt_list)");
(fl$1[18]=lcoc_core.BitmapNode(6, 276825236, 276825236, fl$18, ));
final dc.List<dc.dynamic> fl$19=(dc.List<dc.dynamic>.filled(13, "take-while", ));
(fl$19[1]="_rt_take_while");
(fl$19[2]="identity");
(fl$19[3]="_rt_identity");
(fl$19[4]="list?");
(fl$19[5]="_rt_list_q");
(fl$19[6]="odd?");
(fl$19[7]="_rt_odd_q");
(fl$19[8]="keyword?");
(fl$19[9]="_rt_keyword_q");
final dc.List<dc.dynamic> fl$20=(dc.List<dc.dynamic>.filled(4, "keyword", ));
(fl$20[1]="_rt_keyword");
(fl$20[2]="pr-str");
(fl$20[3]="_rt_variadic(_rt_pr_str_many)");
(fl$19[10]=lcoc_core.BitmapNode(2, 67584, 67584, fl$20, ));
(fl$19[11]="remove");
(fl$19[12]="_rt_remove");
(fl$1[19]=lcoc_core.BitmapNode(8, 1677738369, 1140867457, fl$19, ));
final dc.List<dc.dynamic> fl$21=(dc.List<dc.dynamic>.filled(4, "map?", ));
(fl$21[1]="_rt_map_q");
(fl$21[2]=">=");
(fl$21[3]="_rt_variadic(_rt_gte_all)");
(fl$1[20]=lcoc_core.BitmapNode(2, 4194816, 4194816, fl$21, ));
final dc.List<dc.dynamic> fl$22=(dc.List<dc.dynamic>.filled(10, "prn", ));
(fl$22[1]="_rt_variadic(_rt_prn)");
(fl$22[2]="filter");
(fl$22[3]="_rt_filter");
(fl$22[4]="symbol");
(fl$22[5]="_rt_symbol");
(fl$22[6]="empty");
(fl$22[7]="_rt_empty");
(fl$22[8]="complement");
(fl$22[9]="_rt_complement");
(fl$1[21]=lcoc_core.BitmapNode(5, 131906, 131906, fl$22, ));
final dc.List<dc.dynamic> fl$23=(dc.List<dc.dynamic>.filled(8, "symbol?", ));
(fl$23[1]="_rt_symbol_q");
(fl$23[2]="reset!");
(fl$23[3]="_rt_reset");
(fl$23[4]="neg?");
(fl$23[5]="_rt_neg_q");
(fl$23[6]="string?");
(fl$23[7]="_rt_string_q");
(fl$1[22]=lcoc_core.BitmapNode(4, 5243396, 5243396, fl$23, ));
final dc.List<dc.dynamic> fl$24=(dc.List<dc.dynamic>.filled(12, "set?", ));
(fl$24[1]="_rt_set_q");
(fl$24[2]="deref");
(fl$24[3]="_rt_deref");
(fl$24[4]="mod");
(fl$24[5]="_rt_mod");
(fl$24[6]="last");
(fl$24[7]="_rt_last");
(fl$24[8]="<");
(fl$24[9]="_rt_variadic(_rt_lt_all)");
(fl$24[10]="pos?");
(fl$24[11]="_rt_pos_q");
(fl$1[23]=lcoc_core.BitmapNode(6, 1207976322, 1207976322, fl$24, ));
final dc.List<dc.dynamic> fl$25=(dc.List<dc.dynamic>.filled(4, "abs", ));
(fl$25[1]="_rt_abs");
(fl$25[2]="conj");
(fl$25[3]="_rt_variadic(_rt_conj)");
(fl$1[24]=lcoc_core.BitmapNode(2, 1050624, 1050624, fl$25, ));
final dc.List<dc.dynamic> fl$26=(dc.List<dc.dynamic>.filled(4, "print", ));
(fl$26[1]="_rt_variadic(_rt_print)");
(fl$26[2]="zero?");
(fl$26[3]="_rt_zero_q");
(fl$1[25]=lcoc_core.BitmapNode(2, 134221824, 134221824, fl$26, ));
final dc.List<dc.dynamic> fl$27=(dc.List<dc.dynamic>.filled(8, "set", ));
(fl$27[1]="_rt_variadic(_rt_set)");
(fl$27[2]="some");
(fl$27[3]="_rt_some");
(fl$27[4]="fn?");
(fl$27[5]="_rt_fn_q");
(fl$27[6]="juxt");
(fl$27[7]="_rt_variadic(_rt_juxt)");
(fl$1[26]=lcoc_core.BitmapNode(4, 16810272, 16810272, fl$27, ));
final dc.List<dc.dynamic> fl$28=(dc.List<dc.dynamic>.filled(10, "quot", ));
(fl$28[1]="_rt_quot");
(fl$28[2]="coll?");
(fl$28[3]="_rt_coll_q");
(fl$28[4]="reduce");
(fl$28[5]="_rt_reduce3");
(fl$28[6]="flatten");
(fl$28[7]="_rt_flatten");
(fl$28[8]="namespace");
(fl$28[9]="_rt_namespace");
(fl$1[27]=lcoc_core.BitmapNode(5, 1075879952, 1075879952, fl$28, ));
final dc.List<dc.dynamic> fl$29=(dc.List<dc.dynamic>.filled(8, "assoc", ));
(fl$29[1]="_rt_variadic(_rt_assoc)");
(fl$29[2]="into");
(fl$29[3]="_rt_into");
(fl$29[4]="dec");
(fl$29[5]="_rt_dec");
(fl$29[6]="get");
(fl$29[7]="_rt_get");
(fl$1[28]=lcoc_core.BitmapNode(4, 1074267168, 1074267168, fl$29, ));
final dc.List<dc.dynamic> fl$30=(dc.List<dc.dynamic>.filled(8, "merge", ));
(fl$30[1]="_rt_variadic(_rt_merge)");
(fl$30[2]="+");
(fl$30[3]="_rt_variadic(_rt_add)");
(fl$30[4]="even?");
(fl$30[5]="_rt_even_q");
(fl$30[6]="pr");
(fl$30[7]="_rt_variadic(_rt_pr)");
(fl$1[29]=lcoc_core.BitmapNode(4, 2147557377, 2147557377, fl$30, ));
final dc.List<dc.dynamic> fl$31=(dc.List<dc.dynamic>.filled(4, "first", ));
(fl$31[1]="_rt_first");
(fl$31[2]=">");
(fl$31[3]="_rt_variadic(_rt_gt_all)");
(fl$1[30]=lcoc_core.BitmapNode(2, 67109120, 67109120, fl$31, ));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(106, 3078619135, 80, fl$1, ), -1, );
}();

// END core-value-fns

// BEGIN dart-reserved
dc.dynamic dart_reserved$v1=(){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, "implements", ));
(fl$2[1]="implements");
(fl$2[2]="else");
(fl$2[3]="else");
(fl$2[4]="abstract");
(fl$2[5]="abstract");
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(37, lcoc_core.BitmapNode(3, 32904, 32904, fl$2, ), ));
(fl$1[1]="sealed");
(fl$1[2]="sealed");
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(4, "dynamic", ));
(fl$3[1]="dynamic");
(fl$3[2]="static");
(fl$3[3]="static");
(fl$1[3]=lcoc_core.BitmapNode(2, 513, 513, fl$3, ));
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(4, "factory", ));
(fl$4[1]="factory");
(fl$4[2]="hide");
(fl$4[3]="hide");
(fl$1[4]=lcoc_core.BitmapNode(2, 1073872896, 1073872896, fl$4, ));
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(10, "this", ));
(fl$5[1]="this");
(fl$5[2]="await");
(fl$5[3]="await");
(fl$5[4]="yield");
(fl$5[5]="yield");
(fl$5[6]="interface");
(fl$5[7]="interface");
(fl$5[8]="void");
(fl$5[9]="void");
(fl$1[5]=lcoc_core.BitmapNode(5, 8415488, 8415488, fl$5, ));
(fl$1[6]="part");
(fl$1[7]="part");
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(10, "class", ));
(fl$6[1]="class");
(fl$6[2]="operator");
(fl$6[3]="operator");
(fl$6[4]="export");
(fl$6[5]="export");
(fl$6[6]="var");
(fl$6[7]="var");
(fl$6[8]="try");
(fl$6[9]="try");
(fl$1[8]=lcoc_core.BitmapNode(5, 553787424, 553787424, fl$6, ));
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, "is", ));
(fl$7[1]="is");
(fl$7[2]="null");
(fl$7[3]="null");
(fl$7[4]="return");
(fl$7[5]="return");
(fl$1[9]=lcoc_core.BitmapNode(3, 336592896, 336592896, fl$7, ));
(fl$1[10]="new");
(fl$1[11]="new");
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, "for", ));
(fl$8[1]="for");
(fl$8[2]="catch");
(fl$8[3]="catch");
(fl$8[4]="base");
(fl$8[5]="base");
(fl$1[12]=lcoc_core.BitmapNode(3, 71303680, 71303680, fl$8, ));
(fl$1[13]="extends");
(fl$1[14]="extends");
(fl$1[15]="async");
(fl$1[16]="async");
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(6, "super", ));
(fl$9[1]="super");
(fl$9[2]="false");
(fl$9[3]="false");
(fl$9[4]="extension");
(fl$9[5]="extension");
(fl$1[17]=lcoc_core.BitmapNode(3, 1077936136, 1077936136, fl$9, ));
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(8, "if", ));
(fl$10[1]="if");
(fl$10[2]="show");
(fl$10[3]="show");
(fl$10[4]="sync");
(fl$10[5]="sync");
(fl$10[6]="import");
(fl$10[7]="import");
(fl$1[18]=lcoc_core.BitmapNode(4, 1077149696, 1077149696, fl$10, ));
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(4, "switch", ));
(fl$11[1]="switch");
(fl$11[2]="const");
(fl$11[3]="const");
(fl$1[19]=lcoc_core.BitmapNode(2, 2684354560, 2684354560, fl$11, ));
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(4, "case", ));
(fl$12[1]="case");
(fl$12[2]="late");
(fl$12[3]="late");
(fl$1[20]=lcoc_core.BitmapNode(2, 163840, 163840, fl$12, ));
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(8, "covariant", ));
(fl$13[1]="covariant");
(fl$13[2]="true");
(fl$13[3]="true");
(fl$13[4]="on");
(fl$13[5]="on");
(fl$13[6]="break");
(fl$13[7]="break");
(fl$1[21]=lcoc_core.BitmapNode(4, 9437232, 9437232, fl$13, ));
(fl$1[22]="when");
(fl$1[23]="when");
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(4, "typedef", ));
(fl$14[1]="typedef");
(fl$14[2]="continue");
(fl$14[3]="continue");
(fl$1[24]=lcoc_core.BitmapNode(2, 272629760, 272629760, fl$14, ));
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(8, "final", ));
(fl$15[1]="final");
(fl$15[2]="do");
(fl$15[3]="do");
(fl$15[4]="rethrow");
(fl$15[5]="rethrow");
(fl$15[6]="required");
(fl$15[7]="required");
(fl$1[25]=lcoc_core.BitmapNode(4, 136200, 136200, fl$15, ));
(fl$1[26]="library");
(fl$1[27]="library");
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(4, "while", ));
(fl$16[1]="while");
(fl$16[2]="with");
(fl$16[3]="with");
(fl$1[28]=lcoc_core.BitmapNode(2, 268435472, 268435472, fl$16, ));
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(4, "set", ));
(fl$17[1]="set");
(fl$17[2]="mixin");
(fl$17[3]="mixin");
(fl$1[29]=lcoc_core.BitmapNode(2, 8388640, 8388640, fl$17, ));
(fl$1[30]="Function");
(fl$1[31]="Function");
(fl$1[32]="get");
(fl$1[33]="get");
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(8, "default", ));
(fl$18[1]="default");
(fl$18[2]="as");
(fl$18[3]="as");
(fl$18[4]="throw");
(fl$18[5]="throw");
(fl$18[6]="deferred");
(fl$18[7]="deferred");
(fl$1[34]=lcoc_core.BitmapNode(4, 71598080, 71598080, fl$18, ));
final dc.List<dc.dynamic> fl$20=(dc.List<dc.dynamic>.filled(4, "assert", ));
(fl$20[1]="assert");
(fl$20[2]="finally");
(fl$20[3]="finally");
final dc.List<dc.dynamic> fl$19=(dc.List<dc.dynamic>.filled(1, lcoc_core.BitmapNode(2, 67109376, 67109376, fl$20, ), ));
(fl$1[35]=lcoc_core.BitmapNode(2, 16384, 0, fl$19, ));
final dc.List<dc.dynamic> fl$21=(dc.List<dc.dynamic>.filled(6, "in", ));
(fl$21[1]="in");
(fl$21[2]="enum");
(fl$21[3]="enum");
(fl$21[4]="external");
(fl$21[5]="external");
(fl$1[36]=lcoc_core.BitmapNode(3, 268701696, 268701696, fl$21, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(66, 4156554719, 344470594, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.PersistentHashSet(null, cast$1, -1, );
}();

// END dart-reserved

// BEGIN dart-string
dc.dynamic dart_string(dc.dynamic s$1, ){
final dc.String s$2=lcoc_string.replace(lcoc_string.replace(lcoc_string.replace(lcoc_string.replace(lcoc_string.replace(lcoc_string.replace((lcoc_core.str.$_invoke$1(s$1, )), "\\", "\\\\", ), "'", "\\'", ), "\$", "\\\$", ), "\n", "\\n", ), "\r", "\\r", ), "\t", "\\t", );
return (lcoc_core.str.$_invoke$3("'", s$2, "'", ));
}

// END dart-string

// BEGIN decl-line
dc.dynamic decl_line(dc.dynamic name$1, dc.dynamic value$1, ){
return (lcoc_core.str.$_invoke$5("final ", name$1, " = ", value$1, ";", ));
}

// END decl-line

// BEGIN def-form
dc.dynamic def_form(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic private$QMARK_$1, ){
final dc.dynamic nm$1=lcoc_core.second(form$1, );
final dc.dynamic tail$1=(lcoc_core.drop.$_invoke$2(2, form$1, ));
late final dc.int cast$1;
if((tail$1 is lcoc_core.ICounted$iface)){
cast$1=(((tail$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(tail$1, ) as lcoc_core.ICounted$ext).$_count$0(tail$1, )) as dc.int);
}
final dc.bool and$6942_$AUTO_$1=(cast$1 > 1);
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=(lcoc_core.first(tail$1, ) is dc.String);
}else{
$if_$1=and$6942_$AUTO_$1;
}
late final dc.dynamic tail$2;
if($if_$1){
tail$2=lcoc_core.rest(tail$1, );
}else{
tail$2=tail$1;
}
late final dc.dynamic and$6942_$AUTO_$2;
if((tail$2 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$2=((tail$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$2=((lcoc_core.ISeqable.extensions(tail$2, ) as lcoc_core.ISeqable$ext).$_seq$0(tail$2, ));
}
late final dc.dynamic $if_$2;
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
$if_$2=lcoc_core.map$QMARK_(lcoc_core.first(tail$2, ), );
}else{
$if_$2=and$6942_$AUTO_$2;
}
late final dc.dynamic tail$3;
if(((false != $if_$2) && (null != $if_$2))){
tail$3=lcoc_core.rest(tail$2, );
}else{
tail$3=tail$2;
}
final dc.dynamic value$1=lcoc_core.first(tail$3, );
late final dc.dynamic name$1;
if(((false != private$QMARK_$1) && (null != private$QMARK_$1))){
name$1=(lcoc_core.str.$_invoke$2("_", lcoc_transpile.munge((lcoc_core.str.$_invoke$1(nm$1, )), ), ));
}else{
name$1=lcoc_transpile.munge((lcoc_core.str.$_invoke$1(nm$1, )), );
}
if((null == value$1)){
return (lcoc_core.str.$_invoke$3("dynamic ", name$1, ";", ));
}
return (lcoc_core.str.$_invoke$5("dynamic ", name$1, " = ", lcoc_transpile.expr(value$1, env$1, ), ";", ));
}

// END def-form

// BEGIN default-for
dc.dynamic default_for(dc.dynamic defaults$1, dc.dynamic sym$1, dc.dynamic tmp$1, dc.dynamic key_expr$1, dc.dynamic env$1, ){
if(lcoc_core.contains$QMARK_(defaults$1, sym$1, )){
late final dc.dynamic $if_$1;
if((defaults$1 is lcoc_core.ILookup$iface)){
$if_$1=((defaults$1 as lcoc_core.ILookup$iface).$_lookup$1(sym$1, ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(defaults$1, ) as lcoc_core.ILookup$ext).$_lookup$1(defaults$1, sym$1, ));
}
final dc.dynamic $1=lcoc_transpile.expr($if_$1, env$1, );
return (lcoc_core.str.$_invoke$7("_rt_get(", tmp$1, ", ", key_expr$1, ", ", $1, ")", ));
}
return (lcoc_core.str.$_invoke$5("_rt_get(", tmp$1, ", ", key_expr$1, ")", ));
}

// END default-for

// BEGIN defn-form
dc.dynamic defn_form(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic private$QMARK_$1, ){
final dc.dynamic nm$1=lcoc_core.second(form$1, );
final dc.dynamic tail$1=(lcoc_core.drop.$_invoke$2(2, form$1, ));
late final dc.int cast$1;
if((tail$1 is lcoc_core.ICounted$iface)){
cast$1=(((tail$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(tail$1, ) as lcoc_core.ICounted$ext).$_count$0(tail$1, )) as dc.int);
}
final dc.bool and$6942_$AUTO_$1=(cast$1 > 1);
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=(lcoc_core.first(tail$1, ) is dc.String);
}else{
$if_$1=and$6942_$AUTO_$1;
}
late final dc.dynamic tail$2;
if($if_$1){
tail$2=lcoc_core.rest(tail$1, );
}else{
tail$2=tail$1;
}
late final dc.dynamic and$6942_$AUTO_$2;
if((tail$2 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$2=((tail$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$2=((lcoc_core.ISeqable.extensions(tail$2, ) as lcoc_core.ISeqable$ext).$_seq$0(tail$2, ));
}
late final dc.dynamic $if_$2;
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
$if_$2=lcoc_core.map$QMARK_(lcoc_core.first(tail$2, ), );
}else{
$if_$2=and$6942_$AUTO_$2;
}
late final dc.dynamic tail$3;
if(((false != $if_$2) && (null != $if_$2))){
tail$3=lcoc_core.rest(tail$2, );
}else{
tail$3=tail$2;
}
final dc.dynamic params$1=lcoc_core.first(tail$3, );
final dc.dynamic body$1=lcoc_core.rest(tail$3, );
final dc.dynamic and$6942_$AUTO_$3=lcoc_core.next(body$1, );
late final dc.dynamic $if_$3;
if(((false != and$6942_$AUTO_$3) && (null != and$6942_$AUTO_$3))){
$if_$3=lcoc_core.map$QMARK_(lcoc_core.first(body$1, ), );
}else{
$if_$3=and$6942_$AUTO_$3;
}
late final dc.dynamic body$2;
if(((false != $if_$3) && (null != $if_$3))){
body$2=lcoc_core.rest(body$1, );
}else{
body$2=body$1;
}
late final dc.dynamic name$1;
if(((false != private$QMARK_$1) && (null != private$QMARK_$1))){
name$1=(lcoc_core.str.$_invoke$2("_", lcoc_transpile.munge((lcoc_core.str.$_invoke$1(nm$1, )), ), ));
}else{
name$1=lcoc_transpile.munge((lcoc_core.str.$_invoke$1(nm$1, )), );
}
final dc.dynamic vec$9555_$1=lcoc_transpile.bind_params(params$1, env$1, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9555_$1, 0, null, ));
final dc.dynamic sig$1=(lcoc_core.nth.$_invoke$3(vec$9555_$1, 1, null, ));
final dc.dynamic pre$1=(lcoc_core.nth.$_invoke$3(vec$9555_$1, 2, null, ));
late final dc.dynamic and$6942_$AUTO_$4;
if((body$2 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$4=((body$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$4=((lcoc_core.ISeqable.extensions(body$2, ) as lcoc_core.ISeqable$ext).$_seq$0(body$2, ));
}
late final dc.dynamic $if_$4;
if(((false != and$6942_$AUTO_$4) && (null != and$6942_$AUTO_$4))){
$if_$4=lcoc_core.every$QMARK_((dc.dynamic x$1, ){
final dc.bool and$6942_$AUTO_$5=lcoc_core.list$QMARK_(x$1, );
if(and$6942_$AUTO_$5){
return lcoc_core.vector$QMARK_(lcoc_core.first(x$1, ), );
}
return and$6942_$AUTO_$5;
}, body$2, );
}else{
$if_$4=and$6942_$AUTO_$4;
}
if(((false != $if_$4) && (null != $if_$4))){
(lcoc_transpile.unsupported("multi-arity defn", form$1, ));
}else{
}
final dc.String arg$1=(lcoc_string.join.$_invoke$2(", ", sig$1, ));
late final dc.dynamic $if_$5;
if((pre$1 is lcoc_core.ISeqable$iface)){
$if_$5=((pre$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(pre$1, ) as lcoc_core.ISeqable$ext).$_seq$0(pre$1, ));
}
late final dc.String? $if_$6;
if(((false != $if_$5) && (null != $if_$5))){
$if_$6=(lcoc_core.str.$_invoke$2(lcoc_transpile.emit_lines(pre$1, 1, ), "\n", ));
}else{
$if_$6=null;
}
return (lcoc_core.str.$_invoke$9("dynamic ", name$1, "(", arg$1, ") {\n", $if_$6, lcoc_transpile.emit_body(body$2, env2$1, 1, ), "\n", "}", ));
}

// END defn-form

// BEGIN do-expr
dc.dynamic do_expr(dc.dynamic body$1, dc.dynamic env$1, dc.dynamic ind$1, ){
return (lcoc_core.str.$_invoke$5("(() {\n", lcoc_transpile.emit_body(body$1, env$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.spaces(ind$1, ), "})()", ));
}

// END do-expr

// BEGIN doseq-expr
dc.dynamic doseq_expr(dc.dynamic bindings$1, dc.dynamic body$1, dc.dynamic env$1, dc.dynamic ind$1, ){
return (lcoc_core.str.$_invoke$7("(() {\n", lcoc_transpile.doseq_stmt(bindings$1, body$1, env$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "return null;\n", lcoc_transpile.spaces(ind$1, ), "})()", ));
}

// END doseq-expr

// BEGIN doseq-stmt
dc.dynamic doseq_stmt(dc.dynamic bindings$1, dc.dynamic body$1, dc.dynamic env$1, dc.dynamic ind$1, ){
late final dc.int cast$1;
if((bindings$1 is lcoc_core.ICounted$iface)){
cast$1=(((bindings$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(bindings$1, ) as lcoc_core.ICounted$ext).$_count$0(bindings$1, )) as dc.int);
}
final dc.bool $1=cast$1.isOdd;
if($1){
(lcoc_transpile.unsupported("odd doseq bindings", bindings$1, ));
}else{
}
final lcoc_core.PersistentVector pairs$1=lcoc_core.vec((lcoc_core.partition.$_invoke$2(2, bindings$1, )), );
late final dc.dynamic $if_$1;
if((pairs$1 is lcoc_core.ISeqable$iface)){
$if_$1=((pairs$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(pairs$1, ) as lcoc_core.ISeqable$ext).$_seq$0(pairs$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9549_$SHARP_$1, ){
return lcoc_transpile.stmt(p1$9549_$SHARP_$1, env$1, ind$1, );
}, body$1, )), );
}
final dc.dynamic pair$1=lcoc_core.first(pairs$1, );
final dc.dynamic binding$1=(lcoc_core.nth.$_invoke$2(pair$1, 0, ));
final dc.dynamic coll$1=(lcoc_core.nth.$_invoke$2(pair$1, 1, ));
final dc.dynamic item$1=lcoc_transpile.fresh("item", );
final dc.dynamic vec$9550_$1=lcoc_transpile.bind_pattern(binding$1, item$1, env$1, lcoc_core.$_EMPTY_VECTOR, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9550_$1, 0, null, ));
final dc.dynamic lines$1=(lcoc_core.nth.$_invoke$3(vec$9550_$1, 1, null, ));
final lcoc_core.PersistentVector rest_bindings$1=lcoc_core.vec((lcoc_core.apply.$_invoke$2(lcoc_core.concat, lcoc_core.vec(lcoc_core.rest(pairs$1, ), ), )), );
final dc.dynamic arg$2=lcoc_transpile.spaces(ind$1, );
final dc.dynamic arg$1=lcoc_transpile.expr(coll$1, env$1, );
late final dc.dynamic $if_$3;
if((lines$1 is lcoc_core.ISeqable$iface)){
$if_$3=((lines$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(lines$1, ) as lcoc_core.ISeqable$ext).$_seq$0(lines$1, ));
}
late final dc.String? $if_$4;
if(((false != $if_$3) && (null != $if_$3))){
$if_$4=(lcoc_core.str.$_invoke$2(lcoc_transpile.emit_lines(lines$1, (1 + (ind$1 as dc.num)), ), "\n", ));
}else{
$if_$4=null;
}
return (lcoc_core.str.$_invoke_more$10(arg$2, "for (final ", item$1, " in _rt_as_list(", arg$1, ")) {\n", $if_$4, lcoc_transpile.doseq_stmt(rest_bindings$1, body$1, env2$1, (1 + (ind$1 as dc.num)), ), "\n", [lcoc_transpile.spaces(ind$1, ), "}", ], ));
}

// END doseq-stmt

// BEGIN dot-call
dc.dynamic dot_call(dc.dynamic args$1, dc.dynamic env$1, ){
final dc.dynamic obj$1=lcoc_core.first(args$1, );
final dc.dynamic method$1=lcoc_core.second(args$1, );
final dc.dynamic more$1=(lcoc_core.drop.$_invoke$2(2, args$1, ));
return (lcoc_core.str.$_invoke$6(lcoc_transpile.expr(obj$1, env$1, ), ".", (lcoc_core.str.$_invoke$1(method$1, )), "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9529_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9529_$SHARP_$1, env$1, );
}, more$1, )), )), ")", ));
}

// END dot-call

// BEGIN emit-body
dc.dynamic emit_body(dc.dynamic forms$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final lcoc_core.PersistentVector forms$2=lcoc_core.vec(forms$1, );
late final dc.dynamic $if_$1;
if((forms$2 is lcoc_core.ISeqable$iface)){
$if_$1=((forms$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(forms$2, ) as lcoc_core.ISeqable$ext).$_seq$0(forms$2, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return (lcoc_core.str.$_invoke$2(lcoc_transpile.spaces(ind$1, ), "return null;", ));
}
final dc.dynamic init$1=lcoc_core.butlast(forms$2, );
final dc.dynamic last_form$1=lcoc_core.peek(forms$2, );
late final dc.dynamic $if_$3;
if((init$1 is lcoc_core.ISeqable$iface)){
$if_$3=((init$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(init$1, ) as lcoc_core.ISeqable$ext).$_seq$0(init$1, ));
}
late final dc.String? $if_$4;
if(((false != $if_$3) && (null != $if_$3))){
$if_$4=(lcoc_core.str.$_invoke$2(lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9554_$SHARP_$1, ){
return lcoc_transpile.stmt(p1$9554_$SHARP_$1, env$1, ind$1, );
}, init$1, )), ), "\n", ));
}else{
$if_$4=null;
}
return (lcoc_core.str.$_invoke$5($if_$4, lcoc_transpile.spaces(ind$1, ), "return ", lcoc_transpile.expr(last_form$1, env$1, ), ";", ));
}

// END emit-body

// BEGIN emit-lines
dc.dynamic emit_lines(dc.dynamic lines$1, dc.dynamic ind$1, ){
return lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9515_$SHARP_$1, ){
return (lcoc_core.str.$_invoke$2(lcoc_transpile.spaces(ind$1, ), p1$9515_$SHARP_$1, ));
}, lines$1, )), );
}

// END emit-lines

// BEGIN expand
dc.dynamic expand(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$1, );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=lcoc_core.symbol$QMARK_(lcoc_core.first(form$1, ), );
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
final dc.String h$1=(lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), ));
if((lcoc_core.$EQ_.$_invoke$2(h$1, "->", ))){
return lcoc_transpile.expand(lcoc_transpile.thread_first(lcoc_core.second(form$1, ), (lcoc_core.drop.$_invoke$2(2, form$1, )), ), );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "->>", ))){
return lcoc_transpile.expand(lcoc_transpile.thread_last(lcoc_core.second(form$1, ), (lcoc_core.drop.$_invoke$2(2, form$1, )), ), );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "when", ))){
return (lcoc_core.list.$_invoke$3((lcoc_core.symbol.$_invoke$2(null, "if", )), lcoc_core.second(form$1, ), (lcoc_core.apply.$_invoke$3(lcoc_core.list, (lcoc_core.symbol.$_invoke$2(null, "do", )), (lcoc_core.drop.$_invoke$2(2, form$1, )), )), ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "when-not", ))){
return (lcoc_core.list.$_invoke$3((lcoc_core.symbol.$_invoke$2(null, "if", )), (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.second(form$1, ), )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "do", )), (lcoc_core.drop.$_invoke$2(2, form$1, )), ), ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "if-not", ))){
final dc.dynamic arg$3=(lcoc_core.symbol.$_invoke$2(null, "if", ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.second(form$1, ), ));
final dc.dynamic arg$1=(lcoc_core.nth.$_invoke$2(form$1, 2, ));
late final dc.int cast$1;
if((form$1 is lcoc_core.ICounted$iface)){
cast$1=(((form$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(form$1, ) as lcoc_core.ICounted$ext).$_count$0(form$1, )) as dc.int);
}
final dc.bool $1=(cast$1 > 3);
late final dc.dynamic $if_$2;
if($1){
$if_$2=(lcoc_core.nth.$_invoke$2(form$1, 3, ));
}else{
$if_$2=null;
}
return (lcoc_core.list.$_invoke$4(arg$3, arg$2, arg$1, $if_$2, ));
}
return form$1;
}
return form$1;
}

// END expand

// BEGIN expr
dc.dynamic expr(dc.dynamic form$1, dc.dynamic env$1, ){
final dc.dynamic form$2=lcoc_transpile.expand(form$1, );
if((null == form$2)){
return "null";
}
if(dc.identical(form$2, true, )){
return "true";
}
if(dc.identical(form$2, false, )){
return "false";
}
if((form$2 is dc.num)){
return (lcoc_core.str.$_invoke$1(form$2, ));
}
if((form$2 is dc.String)){
return lcoc_transpile.dart_string(form$2, );
}
if(lcoc_core.keyword$QMARK_(form$2, )){
return lcoc_transpile.kw_expr(form$2, );
}
if(lcoc_core.symbol$QMARK_(form$2, )){
return lcoc_transpile.symbol_expr(form$2, env$1, );
}
if(lcoc_core.vector$QMARK_(form$2, )){
return (lcoc_core.str.$_invoke$3("[", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9538_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9538_$SHARP_$1, env$1, );
}, form$2, )), )), "]", ));
}
if(lcoc_core.set$QMARK_(form$2, )){
return (lcoc_core.str.$_invoke$3("_rt_set([", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9539_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9539_$SHARP_$1, env$1, );
}, form$2, )), )), "])", ));
}
if(lcoc_core.map$QMARK_(form$2, )){
late final dc.dynamic $if_$1;
if((form$2 is lcoc_core.ISeqable$iface)){
$if_$1=((form$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(form$2, ) as lcoc_core.ISeqable$ext).$_seq$0(form$2, ));
}
final dc.dynamic $1=(lcoc_core.map.$_invoke$2((dc.dynamic e$1, ){
return (lcoc_core.str.$_invoke$3(lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(e$1, 0, )), env$1, ), ": ", lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(e$1, 1, )), env$1, ), ));
}, $if_$1, ));
final dc.String $2=(lcoc_string.join.$_invoke$2(", ", $1, ));
return (lcoc_core.str.$_invoke$3("<dynamic, dynamic>{", $2, "}", ));
}
if(lcoc_core.list$QMARK_(form$2, )){
late final dc.dynamic $if_$2;
if((form$2 is lcoc_core.ISeqable$iface)){
$if_$2=((form$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(form$2, ) as lcoc_core.ISeqable$ext).$_seq$0(form$2, ));
}
late final dc.bool $if_$3;
if(((false != $if_$2) && (null != $if_$2))){
$if_$3=false;
}else{
$if_$3=true;
}
if($if_$3){
return "<dynamic>[]";
}
final dc.dynamic h$1=lcoc_core.first(form$2, );
if(lcoc_core.symbol$QMARK_(h$1, )){
final dc.dynamic or$6824_$AUTO_$1=lcoc_transpile.special_form(form$2, env$1, 0, );
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
return or$6824_$AUTO_$1;
}
return lcoc_transpile.call_expr(h$1, lcoc_core.rest(form$2, ), env$1, 0, );
}
return lcoc_transpile.call_expr(h$1, lcoc_core.rest(form$2, ), env$1, 0, );
}
return (lcoc_core.str.$_invoke$1(form$2, ));
}

// END expr

// BEGIN fn-expr
dc.dynamic fn_expr(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final lcoc_core.PersistentVector parts$1=lcoc_core.vec(form$1, );
late final dc.int cast$1;
if((parts$1 is lcoc_core.ICounted$iface)){
cast$1=(((parts$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(parts$1, ) as lcoc_core.ICounted$ext).$_count$0(parts$1, )) as dc.int);
}
final dc.bool and$6942_$AUTO_$1=(cast$1 > 2);
late final dc.bool named$1;
if(and$6942_$AUTO_$1){
named$1=lcoc_core.symbol$QMARK_((lcoc_core.nth.$_invoke$2(parts$1, 1, )), );
}else{
named$1=and$6942_$AUTO_$1;
}
late final dc.dynamic fname$1;
if(named$1){
fname$1=(lcoc_core.nth.$_invoke$2(parts$1, 1, ));
}else{
fname$1=null;
}
late final dc.dynamic params$1;
if(named$1){
params$1=(lcoc_core.nth.$_invoke$2(parts$1, 2, ));
}else{
params$1=(lcoc_core.nth.$_invoke$2(parts$1, 1, ));
}
late final dc.dynamic body$1;
if(named$1){
body$1=(lcoc_core.drop.$_invoke$2(3, parts$1, ));
}else{
body$1=(lcoc_core.drop.$_invoke$2(2, parts$1, ));
}
final dc.dynamic and$6942_$AUTO_$2=lcoc_core.next(body$1, );
late final dc.dynamic $if_$1;
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
$if_$1=lcoc_core.map$QMARK_(lcoc_core.first(body$1, ), );
}else{
$if_$1=and$6942_$AUTO_$2;
}
late final dc.dynamic body$2;
if(((false != $if_$1) && (null != $if_$1))){
body$2=lcoc_core.rest(body$1, );
}else{
body$2=body$1;
}
final dc.dynamic vec$9521_$1=lcoc_transpile.bind_params(params$1, env$1, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9521_$1, 0, null, ));
final dc.dynamic sig$1=(lcoc_core.nth.$_invoke$3(vec$9521_$1, 1, null, ));
final dc.dynamic pre$1=(lcoc_core.nth.$_invoke$3(vec$9521_$1, 2, null, ));
if(named$1){
final dc.dynamic f$1=lcoc_transpile.fresh((lcoc_core.str.$_invoke$1(fname$1, )), );
late final dc.dynamic env3$1;
if((env2$1 is lcoc_core.IAssociative$iface)){
env3$1=((env2$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "loop", 1009734395, ), f$1, ));
}else{
env3$1=((lcoc_core.IAssociative.extensions(env2$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env2$1, const lcoc_core.Keyword(null, "loop", 1009734395, ), f$1, ));
}
final dc.dynamic arg$2=lcoc_transpile.spaces((1 + (ind$1 as dc.num)), );
final dc.String arg$1=(lcoc_string.join.$_invoke$2(", ", sig$1, ));
late final dc.dynamic $if_$2;
if((pre$1 is lcoc_core.ISeqable$iface)){
$if_$2=((pre$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(pre$1, ) as lcoc_core.ISeqable$ext).$_seq$0(pre$1, ));
}
late final dc.String? $if_$3;
if(((false != $if_$2) && (null != $if_$2))){
$if_$3=(lcoc_core.str.$_invoke$2(lcoc_transpile.emit_lines(pre$1, ((ind$1 as dc.num) + 2), ), "\n", ));
}else{
$if_$3=null;
}
return (lcoc_core.str.$_invoke_more$10("(() {\n", arg$2, "dynamic ", f$1, "(", arg$1, ") {\n", $if_$3, lcoc_transpile.emit_body(body$2, env3$1, ((ind$1 as dc.num) + 2), ), ["\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "}\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "return ", f$1, ";\n", lcoc_transpile.spaces(ind$1, ), "})()", ], ));
}
final dc.String arg$3=(lcoc_string.join.$_invoke$2(", ", sig$1, ));
late final dc.dynamic $if_$4;
if((pre$1 is lcoc_core.ISeqable$iface)){
$if_$4=((pre$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(pre$1, ) as lcoc_core.ISeqable$ext).$_seq$0(pre$1, ));
}
late final dc.String? $if_$5;
if(((false != $if_$4) && (null != $if_$4))){
$if_$5=(lcoc_core.str.$_invoke$2(lcoc_transpile.emit_lines(pre$1, ((ind$1 as dc.num) + 2), ), "\n", ));
}else{
$if_$5=null;
}
return (lcoc_core.str.$_invoke$8("((", arg$3, ") {\n", $if_$5, lcoc_transpile.emit_body(body$2, env2$1, ((ind$1 as dc.num) + 2), ), "\n", lcoc_transpile.spaces(ind$1, ), "})", ));
}

// END fn-expr

// BEGIN fresh
dc.dynamic fresh(dc.dynamic $base_$1, ){
return (lcoc_core.str.$_invoke$3(lcoc_transpile.munge((lcoc_core.str.$_invoke$1($base_$1, )), ), "_", (lcoc_core.swap$BANG_.$_invoke$2(lcoc_transpile.gensym_counter$v1, lcoc_core.inc, )), ));
}

// END fresh

// BEGIN gensym-counter
dc.dynamic gensym_counter$v1=(lcoc_core.atom.$_invoke$1(0, ));

// END gensym-counter

// BEGIN if-expr
dc.dynamic if_expr(dc.dynamic test$1, dc.dynamic then$1, dc.dynamic $else_$1, dc.dynamic env$1, ){
final dc.dynamic arg$2=lcoc_transpile.truthy(lcoc_transpile.expr(test$1, env$1, ), );
final dc.dynamic arg$1=lcoc_transpile.expr(then$1, env$1, );
late final dc.dynamic $if_$1;
if((null == $else_$1)){
$if_$1="null";
}else{
$if_$1=lcoc_transpile.expr($else_$1, env$1, );
}
return (lcoc_core.str.$_invoke$7("(", arg$2, " ? ", arg$1, " : ", $if_$1, ")", ));
}

// END if-expr

// BEGIN if-stmt
dc.dynamic if_stmt(dc.dynamic test$1, dc.dynamic then$1, dc.dynamic $else_$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.dynamic arg$4=lcoc_transpile.spaces(ind$1, );
final dc.dynamic arg$3=lcoc_transpile.expr(test$1, env$1, );
final dc.dynamic arg$2=lcoc_transpile.stmt_block(then$1, env$1, (1 + (ind$1 as dc.num)), );
final dc.dynamic arg$1=lcoc_transpile.spaces(ind$1, );
late final dc.String? $if_$1;
if(((false != $else_$1) && (null != $else_$1))){
$if_$1=(lcoc_core.str.$_invoke$5(" else {\n", lcoc_transpile.stmt_block($else_$1, env$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.spaces(ind$1, ), "}", ));
}else{
$if_$1=null;
}
return (lcoc_core.str.$_invoke$9(arg$4, "if (_rt_truthy(", arg$3, ")) {\n", arg$2, "\n", arg$1, "}", $if_$1, ));
}

// END if-stmt

// BEGIN interop-call
dc.dynamic interop_call(dc.dynamic head$1, dc.dynamic args$1, dc.dynamic env$1, ){
final dc.String h$1=(lcoc_core.str.$_invoke$1(head$1, ));
if(lcoc_string.starts_with$QMARK_(h$1, ".-", )){
final dc.dynamic obj$1=lcoc_core.first(args$1, );
final dc.String field$1=(lcoc_core.subs.$_invoke$2(h$1, 2, ));
return (lcoc_core.str.$_invoke$3(lcoc_transpile.expr(obj$1, env$1, ), ".", field$1, ));
}
if(lcoc_string.starts_with$QMARK_(h$1, ".", )){
final dc.dynamic obj$2=lcoc_core.first(args$1, );
final dc.String method$1=(lcoc_core.subs.$_invoke$2(h$1, 1, ));
final dc.dynamic more$1=lcoc_core.rest(args$1, );
return (lcoc_core.str.$_invoke$6(lcoc_transpile.expr(obj$2, env$1, ), ".", method$1, "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9528_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9528_$SHARP_$1, env$1, );
}, more$1, )), )), ")", ));
}
return null;
}

// END interop-call

// BEGIN join-lines
dc.dynamic join_lines(dc.dynamic xs$1, ){
return (lcoc_string.join.$_invoke$2("\n", (lcoc_core.remove.$_invoke$2(lcoc_core.nil$QMARK_, xs$1, )), ));
}

// END join-lines

// BEGIN kw-expr
dc.dynamic kw_expr(dc.dynamic form$1, ){
final dc.String n$1=lcoc_core.name(form$1, );
late final dc.String? ns$1;
if((form$1 is lcoc_core.INamed$iface)){
ns$1=(((form$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
ns$1=(((lcoc_core.INamed.extensions(form$1, ) as lcoc_core.INamed$ext).$_namespace$0(form$1, )) as dc.String?);
}
if((null != ns$1)){
return (lcoc_core.str.$_invoke$5("_Kw(", lcoc_transpile.dart_string(n$1, ), ", ", lcoc_transpile.dart_string(ns$1, ), ")", ));
}
return (lcoc_core.str.$_invoke$3("_Kw(", lcoc_transpile.dart_string(n$1, ), ")", ));
}

// END kw-expr

// BEGIN let-expr
dc.dynamic let_expr(dc.dynamic bindings$1, dc.dynamic body$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.dynamic vec$9516_$1=lcoc_transpile.bind_all(bindings$1, env$1, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9516_$1, 0, null, ));
final dc.dynamic lines$1=(lcoc_core.nth.$_invoke$3(vec$9516_$1, 1, null, ));
late final dc.dynamic $if_$1;
if((lines$1 is lcoc_core.ISeqable$iface)){
$if_$1=((lines$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(lines$1, ) as lcoc_core.ISeqable$ext).$_seq$0(lines$1, ));
}
late final dc.String? $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=(lcoc_core.str.$_invoke$2(lcoc_transpile.emit_lines(lines$1, (1 + (ind$1 as dc.num)), ), "\n", ));
}else{
$if_$2=null;
}
return (lcoc_core.str.$_invoke$6("(() {\n", $if_$2, lcoc_transpile.emit_body(body$1, env2$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.spaces(ind$1, ), "})()", ));
}

// END let-expr

// BEGIN let-stmt
dc.dynamic let_stmt(dc.dynamic bindings$1, dc.dynamic body$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.dynamic vec$9542_$1=lcoc_transpile.bind_all(bindings$1, env$1, );
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9542_$1, 0, null, ));
final dc.dynamic lines$1=(lcoc_core.nth.$_invoke$3(vec$9542_$1, 1, null, ));
final dc.dynamic arg$1=lcoc_transpile.spaces(ind$1, );
late final dc.dynamic $if_$1;
if((lines$1 is lcoc_core.ISeqable$iface)){
$if_$1=((lines$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(lines$1, ) as lcoc_core.ISeqable$ext).$_seq$0(lines$1, ));
}
late final dc.String? $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=(lcoc_core.str.$_invoke$2(lcoc_transpile.emit_lines(lines$1, (1 + (ind$1 as dc.num)), ), "\n", ));
}else{
$if_$2=null;
}
return (lcoc_core.str.$_invoke$7(arg$1, "{\n", $if_$2, lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9541_$SHARP_$1, ){
return lcoc_transpile.stmt(p1$9541_$SHARP_$1, env2$1, (1 + (ind$1 as dc.num)), );
}, body$1, )), ), "\n", lcoc_transpile.spaces(ind$1, ), "}", ));
}

// END let-stmt

// BEGIN loop-expr
dc.dynamic loop_expr(dc.dynamic bindings$1, dc.dynamic body$1, dc.dynamic env$1, dc.dynamic ind$1, ){
late final dc.int cast$1;
if((bindings$1 is lcoc_core.ICounted$iface)){
cast$1=(((bindings$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(bindings$1, ) as lcoc_core.ICounted$ext).$_count$0(bindings$1, )) as dc.int);
}
final dc.bool $1=cast$1.isOdd;
if($1){
(lcoc_transpile.unsupported("odd loop bindings", bindings$1, ));
}else{
}
final lcoc_core.PersistentVector pairs$1=lcoc_core.vec((lcoc_core.partition.$_invoke$2(2, bindings$1, )), );
final dc.dynamic f$1=lcoc_transpile.fresh("loop", );
late final dc.dynamic vec$9524_$1;
dc.dynamic ps$1=pairs$1;
dc.dynamic env$2=env$1;
dc.dynamic sig$1=lcoc_core.$_EMPTY_VECTOR;
dc.dynamic inits$1=lcoc_core.$_EMPTY_VECTOR;
do {
final dc.dynamic o7080$1=ps$1;
late final dc.dynamic $if_$1;
if((o7080$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, env$2, ));
(fl$1[1]=sig$1);
(fl$1[2]=inits$1);
vec$9524_$1=lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, );
}else{
final dc.dynamic pair$1=lcoc_core.first(ps$1, );
final dc.dynamic sym$1=(lcoc_core.nth.$_invoke$2(pair$1, 0, ));
final dc.dynamic init$1=(lcoc_core.nth.$_invoke$2(pair$1, 1, ));
if(lcoc_core.symbol$QMARK_(sym$1, )){
final dc.dynamic p$1=lcoc_transpile.fresh((lcoc_core.str.$_invoke$1(sym$1, )), );
ps$1=lcoc_core.vec(lcoc_core.rest(ps$1, ), );
final dc.dynamic coll7202$2=env$2;
final dc.String k7203$2=(lcoc_core.str.$_invoke$1(sym$1, ));
if((coll7202$2 is lcoc_core.IAssociative$iface)){
env$2=((coll7202$2 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$2, p$1, ));
}else{
env$2=((lcoc_core.IAssociative.extensions(coll7202$2, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7202$2, k7203$2, p$1, ));
}
final dc.dynamic coll7119$1=sig$1;
final dc.String o7120$1=(lcoc_core.str.$_invoke$2("dynamic ", p$1, ));
if((coll7119$1 is lcoc_core.ICollection$iface)){
sig$1=((coll7119$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}else{
sig$1=((lcoc_core.ICollection.extensions(coll7119$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7119$1, o7120$1, ));
}
final dc.dynamic coll7119$2=inits$1;
final dc.dynamic o7120$2=lcoc_transpile.expr(init$1, env$1, );
if((coll7119$2 is lcoc_core.ICollection$iface)){
inits$1=((coll7119$2 as lcoc_core.ICollection$iface).$_conj$1(o7120$2, ));
}else{
inits$1=((lcoc_core.ICollection.extensions(coll7119$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7119$2, o7120$2, ));
}
continue;
}else{
vec$9524_$1=lcoc_transpile.unsupported("destructuring loop binding", sym$1, );
}
}
break;
} while(true);
final dc.dynamic env2$1=(lcoc_core.nth.$_invoke$3(vec$9524_$1, 0, null, ));
final dc.dynamic sig$2=(lcoc_core.nth.$_invoke$3(vec$9524_$1, 1, null, ));
final dc.dynamic inits$2=(lcoc_core.nth.$_invoke$3(vec$9524_$1, 2, null, ));
final dc.dynamic arg$3=lcoc_transpile.spaces((1 + (ind$1 as dc.num)), );
final dc.String arg$2=(lcoc_string.join.$_invoke$2(", ", sig$2, ));
late final dc.dynamic $if_$3;
if((env2$1 is lcoc_core.IAssociative$iface)){
$if_$3=((env2$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "loop", 1009734395, ), f$1, ));
}else{
$if_$3=((lcoc_core.IAssociative.extensions(env2$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env2$1, const lcoc_core.Keyword(null, "loop", 1009734395, ), f$1, ));
}
final dc.dynamic $2=lcoc_transpile.emit_body(body$1, $if_$3, ((ind$1 as dc.num) + 2), );
return (lcoc_core.str.$_invoke_more$10("(() {\n", arg$3, "dynamic ", f$1, "(", arg$2, ") {\n", $2, "\n", [lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "}\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "return ", f$1, "(", (lcoc_string.join.$_invoke$2(", ", inits$2, )), ");\n", lcoc_transpile.spaces(ind$1, ), "})()", ], ));
}

// END loop-expr

// BEGIN munge
dc.dynamic munge(dc.dynamic x$1, ){
final dc.String s$1=(lcoc_core.str.$_invoke$1(x$1, ));
late final dc.int n$1;
if((s$1 is lcoc_core.ICounted$iface)){
n$1=(((s$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
n$1=(((lcoc_core.ICounted.extensions(s$1, ) as lcoc_core.ICounted$ext).$_count$0(s$1, )) as dc.int);
}
final dc.dynamic out$1=(lcoc_core.apply.$_invoke$2(lcoc_core.str, (lcoc_core.map.$_invoke$2((dc.dynamic i$1, ){
final dc.String ch$1=(lcoc_core.subs.$_invoke$3(s$1, i$1, (1 + (i$1 as dc.num)), ));
final dc.dynamic o7254$1=lcoc_transpile.munge_table$v1;
if((o7254$1 is lcoc_core.ILookup$iface)){
return ((o7254$1 as lcoc_core.ILookup$iface).$_lookup$2(ch$1, ch$1, ));
}
return ((lcoc_core.ILookup.extensions(o7254$1, ) as lcoc_core.ILookup$ext).$_lookup$2(o7254$1, ch$1, ch$1, ));
}, (lcoc_core.range.$_invoke$1(n$1, )), )), ));
if(lcoc_core.contains$QMARK_(lcoc_transpile.dart_reserved$v1, out$1, )){
return (lcoc_core.str.$_invoke$2(out$1, "_", ));
}
return out$1;
}

// END munge

// BEGIN munge-table
dc.dynamic munge_table$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(17, "'", ));
(fl$1[1]="_");
(fl$1[2]="=");
(fl$1[3]="_EQ_");
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, "!", ));
(fl$2[1]="_BANG_");
(fl$2[2]="*");
(fl$2[3]="_STAR_");
(fl$1[4]=lcoc_core.BitmapNode(2, 34816, 34816, fl$2, ));
(fl$1[5]="/");
(fl$1[6]="_SLASH_");
(fl$1[7]="-");
(fl$1[8]="_");
(fl$1[9]="?");
(fl$1[10]="_QMARK_");
(fl$1[11]="<");
(fl$1[12]="_LT_");
(fl$1[13]="+");
(fl$1[14]="_PLUS_");
(fl$1[15]=">");
(fl$1[16]="_GT_");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(10, 2686456206, 2686456198, fl$1, ), -1, );
}();

// END munge-table

// BEGIN normalize-percent-args
dc.dynamic normalize_percent_args(dc.dynamic src$1, ){
late final dc.int n$1;
if((src$1 is lcoc_core.ICounted$iface)){
n$1=(((src$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
n$1=(((lcoc_core.ICounted.extensions(src$1, ) as lcoc_core.ICounted$ext).$_count$0(src$1, )) as dc.int);
}
final dc.StringBuffer sb$1=dc.StringBuffer();
dc.dynamic i$1=0;
dc.dynamic state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
do {
if(((i$1 as dc.num) >= n$1)){
return (sb$1.toString());
}
final dc.String ch$1=(lcoc_core.subs.$_invoke$3(src$1, i$1, (1 + (i$1 as dc.num)), ));
late final dc.String? next_ch$1;
if(((1 + (i$1 as dc.num)) < n$1)){
next_ch$1=(lcoc_core.subs.$_invoke$3(src$1, (1 + (i$1 as dc.num)), ((i$1 as dc.num) + 2), ));
}else{
next_ch$1=null;
}
late final dc.String? prev_ch$1;
if(((i$1 as dc.num) > 0)){
prev_ch$1=(lcoc_core.subs.$_invoke$3(src$1, ((i$1 as dc.num) - 1), i$1, ));
}else{
prev_ch$1=null;
}
if((lcoc_core.$EQ_.$_invoke$2(state$1, const lcoc_core.Keyword(null, "string", 1823871036, ), ))){
(sb$1.write(ch$1, ));
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\\", ))){
if((null != next_ch$1)){
(sb$1.write(next_ch$1, ));
}else{
}
i$1=((i$1 as dc.num) + 2);
state$1=const lcoc_core.Keyword(null, "string", 1823871036, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\"", ))){
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
continue;
}
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "string", 1823871036, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(state$1, const lcoc_core.Keyword(null, "comment", 105183667, ), ))){
(sb$1.write(ch$1, ));
i$1=(1 + (i$1 as dc.num));
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\n", ))){
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
}else{
state$1=const lcoc_core.Keyword(null, "comment", 105183667, );
}
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\"", ))){
(sb$1.write(ch$1, ));
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "string", 1823871036, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, ";", ))){
(sb$1.write(ch$1, ));
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "comment", 105183667, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\\", ))){
(sb$1.write(ch$1, ));
if((null != next_ch$1)){
(sb$1.write(next_ch$1, ));
}else{
}
i$1=((i$1 as dc.num) + 2);
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
continue;
}
final dc.bool and$6942_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2(ch$1, "%", ));
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
final dc.bool or$6824_$AUTO_$1=(null == prev_ch$1);
late final dc.bool and$6942_$AUTO_$2;
if(or$6824_$AUTO_$1){
and$6942_$AUTO_$2=or$6824_$AUTO_$1;
}else{
and$6942_$AUTO_$2=lcoc_core.contains$QMARK_(lcoc_transpile.placeholder_prev$v1, prev_ch$1, );
}
if(and$6942_$AUTO_$2){
final dc.bool or$6824_$AUTO_$2=(null == next_ch$1);
if(or$6824_$AUTO_$2){
$if_$1=or$6824_$AUTO_$2;
}else{
$if_$1=lcoc_core.contains$QMARK_(lcoc_transpile.placeholder_next$v1, next_ch$1, );
}
}else{
$if_$1=and$6942_$AUTO_$2;
}
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
(sb$1.write("%1", ));
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
continue;
}
(sb$1.write(ch$1, ));
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
continue;
} while(true);
}

// END normalize-percent-args

// BEGIN ns-form?
dc.dynamic ns_form$QMARK_(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$1, );
if(and$6942_$AUTO_$1){
final dc.bool and$6942_$AUTO_$2=lcoc_core.symbol$QMARK_(lcoc_core.first(form$1, ), );
if(and$6942_$AUTO_$2){
return (lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), )), "ns", ));
}
return and$6942_$AUTO_$2;
}
return and$6942_$AUTO_$1;
}

// END ns-form?

// BEGIN or-expr
dc.dynamic or_expr(dc.dynamic args$1, dc.dynamic env$1, dc.dynamic ind$1, ){
late final dc.dynamic $if_$1;
if((args$1 is lcoc_core.ISeqable$iface)){
$if_$1=((args$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(args$1, ) as lcoc_core.ISeqable$ext).$_seq$0(args$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return "null";
}
late final dc.int cast$1;
if((args$1 is lcoc_core.ICounted$iface)){
cast$1=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $1=(lcoc_core.$EQ_.$_invoke$2(1, cast$1, ));
if($1){
return lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, );
}
late final dc.int cast$2;
if((args$1 is lcoc_core.ICounted$iface)){
cast$2=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.int $2=(cast$2 - 1);
final dc.dynamic $3=(lcoc_core.range.$_invoke$1($2, ));
final dc.dynamic $4=(lcoc_core.map.$_invoke$2((dc.dynamic $UNDERSCORE_$1, ){
return lcoc_transpile.fresh("or", );
}, $3, ));
final lcoc_core.PersistentVector names$1=lcoc_core.vec($4, );
final lcoc_core.PersistentVector vals$1=lcoc_core.vec((lcoc_core.map.$_invoke$2((dc.dynamic p1$9520_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9520_$SHARP_$1, env$1, );
}, lcoc_core.butlast(args$1, ), )), );
final dc.dynamic last_expr$1=lcoc_transpile.expr(lcoc_core.last(args$1, ), env$1, );
late final dc.int cast$3;
if((names$1 is lcoc_core.ICounted$iface)){
cast$3=(((names$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$3=(((lcoc_core.ICounted.extensions(names$1, ) as lcoc_core.ICounted$ext).$_count$0(names$1, )) as dc.int);
}
final dc.dynamic $5=(lcoc_core.range.$_invoke$1(cast$3, ));
final dc.dynamic $6=(lcoc_core.map.$_invoke$2((dc.dynamic i$1, ){
final dc.dynamic n$1=(lcoc_core.nth.$_invoke$2(names$1, i$1, ));
return (lcoc_core.str.$_invoke$5("final ", n$1, " = ", (lcoc_core.nth.$_invoke$2(vals$1, i$1, )), ";", ));
}, $5, ));
final lcoc_core.PersistentVector lines$1=lcoc_core.vec($6, );
late final dc.int cast$4;
if((names$1 is lcoc_core.ICounted$iface)){
cast$4=(((names$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$4=(((lcoc_core.ICounted.extensions(names$1, ) as lcoc_core.ICounted$ext).$_count$0(names$1, )) as dc.int);
}
final dc.dynamic $7=(lcoc_core.range.$_invoke$1(cast$4, ));
final dc.dynamic $8=(lcoc_core.map.$_invoke$2((dc.dynamic i$2, ){
final dc.dynamic n$2=(lcoc_core.nth.$_invoke$2(names$1, i$2, ));
return (lcoc_core.str.$_invoke$6(lcoc_transpile.spaces(((ind$1 as dc.num) + 2), ), "if (_rt_truthy(", n$2, ")) return ", n$2, ";", ));
}, $7, ));
final lcoc_core.PersistentVector checks$1=lcoc_core.vec($8, );
return (lcoc_core.str.$_invoke_more$10("(() {\n", lcoc_transpile.emit_lines(lines$1, (1 + (ind$1 as dc.num)), ), "\n", lcoc_transpile.join_lines(checks$1, ), "\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "return ", last_expr$1, ";\n", [lcoc_transpile.spaces(ind$1, ), "})()", ], ));
}

// END or-expr

// BEGIN parse-ns
dc.dynamic parse_ns(dc.dynamic form$1, ){
final dc.dynamic nm$1=lcoc_core.second(form$1, );
final dc.dynamic tail$1=(lcoc_core.drop.$_invoke$2(2, form$1, ));
final dc.dynamic clauses$1=(lcoc_core.filter.$_invoke$2(lcoc_core.list$QMARK_, tail$1, ));
dc.dynamic cs$1=lcoc_core.vec(clauses$1, );
dc.dynamic imports$1=lcoc_core.$_EMPTY_VECTOR;
dc.dynamic aliases$1=lcoc_core.$_EMPTY_MAP;
dc.dynamic refers$1=lcoc_core.$_EMPTY_MAP;
do {
final dc.dynamic o7080$1=cs$1;
late final dc.dynamic $if_$1;
if((o7080$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, imports$1, ));
(fl$1[1]=aliases$1);
(fl$1[2]=refers$1);
(fl$1[3]=(lcoc_core.str.$_invoke$1(nm$1, )));
return lcoc_core.PersistentVector(null, 4, 5, arg$1, fl$1, -1, );
}
final dc.dynamic clause$1=lcoc_core.first(cs$1, );
final dc.dynamic kw$1=lcoc_core.first(clause$1, );
if((lcoc_core.$EQ_.$_invoke$2(kw$1, const lcoc_core.Keyword(null, "require", 1534203107, ), ))){
final dc.dynamic coll7134$1=lcoc_core.rest(clause$1, );
dc.dynamic f7135$1(dc.dynamic state$1, dc.dynamic spec$1, ){
final dc.dynamic imports$3=(lcoc_core.nth.$_invoke$3(state$1, 0, null, ));
final dc.dynamic aliases$3=(lcoc_core.nth.$_invoke$3(state$1, 1, null, ));
final dc.dynamic refers$3=(lcoc_core.nth.$_invoke$3(state$1, 2, null, ));
return lcoc_transpile.parse_require_spec(spec$1, imports$3, aliases$3, refers$3, );
}
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(3, imports$1, ));
(fl$2[1]=aliases$1);
(fl$2[2]=refers$1);
final lcoc_core.PersistentVector start7136$1=lcoc_core.PersistentVector(null, 3, 5, arg$2, fl$2, -1, );
late final dc.dynamic vec$9559_$1;
if((coll7134$1 is lcoc_core.IReduce$iface)){
vec$9559_$1=((coll7134$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, start7136$1, ));
}else{
vec$9559_$1=((lcoc_core.IReduce.extensions(coll7134$1, ) as lcoc_core.IReduce$ext).$_reduce$2(coll7134$1, f7135$1, start7136$1, ));
}
final dc.dynamic imports2$1=(lcoc_core.nth.$_invoke$3(vec$9559_$1, 0, null, ));
final dc.dynamic aliases2$1=(lcoc_core.nth.$_invoke$3(vec$9559_$1, 1, null, ));
final dc.dynamic refers2$1=(lcoc_core.nth.$_invoke$3(vec$9559_$1, 2, null, ));
cs$1=lcoc_core.vec(lcoc_core.rest(cs$1, ), );
imports$1=imports2$1;
aliases$1=aliases2$1;
refers$1=refers2$1;
continue;
}
cs$1=lcoc_core.vec(lcoc_core.rest(cs$1, ), );
continue;
} while(true);
}

// END parse-ns

// BEGIN parse-require-spec
dc.dynamic parse_require_spec(dc.dynamic spec$1, dc.dynamic imports$1, dc.dynamic aliases$1, dc.dynamic refers$1, ){
final dc.dynamic lib$1=lcoc_core.first(spec$1, );
final lcoc_core.PersistentVector opts$1=lcoc_core.vec(lcoc_core.rest(spec$1, ), );
if((lib$1 is dc.String)){
late final dc.dynamic $as_$1;
dc.dynamic i$1=0;
dc.dynamic a$1=null;
do {
late final dc.int cast$1;
if((opts$1 is lcoc_core.ICounted$iface)){
cast$1=(((opts$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(opts$1, ) as lcoc_core.ICounted$ext).$_count$0(opts$1, )) as dc.int);
}
final dc.bool $1=((i$1 as dc.num) < cast$1);
if($1){
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.nth.$_invoke$2(opts$1, i$1, )), const lcoc_core.Keyword(null, "as", 55427094, ), ))){
$as_$1=(lcoc_core.nth.$_invoke$2(opts$1, (1 + (i$1 as dc.num)), ));
}else{
i$1=((i$1 as dc.num) + 2);
continue;
}
}else{
$as_$1=a$1;
}
break;
} while(true);
late final dc.dynamic refer$1;
dc.dynamic i$2=0;
dc.dynamic r$1=lcoc_core.$_EMPTY_VECTOR;
do {
late final dc.int cast$2;
if((opts$1 is lcoc_core.ICounted$iface)){
cast$2=(((opts$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(opts$1, ) as lcoc_core.ICounted$ext).$_count$0(opts$1, )) as dc.int);
}
final dc.bool $2=((i$2 as dc.num) < cast$2);
if($2){
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.nth.$_invoke$2(opts$1, i$2, )), const lcoc_core.Keyword(null, "refer", 645049858, ), ))){
refer$1=lcoc_core.vec((lcoc_core.nth.$_invoke$2(opts$1, (1 + (i$2 as dc.num)), )), );
}else{
i$2=((i$2 as dc.num) + 2);
continue;
}
}else{
refer$1=r$1;
}
break;
} while(true);
late final dc.String? alias_name$1;
if(((false != $as_$1) && (null != $as_$1))){
alias_name$1=(lcoc_core.str.$_invoke$1($as_$1, ));
}else{
alias_name$1=null;
}
final dc.dynamic arg$1=lcoc_transpile.dart_string(lib$1, );
late final dc.String $if_$3;
if((null != alias_name$1)){
$if_$3=(lcoc_core.str.$_invoke$2(" as ", alias_name$1, ));
}else{
$if_$3="";
}
late final dc.dynamic and$6942_$AUTO_$1;
if((refer$1 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$1=((refer$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$1=((lcoc_core.ISeqable.extensions(refer$1, ) as lcoc_core.ISeqable$ext).$_seq$0(refer$1, ));
}
late final dc.dynamic $if_$1;
if(((false != and$6942_$AUTO_$1) && (null != and$6942_$AUTO_$1))){
$if_$1=(null == $as_$1);
}else{
$if_$1=and$6942_$AUTO_$1;
}
late final dc.String $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=(lcoc_core.str.$_invoke$2(" show ", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2(lcoc_core.str, refer$1, )), )), ));
}else{
$if_$2="";
}
final dc.String import_line$1=(lcoc_core.str.$_invoke$5("import ", arg$1, $if_$3, $if_$2, ";", ));
late final dc.dynamic $if_$4;
if((null != alias_name$1)){
if((refer$1 is lcoc_core.ISeqable$iface)){
$if_$4=((refer$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(refer$1, ) as lcoc_core.ISeqable$ext).$_seq$0(refer$1, ));
}
}else{
$if_$4=alias_name$1;
}
late final dc.dynamic refers2$1;
if(((false != $if_$4) && (null != $if_$4))){
dc.dynamic f7135$1(dc.dynamic m$1, dc.dynamic x$1, ){
final dc.String k7203$1=(lcoc_core.str.$_invoke$1(x$1, ));
final dc.String v7204$1=(lcoc_core.str.$_invoke$3(alias_name$1, ".", (lcoc_core.str.$_invoke$1(x$1, )), ));
if((m$1 is lcoc_core.IAssociative$iface)){
return ((m$1 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$1, v7204$1, ));
}
return ((lcoc_core.IAssociative.extensions(m$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(m$1, k7203$1, v7204$1, ));
}
if((refer$1 is lcoc_core.IReduce$iface)){
refers2$1=((refer$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, refers$1, ));
}else{
refers2$1=((lcoc_core.IReduce.extensions(refer$1, ) as lcoc_core.IReduce$ext).$_reduce$2(refer$1, f7135$1, refers$1, ));
}
}else{
refers2$1=refers$1;
}
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
late final dc.dynamic $if_$5;
if((imports$1 is lcoc_core.ICollection$iface)){
$if_$5=((imports$1 as lcoc_core.ICollection$iface).$_conj$1(import_line$1, ));
}else{
$if_$5=((lcoc_core.ICollection.extensions(imports$1, ) as lcoc_core.ICollection$ext).$_conj$1(imports$1, import_line$1, ));
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, $if_$5, ));
late final dc.dynamic $if_$6;
if((null != alias_name$1)){
if((aliases$1 is lcoc_core.IAssociative$iface)){
$if_$6=((aliases$1 as lcoc_core.IAssociative$iface).$_assoc$2(alias_name$1, true, ));
}else{
$if_$6=((lcoc_core.IAssociative.extensions(aliases$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(aliases$1, alias_name$1, true, ));
}
}else{
$if_$6=aliases$1;
}
(fl$1[1]=$if_$6);
(fl$1[2]=refers2$1);
return lcoc_core.PersistentVector(null, 3, 5, arg$2, fl$1, -1, );
}
final dc.String lib_str$1=(lcoc_core.str.$_invoke$1(lib$1, ));
late final dc.dynamic alias_name$2;
dc.dynamic i$3=0;
dc.dynamic a$2=null;
do {
late final dc.int cast$3;
if((opts$1 is lcoc_core.ICounted$iface)){
cast$3=(((opts$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$3=(((lcoc_core.ICounted.extensions(opts$1, ) as lcoc_core.ICounted$ext).$_count$0(opts$1, )) as dc.int);
}
final dc.bool $3=((i$3 as dc.num) < cast$3);
if($3){
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.nth.$_invoke$2(opts$1, i$3, )), const lcoc_core.Keyword(null, "as", 55427094, ), ))){
alias_name$2=(lcoc_core.nth.$_invoke$2(opts$1, (1 + (i$3 as dc.num)), ));
}else{
i$3=((i$3 as dc.num) + 2);
continue;
}
}else{
alias_name$2=a$2;
}
break;
} while(true);
late final dc.String? a$3;
if(((false != alias_name$2) && (null != alias_name$2))){
a$3=(lcoc_core.str.$_invoke$1(alias_name$2, ));
}else{
a$3=null;
}
final dc.bool or$6824_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2(lib_str$1, "cljd.core", ));
late final dc.bool $if_$7;
if(or$6824_$AUTO_$1){
$if_$7=or$6824_$AUTO_$1;
}else{
$if_$7=(lcoc_core.$EQ_.$_invoke$2(lib_str$1, "clojure.core", ));
}
if($if_$7){
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(3, imports$1, ));
(fl$2[1]=aliases$1);
(fl$2[2]=refers$1);
return lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$2, -1, );
}
if((lcoc_core.$EQ_.$_invoke$2(lib_str$1, "cljd.string", ))){
final lcoc_core.VectorNode arg$4=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, imports$1, ));
late final dc.String? k7203$3;
if((null != a$3)){
k7203$3=a$3;
}else{
k7203$3="str";
}
late final dc.dynamic $if_$8;
if((aliases$1 is lcoc_core.IAssociative$iface)){
$if_$8=((aliases$1 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$3, "cljd.string", ));
}else{
$if_$8=((lcoc_core.IAssociative.extensions(aliases$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(aliases$1, k7203$3, "cljd.string", ));
}
(fl$3[1]=$if_$8);
(fl$3[2]=refers$1);
return lcoc_core.PersistentVector(null, 3, 5, arg$4, fl$3, -1, );
}
if((lcoc_core.$EQ_.$_invoke$2(lib_str$1, "cljd.set", ))){
final lcoc_core.VectorNode arg$5=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(3, imports$1, ));
late final dc.String? k7203$4;
if((null != a$3)){
k7203$4=a$3;
}else{
k7203$4="set";
}
late final dc.dynamic $if_$9;
if((aliases$1 is lcoc_core.IAssociative$iface)){
$if_$9=((aliases$1 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$4, "cljd.set", ));
}else{
$if_$9=((lcoc_core.IAssociative.extensions(aliases$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(aliases$1, k7203$4, "cljd.set", ));
}
(fl$4[1]=$if_$9);
(fl$4[2]=refers$1);
return lcoc_core.PersistentVector(null, 3, 5, arg$5, fl$4, -1, );
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("required namespace ", lib_str$1, )), spec$1, );
}

// END parse-require-spec

// BEGIN placeholder-next
dc.dynamic placeholder_next$v1=(){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, "]", ));
(fl$2[1]="]");
(fl$2[2]="\r");
(fl$2[3]="\r");
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(14, lcoc_core.BitmapNode(2, 268435464, 268435464, fl$2, ), ));
(fl$1[1]=")");
(fl$1[2]=")");
(fl$1[3]="(");
(fl$1[4]="(");
(fl$1[5]="\t");
(fl$1[6]="\t");
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(8, "{", ));
(fl$3[1]="{");
(fl$3[2]=";");
(fl$3[3]=";");
(fl$3[4]=",");
(fl$3[5]=",");
(fl$3[6]="}");
(fl$3[7]="}");
(fl$1[7]=lcoc_core.BitmapNode(4, 25430016, 25430016, fl$3, ));
(fl$1[8]="[");
(fl$1[9]="[");
(fl$1[10]=" ");
(fl$1[11]=" ");
(fl$1[12]="\n");
(fl$1[13]="\n");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(12, 826804230, 822609924, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.PersistentHashSet(null, cast$1, -1, );
}();

// END placeholder-next

// BEGIN placeholder-prev
dc.dynamic placeholder_prev$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(13, "\r", ));
(fl$1[1]="\r");
(fl$1[2]="(");
(fl$1[3]="(");
(fl$1[4]="\t");
(fl$1[5]="\t");
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, "{", ));
(fl$2[1]="{");
(fl$2[2]=",");
(fl$2[3]=",");
(fl$1[6]=lcoc_core.BitmapNode(2, 8390656, 8390656, fl$2, ));
(fl$1[7]="[");
(fl$1[8]="[");
(fl$1[9]=" ");
(fl$1[10]=" ");
(fl$1[11]="\n");
(fl$1[12]="\n");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(8, 826804226, 822609922, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.PersistentHashSet(null, cast$1, -1, );
}();

// END placeholder-prev

// BEGIN quoted
dc.dynamic quoted(dc.dynamic form$1, dc.dynamic env$1, ){
if(lcoc_core.symbol$QMARK_(form$1, )){
return lcoc_transpile.symbol_sym(form$1, );
}
if(lcoc_core.keyword$QMARK_(form$1, )){
return lcoc_transpile.kw_expr(form$1, );
}
if((null == form$1)){
return "null";
}
if(dc.identical(form$1, true, )){
return "true";
}
if(dc.identical(form$1, false, )){
return "false";
}
if((form$1 is dc.num)){
return (lcoc_core.str.$_invoke$1(form$1, ));
}
if((form$1 is dc.String)){
return lcoc_transpile.dart_string(form$1, );
}
if(lcoc_core.vector$QMARK_(form$1, )){
return (lcoc_core.str.$_invoke$3("[", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9479_$SHARP_$1, ){
return lcoc_transpile.quoted(p1$9479_$SHARP_$1, env$1, );
}, form$1, )), )), "]", ));
}
if(lcoc_core.set$QMARK_(form$1, )){
return (lcoc_core.str.$_invoke$3("_rt_set([", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9480_$SHARP_$1, ){
return lcoc_transpile.quoted(p1$9480_$SHARP_$1, env$1, );
}, form$1, )), )), "])", ));
}
if(lcoc_core.map$QMARK_(form$1, )){
late final dc.dynamic $if_$1;
if((form$1 is lcoc_core.ISeqable$iface)){
$if_$1=((form$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(form$1, ) as lcoc_core.ISeqable$ext).$_seq$0(form$1, ));
}
final dc.dynamic $1=(lcoc_core.map.$_invoke$2((dc.dynamic e$1, ){
return (lcoc_core.str.$_invoke$3(lcoc_transpile.quoted((lcoc_core.nth.$_invoke$2(e$1, 0, )), env$1, ), ": ", lcoc_transpile.quoted((lcoc_core.nth.$_invoke$2(e$1, 1, )), env$1, ), ));
}, $if_$1, ));
final dc.String $2=(lcoc_string.join.$_invoke$2(", ", $1, ));
return (lcoc_core.str.$_invoke$3("<dynamic, dynamic>{", $2, "}", ));
}
if(lcoc_core.list$QMARK_(form$1, )){
return (lcoc_core.str.$_invoke$3("_rt_list([", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9481_$SHARP_$1, ){
return lcoc_transpile.quoted(p1$9481_$SHARP_$1, env$1, );
}, form$1, )), )), "])", ));
}
return (lcoc_core.str.$_invoke$1(form$1, ));
}

// END quoted

// BEGIN repl-assign
dc.dynamic repl_assign(dc.dynamic state$1, dc.dynamic nm$1, dc.dynamic value_form$1, ){
final dc.dynamic state$2=(lcoc_core.update.$_invoke$4(state$1, const lcoc_core.Keyword(null, "decls", 4196995479, ), lcoc_core.conj, (lcoc_core.str.$_invoke$1(nm$1, )), ));
final dc.dynamic value$1=lcoc_transpile.expr(value_form$1, lcoc_transpile.repl_env(state$2, ), );
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "state", 1750323599, ), ));
(fl$1[1]=state$2);
(fl$1[2]=const lcoc_core.Keyword(null, "echo", 3844603028, ));
(fl$1[3]=(lcoc_core.str.$_invoke$4("#'", (const lcoc_core.Keyword(null, "ns", 1494845879, ).$_invoke$1(state$2, )), "/", nm$1, )));
(fl$1[4]=const lcoc_core.Keyword(null, "body", 423165565, ));
(fl$1[5]=(lcoc_core.str.$_invoke$5("  ", lcoc_transpile.munge((lcoc_core.str.$_invoke$1(nm$1, )), ), " = ", value$1, ";\n  return null;", )));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 537952256, 537952256, fl$1, ), -1, );
}

// END repl-assign

// BEGIN repl-compile
dc.dynamic repl_compile(dc.dynamic state$1, dc.dynamic form$1, ){
final dc.dynamic form$2=lcoc_transpile.expand(form$1, );
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$2, );
late final dc.dynamic $if_$1;
if(and$6942_$AUTO_$1){
late final dc.dynamic and$6942_$AUTO_$2;
if((form$2 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$2=((form$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$2=((lcoc_core.ISeqable.extensions(form$2, ) as lcoc_core.ISeqable$ext).$_seq$0(form$2, ));
}
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
$if_$1=lcoc_core.symbol$QMARK_(lcoc_core.first(form$2, ), );
}else{
$if_$1=and$6942_$AUTO_$2;
}
}else{
$if_$1=and$6942_$AUTO_$1;
}
late final dc.String? h$1;
if(((false != $if_$1) && (null != $if_$1))){
h$1=(lcoc_core.str.$_invoke$1(lcoc_core.first(form$2, ), ));
}else{
h$1=null;
}
late final dc.dynamic args$1;
if((null != h$1)){
args$1=lcoc_core.rest(form$2, );
}else{
args$1=null;
}
late final dc.dynamic $if_$2;
if((args$1 is lcoc_core.ISeqable$iface)){
$if_$2=((args$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(args$1, ) as lcoc_core.ISeqable$ext).$_seq$0(args$1, ));
}
late final dc.dynamic nm$1;
if(((false != $if_$2) && (null != $if_$2))){
nm$1=lcoc_core.first(args$1, );
}else{
nm$1=null;
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "ns", ))){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "state", 1750323599, ), ));
(fl$1[1]=lcoc_transpile.repl_ns(state$1, form$2, ));
(fl$1[2]=const lcoc_core.Keyword(null, "body", 423165565, ));
(fl$1[3]="  return null;");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 536903680, 536903680, fl$1, ), -1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "require", ))){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "state", 1750323599, ), ));
(fl$2[1]=lcoc_transpile.repl_require(state$1, (lcoc_core.map.$_invoke$2(lcoc_transpile.unquote_form, args$1, )), ));
(fl$2[2]=const lcoc_core.Keyword(null, "body", 423165565, ));
(fl$2[3]="  return null;");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 536903680, 536903680, fl$2, ), -1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "declare", ))){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "state", 1750323599, ), ));
(fl$3[1]=(lcoc_core.update.$_invoke$4(state$1, const lcoc_core.Keyword(null, "decls", 4196995479, ), lcoc_core.into, (lcoc_core.map.$_invoke$2(lcoc_core.str, args$1, )), )));
(fl$3[2]=const lcoc_core.Keyword(null, "body", 423165565, ));
(fl$3[3]="  return null;");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 536903680, 536903680, fl$3, ), -1, );
}
final dc.bool or$6824_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2(h$1, "def", ));
late final dc.bool $if_$3;
if(or$6824_$AUTO_$1){
$if_$3=or$6824_$AUTO_$1;
}else{
$if_$3=(lcoc_core.$EQ_.$_invoke$2(h$1, "defonce", ));
}
if($if_$3){
final dc.dynamic tail$1=lcoc_transpile.strip_def_tail(lcoc_core.rest(args$1, ), );
late final dc.dynamic $if_$4;
if((tail$1 is lcoc_core.ISeqable$iface)){
$if_$4=((tail$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(tail$1, ) as lcoc_core.ISeqable$ext).$_seq$0(tail$1, ));
}
late final dc.bool or$6824_$AUTO_$2;
if(((false != $if_$4) && (null != $if_$4))){
or$6824_$AUTO_$2=false;
}else{
or$6824_$AUTO_$2=true;
}
late final dc.bool $if_$5;
if(or$6824_$AUTO_$2){
$if_$5=or$6824_$AUTO_$2;
}else{
final dc.bool and$6942_$AUTO_$3=(lcoc_core.$EQ_.$_invoke$2(h$1, "defonce", ));
if(and$6942_$AUTO_$3){
$if_$5=lcoc_core.contains$QMARK_((const lcoc_core.Keyword(null, "decls", 4196995479, ).$_invoke$1(state$1, )), (lcoc_core.str.$_invoke$1(nm$1, )), );
}else{
$if_$5=and$6942_$AUTO_$3;
}
}
if($if_$5){
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "state", 1750323599, ), ));
(fl$4[1]=(lcoc_core.update.$_invoke$4(state$1, const lcoc_core.Keyword(null, "decls", 4196995479, ), lcoc_core.conj, (lcoc_core.str.$_invoke$1(nm$1, )), )));
(fl$4[2]=const lcoc_core.Keyword(null, "echo", 3844603028, ));
(fl$4[3]=(lcoc_core.str.$_invoke$4("#'", (const lcoc_core.Keyword(null, "ns", 1494845879, ).$_invoke$1(state$1, )), "/", nm$1, )));
(fl$4[4]=const lcoc_core.Keyword(null, "body", 423165565, ));
(fl$4[5]="  return null;");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 537952256, 537952256, fl$4, ), -1, );
}
return lcoc_transpile.repl_assign(state$1, nm$1, lcoc_core.first(tail$1, ), );
}
final dc.bool or$6824_$AUTO_$3=(lcoc_core.$EQ_.$_invoke$2(h$1, "defn", ));
late final dc.bool $if_$6;
if(or$6824_$AUTO_$3){
$if_$6=or$6824_$AUTO_$3;
}else{
$if_$6=(lcoc_core.$EQ_.$_invoke$2(h$1, "defn-", ));
}
if($if_$6){
final dc.dynamic tail$2=lcoc_transpile.strip_def_tail(lcoc_core.rest(args$1, ), );
if(lcoc_core.vector$QMARK_(lcoc_core.first(tail$2, ), )){
}else{
(lcoc_transpile.unsupported("multi-arity defn", form$2, ));
}
return lcoc_transpile.repl_assign(state$1, nm$1, (lcoc_core.list$STAR_.$_invoke$3((lcoc_core.symbol.$_invoke$2(null, "fn", )), nm$1, tail$2, )), );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defmacro", ))){
return lcoc_transpile.unsupported("defmacro", form$2, );
}
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "state", 1750323599, ), ));
(fl$5[1]=state$1);
(fl$5[2]=const lcoc_core.Keyword(null, "body", 423165565, ));
(fl$5[3]=(lcoc_core.str.$_invoke$3("  return ", lcoc_transpile.expr(form$2, lcoc_transpile.repl_env(state$1, ), ), ";", )));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 536903680, 536903680, fl$5, ), -1, );
}

// END repl-compile

// BEGIN repl-env
dc.dynamic repl_env(dc.dynamic state$1, ){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
(fl$1[1]=(const lcoc_core.Keyword(null, "ns", 1494845879, ).$_invoke$1(state$1, )));
(fl$1[2]=const lcoc_core.Keyword(null, "globals", 1865841327, ));
(fl$1[3]=(const lcoc_core.Keyword(null, "decls", 4196995479, ).$_invoke$1(state$1, )));
(fl$1[4]=const lcoc_core.Keyword(null, "imports", 42919989, ));
(fl$1[5]=(const lcoc_core.Keyword(null, "aliases", 1919774076, ).$_invoke$1(state$1, )));
(fl$1[6]=const lcoc_core.Keyword(null, "refers", 470735803, ));
(fl$1[7]=(const lcoc_core.Keyword(null, "refers", 470735803, ).$_invoke$1(state$1, )));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 136347776, 136347776, fl$1, ), -1, );
}

// END repl-env

// BEGIN repl-host
dc.dynamic repl_host$v1="\nFuture<void> cljd_repl_host(String infoPath) async {\n  _rt_io.ProcessSignal.sigint.watch().listen((_) {});\n  _repl_dev.registerExtension('ext.cljd.eval', (method, params) async {\n    final out = <String, dynamic>{};\n    try {\n      final v = _repl_eval();\n      out['value'] = _rt_pr_str1(v);\n      _STAR_3 = _STAR_2;\n      _STAR_2 = _STAR_1;\n      _STAR_1 = v;\n    } catch (e) {\n      _STAR_e = e;\n      out['error'] = '\$e';\n    }\n    await _rt_io.stdout.flush();\n    await _rt_io.stderr.flush();\n    return _repl_dev.ServiceExtensionResponse.result(_repl_json.jsonEncode(out));\n  });\n  final info = await _repl_dev.Service.controlWebServer(\n      enable: true, silenceOutput: true);\n  final tmp = _rt_io.File('\$infoPath.tmp');\n  tmp.writeAsStringSync('\${info.serverUri}');\n  tmp.renameSync(infoPath);\n}\n";

// END repl-host

// BEGIN repl-host-main
dc.dynamic repl_host_main$v1="import 'session.dart' as session;\n\nvoid main(List<String> args) => session.cljd_repl_host(args[0]);\n";

// END repl-host-main

// BEGIN repl-ns
dc.dynamic repl_ns(dc.dynamic state$1, dc.dynamic form$1, ){
final dc.String v7204$1=(lcoc_core.str.$_invoke$1(lcoc_core.second(form$1, ), ));
late final dc.dynamic $if_$1;
if((state$1 is lcoc_core.IAssociative$iface)){
$if_$1=((state$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "ns", 1494845879, ), v7204$1, ));
}else{
$if_$1=((lcoc_core.IAssociative.extensions(state$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(state$1, const lcoc_core.Keyword(null, "ns", 1494845879, ), v7204$1, ));
}
return lcoc_transpile.repl_require($if_$1, (lcoc_core.mapcat.$_invoke$2(lcoc_core.rest, (lcoc_core.filter.$_invoke$2((dc.dynamic c$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(c$1, );
if(and$6942_$AUTO_$1){
return (lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "require", 1534203107, ), lcoc_core.first(c$1, ), ));
}
return and$6942_$AUTO_$1;
}, (lcoc_core.drop.$_invoke$2(2, form$1, )), )), )), );
}

// END repl-ns

// BEGIN repl-require
dc.dynamic repl_require(dc.dynamic state$1, dc.dynamic specs$1, ){
dc.dynamic f7135$1(dc.dynamic acc$1, dc.dynamic spec$1, ){
final dc.dynamic imports$1=(lcoc_core.nth.$_invoke$3(acc$1, 0, null, ));
final dc.dynamic aliases$1=(lcoc_core.nth.$_invoke$3(acc$1, 1, null, ));
final dc.dynamic refers$1=(lcoc_core.nth.$_invoke$3(acc$1, 2, null, ));
return lcoc_transpile.parse_require_spec(spec$1, imports$1, aliases$1, refers$1, );
}
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, (const lcoc_core.Keyword(null, "imports", 42919989, ).$_invoke$1(state$1, )), ));
(fl$1[1]=(const lcoc_core.Keyword(null, "aliases", 1919774076, ).$_invoke$1(state$1, )));
(fl$1[2]=(const lcoc_core.Keyword(null, "refers", 470735803, ).$_invoke$1(state$1, )));
final lcoc_core.PersistentVector start7136$1=lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, );
late final dc.dynamic vec$9569_$1;
if((specs$1 is lcoc_core.IReduce$iface)){
vec$9569_$1=((specs$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, start7136$1, ));
}else{
vec$9569_$1=((lcoc_core.IReduce.extensions(specs$1, ) as lcoc_core.IReduce$ext).$_reduce$2(specs$1, f7135$1, start7136$1, ));
}
final dc.dynamic imports$2=(lcoc_core.nth.$_invoke$3(vec$9569_$1, 0, null, ));
final dc.dynamic aliases$2=(lcoc_core.nth.$_invoke$3(vec$9569_$1, 1, null, ));
final dc.dynamic refers$2=(lcoc_core.nth.$_invoke$3(vec$9569_$1, 2, null, ));
final lcoc_core.PersistentVector assoc_v9575$1=lcoc_core.vec((lcoc_core.distinct.$_invoke$1(imports$2, )), );
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "imports", 42919989, ), ));
(fl$2[1]=assoc_v9575$1);
(fl$2[2]=const lcoc_core.Keyword(null, "refers", 470735803, ));
(fl$2[3]=refers$2);
(fl$2[4]=const lcoc_core.Keyword(null, "aliases", 1919774076, ));
(fl$2[5]=aliases$2);
final lcoc_core.PersistentHashMap o7120$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 404750336, 404750336, fl$2, ), -1, );
if((state$1 is lcoc_core.ICollection$iface)){
return ((state$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}
return ((lcoc_core.ICollection.extensions(state$1, ) as lcoc_core.ICollection$ext).$_conj$1(state$1, o7120$1, ));
}

// END repl-require

// BEGIN repl-source
dc.dynamic repl_source(dc.dynamic state$1, dc.dynamic body$1, ){
return (lcoc_core.str.$_invoke_more$10("// GENERATED by the cljd2dart REPL.\n", "// ignore_for_file: type=lint\n", "import 'dart:convert' as _repl_json;\n", "import 'dart:developer' as _repl_dev;\n", "import 'dart:io' as _rt_io;\n", "import 'dart:math' as _rt_math;\n", lcoc_transpile.join_lines((const lcoc_core.Keyword(null, "imports", 42919989, ).$_invoke$1(state$1, )), ), "\n\n", (lcoc_string.join.$_invoke$2("\n", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9578_$SHARP_$1, ){
return (lcoc_core.str.$_invoke$3("dynamic ", lcoc_transpile.munge(p1$9578_$SHARP_$1, ), ";", ));
}, (lcoc_core.sort.$_invoke$1((const lcoc_core.Keyword(null, "decls", 4196995479, ).$_invoke$1(state$1, )), )), )), )), ["\n\ndynamic _repl_eval() {\n", body$1, "\n}\n", lcoc_transpile.repl_host$v1, "\n", lcocr_src.runtime_source$v1, "\n", ], ));
}

// END repl-source

// BEGIN repl-state
dc.dynamic repl_state(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(7, const lcoc_core.Keyword(null, "imports", 42919989, ), ));
(fl$1[1]=lcoc_core.$_EMPTY_VECTOR);
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "decls", 4196995479, ), ));
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(8, "*e", ));
(fl$3[1]="*e");
(fl$3[2]="*1");
(fl$3[3]="*1");
(fl$3[4]="*3");
(fl$3[5]="*3");
(fl$3[6]="*2");
(fl$3[7]="*2");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 100671490, 100671490, fl$3, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
(fl$2[1]=lcoc_core.PersistentHashSet(null, cast$1, -1, ));
(fl$2[2]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$2[3]="user");
(fl$1[2]=lcoc_core.BitmapNode(2, 12288, 12288, fl$2, ));
(fl$1[3]=const lcoc_core.Keyword(null, "refers", 470735803, ));
(fl$1[4]=lcoc_core.$_EMPTY_MAP);
(fl$1[5]=const lcoc_core.Keyword(null, "aliases", 1919774076, ));
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(4, "str", ));
(fl$4[1]="cljd.string");
(fl$4[2]="set");
(fl$4[3]="cljd.set");
(fl$1[6]=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 33554560, 33554560, fl$4, ), -1, ));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 413138944, 404750336, fl$1, ), -1, );
}

// END repl-state

// BEGIN resolve-local
dc.dynamic resolve_local(dc.dynamic sym$1, dc.dynamic env$1, ){
final dc.String k7259$1=(lcoc_core.str.$_invoke$1(sym$1, ));
if((env$1 is lcoc_core.ILookup$iface)){
return ((env$1 as lcoc_core.ILookup$iface).$_lookup$1(k7259$1, ));
}
return ((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, k7259$1, ));
}

// END resolve-local

// BEGIN resolve-refer
dc.dynamic resolve_refer(dc.dynamic sym$1, dc.dynamic env$1, ){
late final dc.dynamic o7258$2;
if((env$1 is lcoc_core.ILookup$iface)){
o7258$2=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "refers", 470735803, ), ));
}else{
o7258$2=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "refers", 470735803, ), ));
}
final dc.String k7259$2=(lcoc_core.str.$_invoke$1(sym$1, ));
if((o7258$2 is lcoc_core.ILookup$iface)){
return ((o7258$2 as lcoc_core.ILookup$iface).$_lookup$1(k7259$2, ));
}
return ((lcoc_core.ILookup.extensions(o7258$2, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$2, k7259$2, ));
}

// END resolve-refer

// BEGIN rt-call
dc.dynamic rt_call(dc.dynamic fname$1, dc.dynamic args$1, dc.dynamic env$1, ){
return (lcoc_core.str.$_invoke$4(fname$1, "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9470_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9470_$SHARP_$1, env$1, );
}, args$1, )), )), ")", ));
}

// END rt-call

// BEGIN rt-list-call
dc.dynamic rt_list_call(dc.dynamic fname$1, dc.dynamic args$1, dc.dynamic env$1, ){
return (lcoc_core.str.$_invoke$4(fname$1, "([", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9471_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9471_$SHARP_$1, env$1, );
}, args$1, )), )), "])", ));
}

// END rt-list-call

// BEGIN spaces
dc.dynamic spaces(dc.dynamic n$1, ){
return (lcoc_core.apply.$_invoke$2(lcoc_core.str, (lcoc_core.repeat.$_invoke$2(n$1, "  ", )), ));
}

// END spaces

// BEGIN special-form
dc.dynamic special_form(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.String h$1=(lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), ));
final dc.dynamic args$1=lcoc_core.rest(form$1, );
if((lcoc_core.$EQ_.$_invoke$2(h$1, "if", ))){
final dc.dynamic arg$2=lcoc_core.first(args$1, );
final dc.dynamic arg$1=lcoc_core.second(args$1, );
late final dc.int cast$1;
if((args$1 is lcoc_core.ICounted$iface)){
cast$1=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $1=(cast$1 > 2);
late final dc.dynamic $if_$1;
if($1){
$if_$1=(lcoc_core.nth.$_invoke$2(args$1, 2, ));
}else{
$if_$1=null;
}
return lcoc_transpile.if_expr(arg$2, arg$1, $if_$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "if-not", ))){
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.first(args$1, ), ));
final dc.dynamic arg$3=lcoc_core.second(args$1, );
late final dc.int cast$2;
if((args$1 is lcoc_core.ICounted$iface)){
cast$2=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $2=(cast$2 > 2);
late final dc.dynamic $if_$2;
if($2){
$if_$2=(lcoc_core.nth.$_invoke$2(args$1, 2, ));
}else{
$if_$2=null;
}
return lcoc_transpile.if_expr(arg$4, arg$3, $if_$2, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "when", ))){
return lcoc_transpile.if_expr(lcoc_core.first(args$1, ), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "do", )), lcoc_core.rest(args$1, ), ), null, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "when-not", ))){
return lcoc_transpile.if_expr((lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.first(args$1, ), )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "do", )), lcoc_core.rest(args$1, ), ), null, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "cond", ))){
return lcoc_transpile.cond_result(lcoc_core.vec(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "do", ))){
return lcoc_transpile.do_expr(args$1, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "let", ))){
return lcoc_transpile.let_expr(lcoc_core.first(args$1, ), lcoc_core.rest(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "fn", ))){
return lcoc_transpile.fn_expr(form$1, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "fn*", ))){
return lcoc_transpile.fn_expr(form$1, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "loop", ))){
return lcoc_transpile.loop_expr(lcoc_core.first(args$1, ), lcoc_core.rest(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "not", ))){
return (lcoc_core.str.$_invoke$2("!", lcoc_transpile.truthy(lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ), ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "and", ))){
return lcoc_transpile.and_expr(lcoc_core.vec(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "or", ))){
return lcoc_transpile.or_expr(lcoc_core.vec(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "quote", ))){
return lcoc_transpile.quoted(lcoc_core.first(args$1, ), env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "case", ))){
return lcoc_transpile.case_expr(form$1, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "comment", ))){
return "null";
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "new", ))){
return (lcoc_core.str.$_invoke$4(lcoc_transpile.munge((lcoc_core.str.$_invoke$1(lcoc_core.first(args$1, ), )), ), "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9536_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9536_$SHARP_$1, env$1, );
}, lcoc_core.rest(args$1, ), )), )), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "throw", ))){
return (lcoc_core.str.$_invoke$3("(() { throw ", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), "; })()", ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "recur", ))){
late final dc.dynamic f$1;
if((env$1 is lcoc_core.ILookup$iface)){
f$1=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "loop", 1009734395, ), ));
}else{
f$1=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "loop", 1009734395, ), ));
}
if(((false != f$1) && (null != f$1))){
return (lcoc_core.str.$_invoke$4(f$1, "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9537_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9537_$SHARP_$1, env$1, );
}, args$1, )), )), ")", ));
}
return lcoc_transpile.unsupported("recur outside loop/fn", form$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "deref", ))){
return (lcoc_core.str.$_invoke$3("_rt_deref(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "atom", ))){
return (lcoc_core.str.$_invoke$3("_Atom(", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ")", ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "set!", ))){
final dc.dynamic target$1=lcoc_core.first(args$1, );
final dc.dynamic value$1=lcoc_transpile.expr(lcoc_core.second(args$1, ), env$1, );
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(target$1, );
late final dc.bool $if_$3;
if(and$6942_$AUTO_$1){
final dc.bool and$6942_$AUTO_$2=lcoc_core.symbol$QMARK_(lcoc_core.first(target$1, ), );
if(and$6942_$AUTO_$2){
$if_$3=lcoc_string.starts_with$QMARK_((lcoc_core.str.$_invoke$1(lcoc_core.first(target$1, ), )), ".-", );
}else{
$if_$3=and$6942_$AUTO_$2;
}
}else{
$if_$3=and$6942_$AUTO_$1;
}
if($if_$3){
return (lcoc_core.str.$_invoke$5(lcoc_transpile.expr(lcoc_core.second(target$1, ), env$1, ), ".", (lcoc_core.subs.$_invoke$2((lcoc_core.str.$_invoke$1(lcoc_core.first(target$1, ), )), 2, )), " = ", value$1, ));
}
return (lcoc_core.str.$_invoke$3(lcoc_transpile.expr(target$1, env$1, ), " = ", value$1, ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, ".", ))){
return lcoc_transpile.dot_call(args$1, env$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "..", ))){
return lcoc_transpile.unsupported(".. interop", form$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "try", ))){
return lcoc_transpile.try_expr(lcoc_core.vec(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "for", ))){
return lcoc_transpile.unsupported("for comprehension", form$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "doseq", ))){
return lcoc_transpile.doseq_expr(lcoc_core.first(args$1, ), lcoc_core.rest(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "ns", ))){
return lcoc_transpile.unsupported("nested ns", form$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "def", ))){
return lcoc_transpile.unsupported("nested def", form$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defn", ))){
return lcoc_transpile.unsupported("nested defn", form$1, );
}
return null;
}

// END special-form

// BEGIN stmt
dc.dynamic stmt(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.dynamic form$2=lcoc_transpile.expand(form$1, );
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$2, );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=lcoc_core.symbol$QMARK_(lcoc_core.first(form$2, ), );
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
final dc.String h$1=(lcoc_core.str.$_invoke$1(lcoc_core.first(form$2, ), ));
final dc.dynamic args$1=lcoc_core.rest(form$2, );
if((lcoc_core.$EQ_.$_invoke$2(h$1, "if", ))){
final dc.dynamic arg$2=lcoc_core.first(args$1, );
final dc.dynamic arg$1=lcoc_core.second(args$1, );
late final dc.int cast$1;
if((args$1 is lcoc_core.ICounted$iface)){
cast$1=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $1=(cast$1 > 2);
late final dc.dynamic $if_$2;
if($1){
$if_$2=(lcoc_core.nth.$_invoke$2(args$1, 2, ));
}else{
$if_$2=null;
}
return lcoc_transpile.if_stmt(arg$2, arg$1, $if_$2, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "if-not", ))){
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.first(args$1, ), ));
final dc.dynamic arg$3=lcoc_core.second(args$1, );
late final dc.int cast$2;
if((args$1 is lcoc_core.ICounted$iface)){
cast$2=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool $2=(cast$2 > 2);
late final dc.dynamic $if_$3;
if($2){
$if_$3=(lcoc_core.nth.$_invoke$2(args$1, 2, ));
}else{
$if_$3=null;
}
return lcoc_transpile.if_stmt(arg$4, arg$3, $if_$3, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "when", ))){
return lcoc_transpile.if_stmt(lcoc_core.first(args$1, ), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "do", )), lcoc_core.rest(args$1, ), ), null, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "when-not", ))){
return lcoc_transpile.if_stmt((lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.first(args$1, ), )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "do", )), lcoc_core.rest(args$1, ), ), null, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "cond", ))){
return lcoc_transpile.cond_stmt(lcoc_core.vec(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "do", ))){
return lcoc_transpile.stmt_block(form$2, env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "let", ))){
return lcoc_transpile.let_stmt(lcoc_core.first(args$1, ), lcoc_core.rest(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "doseq", ))){
return lcoc_transpile.doseq_stmt(lcoc_core.first(args$1, ), lcoc_core.rest(args$1, ), env$1, ind$1, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "recur", ))){
late final dc.dynamic f$1;
if((env$1 is lcoc_core.ILookup$iface)){
f$1=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "loop", 1009734395, ), ));
}else{
f$1=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "loop", 1009734395, ), ));
}
if(((false != f$1) && (null != f$1))){
return (lcoc_core.str.$_invoke$6(lcoc_transpile.spaces(ind$1, ), "return ", f$1, "(", (lcoc_string.join.$_invoke$2(", ", (lcoc_core.map.$_invoke$2((dc.dynamic p1$9553_$SHARP_$1, ){
return lcoc_transpile.expr(p1$9553_$SHARP_$1, env$1, );
}, args$1, )), )), ");", ));
}
return lcoc_transpile.unsupported("recur outside loop/fn", form$2, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "throw", ))){
return (lcoc_core.str.$_invoke$4(lcoc_transpile.spaces(ind$1, ), "throw ", lcoc_transpile.expr(lcoc_core.first(args$1, ), env$1, ), ";", ));
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "comment", ))){
return "";
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "ns", ))){
return "";
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "def", ))){
return lcoc_transpile.unsupported("nested def", form$2, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defn", ))){
return lcoc_transpile.unsupported("nested defn", form$2, );
}
return (lcoc_core.str.$_invoke$3(lcoc_transpile.spaces(ind$1, ), lcoc_transpile.expr(form$2, env$1, ), ";", ));
}
return (lcoc_core.str.$_invoke$3(lcoc_transpile.spaces(ind$1, ), lcoc_transpile.expr(form$2, env$1, ), ";", ));
}

// END stmt

// BEGIN stmt-block
dc.dynamic stmt_block(dc.dynamic form$1, dc.dynamic env$1, dc.dynamic ind$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$1, );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
final dc.bool and$6942_$AUTO_$2=lcoc_core.symbol$QMARK_(lcoc_core.first(form$1, ), );
if(and$6942_$AUTO_$2){
$if_$1=(lcoc_core.$EQ_.$_invoke$2((lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), )), "do", ));
}else{
$if_$1=and$6942_$AUTO_$2;
}
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
return lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9540_$SHARP_$1, ){
return lcoc_transpile.stmt(p1$9540_$SHARP_$1, env$1, ind$1, );
}, lcoc_core.rest(form$1, ), )), );
}
return lcoc_transpile.stmt(form$1, env$1, ind$1, );
}

// END stmt-block

// BEGIN strip-def-tail
dc.dynamic strip_def_tail(dc.dynamic tail$1, ){
final dc.dynamic and$6942_$AUTO_$1=lcoc_core.next(tail$1, );
late final dc.dynamic $if_$1;
if(((false != and$6942_$AUTO_$1) && (null != and$6942_$AUTO_$1))){
$if_$1=(lcoc_core.first(tail$1, ) is dc.String);
}else{
$if_$1=and$6942_$AUTO_$1;
}
late final dc.dynamic tail$2;
if(((false != $if_$1) && (null != $if_$1))){
tail$2=lcoc_core.rest(tail$1, );
}else{
tail$2=tail$1;
}
final dc.dynamic and$6942_$AUTO_$2=lcoc_core.next(tail$2, );
late final dc.dynamic $if_$2;
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
$if_$2=lcoc_core.map$QMARK_(lcoc_core.first(tail$2, ), );
}else{
$if_$2=and$6942_$AUTO_$2;
}
if(((false != $if_$2) && (null != $if_$2))){
return lcoc_core.rest(tail$2, );
}
return tail$2;
}

// END strip-def-tail

// BEGIN symbol-expr
dc.dynamic symbol_expr(dc.dynamic sym$1, dc.dynamic env$1, ){
final dc.String s$1=(lcoc_core.str.$_invoke$1(sym$1, ));
final dc.dynamic local$1=lcoc_transpile.resolve_local(sym$1, env$1, );
final dc.dynamic refer$1=lcoc_transpile.resolve_refer(sym$1, env$1, );
if(((false != local$1) && (null != local$1))){
return local$1;
}
if(((false != refer$1) && (null != refer$1))){
return refer$1;
}
final dc.bool and$6942_$AUTO_$1=lcoc_string.includes$QMARK_(s$1, "/", );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=(lcoc_core.not$EQ_.$_invoke$2(s$1, "/", ));
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
late final dc.String? ns$1;
if((sym$1 is lcoc_core.INamed$iface)){
ns$1=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
ns$1=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
final dc.String nm$1=lcoc_core.name(sym$1, );
if((lcoc_core.$EQ_.$_invoke$2(ns$1, "cljd.core", ))){
final dc.dynamic o7254$1=lcoc_transpile.core_value_fns$v1;
if((o7254$1 is lcoc_core.ILookup$iface)){
return ((o7254$1 as lcoc_core.ILookup$iface).$_lookup$2(nm$1, nm$1, ));
}
return ((lcoc_core.ILookup.extensions(o7254$1, ) as lcoc_core.ILookup$ext).$_lookup$2(o7254$1, nm$1, nm$1, ));
}
if((lcoc_core.$EQ_.$_invoke$2(ns$1, "clojure.core", ))){
final dc.dynamic o7254$2=lcoc_transpile.core_value_fns$v1;
if((o7254$2 is lcoc_core.ILookup$iface)){
return ((o7254$2 as lcoc_core.ILookup$iface).$_lookup$2(nm$1, nm$1, ));
}
return ((lcoc_core.ILookup.extensions(o7254$2, ) as lcoc_core.ILookup$ext).$_lookup$2(o7254$2, nm$1, nm$1, ));
}
late final dc.dynamic $if_$2;
if((env$1 is lcoc_core.ILookup$iface)){
$if_$2=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}else{
$if_$2=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}
final dc.bool $1=(lcoc_core.$EQ_.$_invoke$2(ns$1, $if_$2, ));
if($1){
return lcoc_transpile.munge(nm$1, );
}
late final dc.dynamic $if_$3;
if((env$1 is lcoc_core.ILookup$iface)){
$if_$3=((env$1 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "imports", 42919989, ), ));
}else{
$if_$3=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(env$1, const lcoc_core.Keyword(null, "imports", 42919989, ), ));
}
final dc.bool $2=lcoc_core.contains$QMARK_($if_$3, ns$1, );
if($2){
return (lcoc_core.str.$_invoke$3(ns$1, ".", lcoc_string.replace(nm$1, "/", ".", ), ));
}
return lcoc_transpile.unsupported((lcoc_core.str.$_invoke$2("namespace ", ns$1, )), sym$1, );
}
final lcoc_core.PersistentHashSet not_found7256$3=lcoc_core.$_EMPTY_SET;
late final dc.dynamic $if_$4;
if((env$1 is lcoc_core.ILookup$iface)){
$if_$4=((env$1 as lcoc_core.ILookup$iface).$_lookup$2(const lcoc_core.Keyword(null, "globals", 1865841327, ), not_found7256$3, ));
}else{
$if_$4=((lcoc_core.ILookup.extensions(env$1, ) as lcoc_core.ILookup$ext).$_lookup$2(env$1, const lcoc_core.Keyword(null, "globals", 1865841327, ), not_found7256$3, ));
}
final dc.bool $3=lcoc_core.contains$QMARK_($if_$4, s$1, );
if($3){
return lcoc_transpile.munge(s$1, );
}
final dc.dynamic o7254$4=lcoc_transpile.core_value_fns$v1;
final dc.dynamic not_found7256$4=lcoc_transpile.munge(s$1, );
if((o7254$4 is lcoc_core.ILookup$iface)){
return ((o7254$4 as lcoc_core.ILookup$iface).$_lookup$2(s$1, not_found7256$4, ));
}
return ((lcoc_core.ILookup.extensions(o7254$4, ) as lcoc_core.ILookup$ext).$_lookup$2(o7254$4, s$1, not_found7256$4, ));
}

// END symbol-expr

// BEGIN symbol-kw
dc.dynamic symbol_kw(dc.dynamic sym$1, ){
late final dc.String? cast$1;
if((sym$1 is lcoc_core.INamed$iface)){
cast$1=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$1=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
if((null != cast$1)){
final dc.dynamic arg$1=lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), );
late final dc.String? cast$2;
if((sym$1 is lcoc_core.INamed$iface)){
cast$2=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$2=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
final dc.dynamic $1=lcoc_transpile.dart_string(cast$2, );
return (lcoc_core.str.$_invoke$5("_Kw(", arg$1, ", ", $1, ")", ));
}
return (lcoc_core.str.$_invoke$3("_Kw(", lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), ), ")", ));
}

// END symbol-kw

// BEGIN symbol-sym
dc.dynamic symbol_sym(dc.dynamic sym$1, ){
late final dc.String? cast$1;
if((sym$1 is lcoc_core.INamed$iface)){
cast$1=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$1=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
if((null != cast$1)){
final dc.dynamic arg$1=lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), );
late final dc.String? cast$2;
if((sym$1 is lcoc_core.INamed$iface)){
cast$2=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$2=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
final dc.dynamic $1=lcoc_transpile.dart_string(cast$2, );
return (lcoc_core.str.$_invoke$5("_Sym(", arg$1, ", ", $1, ")", ));
}
return (lcoc_core.str.$_invoke$3("_Sym(", lcoc_transpile.dart_string(lcoc_core.name(sym$1, ), ), ")", ));
}

// END symbol-sym

// BEGIN thread-first
dc.dynamic thread_first(dc.dynamic x$1, dc.dynamic forms$1, ){
dc.dynamic f7135$1(dc.dynamic acc$1, dc.dynamic f$1, ){
if(lcoc_core.list$QMARK_(f$1, )){
return (lcoc_core.apply.$_invoke$4(lcoc_core.list, lcoc_core.first(f$1, ), acc$1, lcoc_core.rest(f$1, ), ));
}
return (lcoc_core.list.$_invoke$2(f$1, acc$1, ));
}
if((forms$1 is lcoc_core.IReduce$iface)){
return ((forms$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, x$1, ));
}
return ((lcoc_core.IReduce.extensions(forms$1, ) as lcoc_core.IReduce$ext).$_reduce$2(forms$1, f7135$1, x$1, ));
}

// END thread-first

// BEGIN thread-last
dc.dynamic thread_last(dc.dynamic x$1, dc.dynamic forms$1, ){
dc.dynamic f7135$1(dc.dynamic acc$1, dc.dynamic f$1, ){
if(lcoc_core.list$QMARK_(f$1, )){
return (lcoc_core.apply.$_invoke$2(lcoc_core.list, (lcoc_core.concat.$_invoke$2(f$1, (lcoc_core.list.$_invoke$1(acc$1, )), )), ));
}
return (lcoc_core.list.$_invoke$2(f$1, acc$1, ));
}
if((forms$1 is lcoc_core.IReduce$iface)){
return ((forms$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, x$1, ));
}
return ((lcoc_core.IReduce.extensions(forms$1, ) as lcoc_core.IReduce$ext).$_reduce$2(forms$1, f7135$1, x$1, ));
}

// END thread-last

// BEGIN top-form
dc.dynamic top_form(dc.dynamic form$1, dc.dynamic env$1, ){
final dc.dynamic form$2=lcoc_transpile.expand(form$1, );
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$2, );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=lcoc_core.symbol$QMARK_(lcoc_core.first(form$2, ), );
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
final dc.String h$1=(lcoc_core.str.$_invoke$1(lcoc_core.first(form$2, ), ));
late final dc.int cast$1;
if((form$2 is lcoc_core.ICounted$iface)){
cast$1=(((form$2 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(form$2, ) as lcoc_core.ICounted$ext).$_count$0(form$2, )) as dc.int);
}
final dc.bool $1=(cast$1 > 1);
late final dc.dynamic nm$1;
if($1){
nm$1=lcoc_core.second(form$2, );
}else{
nm$1=null;
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "ns", ))){
return "";
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "comment", ))){
return "";
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "do", ))){
return lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9558_$SHARP_$1, ){
return lcoc_transpile.top_form(p1$9558_$SHARP_$1, env$1, );
}, lcoc_core.rest(form$2, ), )), );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "def", ))){
late final dc.dynamic $if_$2;
if((nm$1 is lcoc_core.IMeta$iface)){
$if_$2=((nm$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$2=((lcoc_core.IMeta.extensions(nm$1, ) as lcoc_core.IMeta$ext).$_meta$0(nm$1, ));
}
final dc.dynamic $2=(const lcoc_core.Keyword(null, "private", 3017064578, ).$_invoke$1($if_$2, ));
final dc.bool $3=(lcoc_core.$EQ_.$_invoke$2(true, $2, ));
return lcoc_transpile.def_form(form$2, env$1, $3, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defonce", ))){
late final dc.dynamic $if_$3;
if((nm$1 is lcoc_core.IMeta$iface)){
$if_$3=((nm$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$3=((lcoc_core.IMeta.extensions(nm$1, ) as lcoc_core.IMeta$ext).$_meta$0(nm$1, ));
}
final dc.dynamic $4=(const lcoc_core.Keyword(null, "private", 3017064578, ).$_invoke$1($if_$3, ));
final dc.bool $5=(lcoc_core.$EQ_.$_invoke$2(true, $4, ));
return lcoc_transpile.def_form(form$2, env$1, $5, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defn", ))){
late final dc.dynamic $if_$4;
if((nm$1 is lcoc_core.IMeta$iface)){
$if_$4=((nm$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$4=((lcoc_core.IMeta.extensions(nm$1, ) as lcoc_core.IMeta$ext).$_meta$0(nm$1, ));
}
final dc.dynamic $6=(const lcoc_core.Keyword(null, "private", 3017064578, ).$_invoke$1($if_$4, ));
final dc.bool $7=(lcoc_core.$EQ_.$_invoke$2(true, $6, ));
return lcoc_transpile.defn_form(form$2, env$1, $7, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defn-", ))){
return lcoc_transpile.defn_form(form$2, env$1, true, );
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "defmacro", ))){
return lcoc_transpile.unsupported("defmacro", form$2, );
}
return lcoc_transpile.stmt(form$2, env$1, 0, );
}
return lcoc_transpile.stmt(form$2, env$1, 0, );
}

// END top-form

// BEGIN transpile-forms
dc.dynamic transpile_forms(dc.dynamic forms$1, dc.dynamic opts$1, ){
final lcoc_core.PersistentVector forms$2=lcoc_core.vec(forms$1, );
final dc.dynamic ns_form$1=lcoc_core.first((lcoc_core.filter.$_invoke$2(lcoc_transpile.ns_form$QMARK_, forms$2, )), );
late final dc.dynamic vec$9566_$1;
if(((false != ns_form$1) && (null != ns_form$1))){
vec$9566_$1=lcoc_transpile.parse_ns(ns_form$1, );
}else{
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, lcoc_core.$_EMPTY_VECTOR, ));
(fl$1[1]=lcoc_core.$_EMPTY_MAP);
(fl$1[2]=lcoc_core.$_EMPTY_MAP);
(fl$1[3]=null);
vec$9566_$1=lcoc_core.PersistentVector(null, 4, 5, arg$1, fl$1, -1, );
}
final dc.dynamic imports$1=(lcoc_core.nth.$_invoke$3(vec$9566_$1, 0, null, ));
final dc.dynamic aliases$1=(lcoc_core.nth.$_invoke$3(vec$9566_$1, 1, null, ));
final dc.dynamic refers$1=(lcoc_core.nth.$_invoke$3(vec$9566_$1, 2, null, ));
final dc.dynamic current_ns$1=(lcoc_core.nth.$_invoke$3(vec$9566_$1, 3, null, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
(fl$2[1]=current_ns$1);
(fl$2[2]=const lcoc_core.Keyword(null, "imports", 42919989, ));
(fl$2[3]=aliases$1);
(fl$2[4]=const lcoc_core.Keyword(null, "refers", 470735803, ));
(fl$2[5]=refers$1);
final lcoc_core.PersistentHashMap env$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 136315008, 136315008, fl$2, ), -1, );
final dc.dynamic body_forms$1=(lcoc_core.remove.$_invoke$2(lcoc_transpile.ns_form$QMARK_, forms$2, ));
final dc.dynamic body$1=lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9565_$SHARP_$1, ){
return lcoc_transpile.top_form(p1$9565_$SHARP_$1, env$1, );
}, body_forms$1, )), );
late final dc.dynamic source$1;
if((opts$1 is lcoc_core.ILookup$iface)){
source$1=((opts$1 as lcoc_core.ILookup$iface).$_lookup$2(const lcoc_core.Keyword(null, "source-name", 2122676934, ), "<input>", ));
}else{
source$1=((lcoc_core.ILookup.extensions(opts$1, ) as lcoc_core.ILookup$ext).$_lookup$2(opts$1, const lcoc_core.Keyword(null, "source-name", 2122676934, ), "<input>", ));
}
final dc.String header$1=(lcoc_core.str.$_invoke_more$10("// GENERATED by cljd2dart. Do not edit.\n", "// Source: ", source$1, "\n", "//\n", "// This file was produced by a small source-to-source transpiler\n", "// written in ClojureDart. See tools/cljd2dart/README.md.\n", "// ignore_for_file: type=lint, unnecessary_cast, ", "unused_import, unused_local_variable, unused_element, dead_code\n", ["import 'dart:io' as _rt_io;\n", "import 'dart:math' as _rt_math;\n", lcoc_transpile.join_lines(imports$1, ), "\n\n", ], ));
return (lcoc_core.str.$_invoke$8(header$1, body$1, "\n\n", "// ---------------------------------------------------------------------------\n", "// cljd2dart runtime\n", "// ---------------------------------------------------------------------------\n\n", lcocr_src.runtime_source$v1, "\n", ));
}

// END transpile-forms

// BEGIN truthy
dc.dynamic truthy(dc.dynamic x$1, ){
return (lcoc_core.str.$_invoke$3("_rt_truthy(", x$1, ")", ));
}

// END truthy

// BEGIN try-expr
dc.dynamic try_expr(dc.dynamic args$1, dc.dynamic env$1, dc.dynamic ind$1, ){
late final lcoc_core.PersistentVector vec$9546_$1;
dc.dynamic xs$1=lcoc_core.vec(args$1, );
dc.dynamic body$1=lcoc_core.$_EMPTY_VECTOR;
dc.dynamic catches$1=lcoc_core.$_EMPTY_VECTOR;
dc.dynamic $finally_$1=null;
do {
final dc.dynamic o7080$1=xs$1;
late final dc.dynamic $if_$1;
if((o7080$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o7080$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o7080$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o7080$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, body$1, ));
(fl$1[1]=catches$1);
(fl$1[2]=$finally_$1);
vec$9546_$1=lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, );
}else{
final dc.dynamic x$1=lcoc_core.first(xs$1, );
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(x$1, );
late final dc.bool $if_$3;
if(and$6942_$AUTO_$1){
$if_$3=lcoc_core.symbol$QMARK_(lcoc_core.first(x$1, ), );
}else{
$if_$3=and$6942_$AUTO_$1;
}
late final dc.String? h$1;
if($if_$3){
h$1=(lcoc_core.str.$_invoke$1(lcoc_core.first(x$1, ), ));
}else{
h$1=null;
}
if((lcoc_core.$EQ_.$_invoke$2(h$1, "catch", ))){
xs$1=lcoc_core.vec(lcoc_core.rest(xs$1, ), );
final dc.dynamic coll7119$1=catches$1;
final lcoc_core.PersistentVector o7120$1=lcoc_core.vec(lcoc_core.rest(x$1, ), );
if((coll7119$1 is lcoc_core.ICollection$iface)){
catches$1=((coll7119$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}else{
catches$1=((lcoc_core.ICollection.extensions(coll7119$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7119$1, o7120$1, ));
}
continue;
}else if((lcoc_core.$EQ_.$_invoke$2(h$1, "finally", ))){
xs$1=lcoc_core.vec(lcoc_core.rest(xs$1, ), );
$finally_$1=lcoc_core.vec(lcoc_core.rest(x$1, ), );
continue;
}else{
xs$1=lcoc_core.vec(lcoc_core.rest(xs$1, ), );
final dc.dynamic coll7119$2=body$1;
if((coll7119$2 is lcoc_core.ICollection$iface)){
body$1=((coll7119$2 as lcoc_core.ICollection$iface).$_conj$1(x$1, ));
}else{
body$1=((lcoc_core.ICollection.extensions(coll7119$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7119$2, x$1, ));
}
continue;
}
}
break;
} while(true);
final dc.dynamic body$2=(lcoc_core.nth.$_invoke$3(vec$9546_$1, 0, null, ));
final dc.dynamic catches$2=(lcoc_core.nth.$_invoke$3(vec$9546_$1, 1, null, ));
final dc.dynamic $finally_$2=(lcoc_core.nth.$_invoke$3(vec$9546_$1, 2, null, ));
final dc.dynamic arg$5=lcoc_transpile.spaces((1 + (ind$1 as dc.num)), );
final dc.dynamic arg$4=lcoc_transpile.emit_body(body$2, env$1, ((ind$1 as dc.num) + 2), );
final dc.dynamic arg$3=lcoc_transpile.spaces((1 + (ind$1 as dc.num)), );
final dc.dynamic arg$2=lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic clause$1, ){
late final dc.int cast$1;
if((clause$1 is lcoc_core.ICounted$iface)){
cast$1=(((clause$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(clause$1, ) as lcoc_core.ICounted$ext).$_count$0(clause$1, )) as dc.int);
}
final dc.bool typed$QMARK_$1=(cast$1 >= 3);
late final dc.dynamic type_expr$1;
if(typed$QMARK_$1){
type_expr$1=lcoc_transpile.expr((lcoc_core.nth.$_invoke$2(clause$1, 0, )), env$1, );
}else{
type_expr$1=null;
}
late final dc.dynamic binding$1;
if(typed$QMARK_$1){
binding$1=(lcoc_core.nth.$_invoke$2(clause$1, 1, ));
}else{
binding$1=(lcoc_core.nth.$_invoke$2(clause$1, 0, ));
}
late final dc.dynamic handler_body$1;
if(typed$QMARK_$1){
handler_body$1=(lcoc_core.drop.$_invoke$2(2, clause$1, ));
}else{
handler_body$1=lcoc_core.rest(clause$1, );
}
final dc.dynamic v$1=lcoc_transpile.fresh((lcoc_core.str.$_invoke$1(binding$1, )), );
final dc.String k7203$1=(lcoc_core.str.$_invoke$1(binding$1, ));
late final dc.dynamic env2$1;
if((env$1 is lcoc_core.IAssociative$iface)){
env2$1=((env$1 as lcoc_core.IAssociative$iface).$_assoc$2(k7203$1, v$1, ));
}else{
env2$1=((lcoc_core.IAssociative.extensions(env$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env$1, k7203$1, v$1, ));
}
late final dc.String? $if_$4;
if(typed$QMARK_$1){
$if_$4=(lcoc_core.str.$_invoke$2(" on ", type_expr$1, ));
}else{
$if_$4=null;
}
return (lcoc_core.str.$_invoke$8($if_$4, " catch (", v$1, ") {\n", lcoc_transpile.emit_body(handler_body$1, env2$1, ((ind$1 as dc.num) + 2), ), "\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "}", ));
}, catches$2, )), );
late final dc.dynamic $if_$5;
if(($finally_$2 is lcoc_core.ISeqable$iface)){
$if_$5=(($finally_$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions($finally_$2, ) as lcoc_core.ISeqable$ext).$_seq$0($finally_$2, ));
}
late final dc.String? $if_$6;
if(((false != $if_$5) && (null != $if_$5))){
$if_$6=(lcoc_core.str.$_invoke$5(" finally {\n", lcoc_transpile.join_lines((lcoc_core.map.$_invoke$2((dc.dynamic p1$9545_$SHARP_$1, ){
return lcoc_transpile.stmt(p1$9545_$SHARP_$1, env$1, ((ind$1 as dc.num) + 2), );
}, $finally_$2, )), ), "\n", lcoc_transpile.spaces((1 + (ind$1 as dc.num)), ), "}", ));
}else{
$if_$6=null;
}
return (lcoc_core.str.$_invoke_more$10("(() {\n", arg$5, "try {\n", arg$4, "\n", arg$3, "}", arg$2, $if_$6, ["\n", lcoc_transpile.spaces(ind$1, ), "})()", ], ));
}

// END try-expr

// BEGIN unquote-form
dc.dynamic unquote_form(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$1, );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=(lcoc_core.$EQ_.$_invoke$2("quote", (lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), )), ));
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
return lcoc_core.second(form$1, );
}
return form$1;
}

// END unquote-form

// BEGIN unsupported
dc.dynamic unsupported(dc.dynamic what$1, dc.dynamic form$1, ){
throw dc.Exception((lcoc_core.str.$_invoke$4("cljd2dart: ", what$1, " is not supported yet: ", (lcoc_core.pr_str.$_invoke$1(form$1, )), )), );
}

// END unsupported
