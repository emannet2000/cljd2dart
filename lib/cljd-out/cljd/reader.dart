// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "reader.dart" as lcoc_reader;
import "core.dart" as lcoc_core;
import "dart:io" as d_io;
import "dart:async" as da;
import "dart:collection" as d_collection;
import "dart:convert" as d_convert;

// BEGIN *gensym-env*
dc.dynamic $STAR_gensym_env$STAR_$root=null;
dc.dynamic get $STAR_gensym_env$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.reader", "*gensym-env*", )), $STAR_gensym_env$STAR_$root, ) as dc.dynamic);
set $STAR_gensym_env$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.reader", "*gensym-env*", )), v, );

// END *gensym-env*

// BEGIN *resolver*
dc.dynamic $STAR_resolver$STAR_$root=null;
dc.dynamic get $STAR_resolver$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.reader", "*resolver*", )), $STAR_resolver$STAR_$root, ) as dc.dynamic);
set $STAR_resolver$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.reader", "*resolver*", )), v, );

// END *resolver*

// BEGIN ->CljDecoder
dc.dynamic $_$GT_CljDecoder(dc.dynamic init_state$BANG_$1, ){
return lcoc_reader.CljDecoder(init_state$BANG_$1, );
}

// END ->CljDecoder

// BEGIN ->ReaderState
dc.dynamic $_$GT_ReaderState(dc.dynamic stack$1, dc.dynamic q$1, ){
return lcoc_reader.ReaderState((stack$1 as dc.List), (q$1 as d_collection.Queue), );
}

// END ->ReaderState

// BEGIN CljDecoder
class CljDecoder extends d_convert.Converter<dc.String, dc.Object?> {
final init_state$BANG_;

const CljDecoder(this.init_state$BANG_, ):super();

dc.Object? convert(dc.String s$1, ){
final lcoc_reader.ReaderState doto$7921_$AUTO_$1=lcoc_reader.ReaderState(<dc.dynamic>[], d_collection.Queue(), );
if((init_state$BANG_ is dc.Function)){
((init_state$BANG_ as dc.Function)(doto$7921_$AUTO_$1, ));
}else if((init_state$BANG_ is lcoc_core.IFn$iface)){
((init_state$BANG_ as lcoc_core.IFn$iface).$_invoke$1(doto$7921_$AUTO_$1, ));
}else{
(lcoc_core.IFn.extensions(init_state$BANG_, ).$_invoke$1(init_state$BANG_, doto$7921_$AUTO_$1, ));
}
final lcoc_reader.ReaderState state$1=doto$7921_$AUTO_$1;
final dc.dynamic from$1=lcoc_reader.resume$BANG_(state$1, s$1, 0, s$1.length, );
if((0 > (from$1 as dc.num))){
(lcoc_reader.eof$BANG_(state$1, ));
}else{
}
return state$1.q.first;
}

dc.Sink<dc.String> startChunkedConversion(dc.Sink<dc.Object?> out$1, ){
final lcoc_reader.ReaderState doto$7921_$AUTO_$2=lcoc_reader.ReaderState(<dc.dynamic>[], d_collection.Queue(), );
if((init_state$BANG_ is dc.Function)){
((init_state$BANG_ as dc.Function)(doto$7921_$AUTO_$2, ));
}else if((init_state$BANG_ is lcoc_core.IFn$iface)){
((init_state$BANG_ as lcoc_core.IFn$iface).$_invoke$1(doto$7921_$AUTO_$2, ));
}else{
(lcoc_core.IFn.extensions(init_state$BANG_, ).$_invoke$1(init_state$BANG_, doto$7921_$AUTO_$2, ));
}
final lcoc_reader.ReaderState state$2=doto$7921_$AUTO_$2;
final d_collection.Queue q$1=state$2.q;
dc.Null drain$BANG_$1(){
do {
if(q$1.isNotEmpty){
(out$1.add((q$1.removeFirst()), ));
continue;
}
return null;
} while(true);
}
return lcoc_reader.reify_CljDecoder_odt782$1(null, drain$BANG_$1, init_state$BANG_, out$1, state$2, );
}
}

// END CljDecoder

// BEGIN DOUBLE-REGEXP
dc.dynamic DOUBLE_REGEXP$v1=dc.RegExp("([-+]?[0-9]+([.][0-9]*)?([eE][-+]?[0-9]+)?)(M)?\$", );

// END DOUBLE-REGEXP

// BEGIN INT-REGEXP
dc.dynamic INT_REGEXP$v1=dc.RegExp("([-+]?)(?:(0)|([1-9][0-9]*)|0[xX]([0-9A-Fa-f]+)|0([0-7]+)|([1-9][0-9]?)[rR]([0-9A-Za-z]+)|0[0-9]+)(N)?\$", );

// END INT-REGEXP

// BEGIN IResolver
dc.dynamic IResolver=const lcoc_reader.IResolver$iprot();

// END IResolver

// BEGIN IResolver$ext
abstract class IResolver$ext extends dc.Object {

dc.dynamic currentNS$0(dc.dynamic resolver$1, );

dc.dynamic resolveClass$1(dc.dynamic resolver$2, dc.dynamic sym$4, );

dc.dynamic resolveAlias$1(dc.dynamic resolver$3, dc.dynamic sym$5, );

dc.dynamic resolveVar$1(dc.dynamic resolver$4, dc.dynamic sym$6, );
}

// END IResolver$ext

// BEGIN IResolver$iface
abstract class IResolver$iface extends dc.Object {

dc.dynamic currentNS$0();

dc.dynamic resolveClass$1(dc.dynamic sym$1, );

dc.dynamic resolveAlias$1(dc.dynamic sym$2, );

dc.dynamic resolveVar$1(dc.dynamic sym$3, );
}

// END IResolver$iface

// BEGIN IResolver$iprot
class IResolver$iprot extends dc.Object implements lcoc_core.IProtocol {

const IResolver$iprot():super();

dc.dynamic satisfies(dc.dynamic x$1, ){
final dc.bool or$6824_$AUTO_$1=(x$1 is lcoc_reader.IResolver$iface);
if(or$6824_$AUTO_$1){
return or$6824_$AUTO_$1;
}
return false;
}

dc.dynamic extensions(dc.dynamic x$2, ){
throw dc.Exception((("No extension of protocol IResolver found for type " + (x$2.runtimeType.toString())) + "."), );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END IResolver$iprot

// BEGIN ReaderState
class ReaderState extends dc.Object {
final dc.List stack;
final d_collection.Queue q;

const ReaderState(this.stack, this.q, ):super();
}

// END ReaderState

// BEGIN SPACE-REGEXP
dc.dynamic SPACE_REGEXP$v1=dc.RegExp("[\\s,]*", );

// END SPACE-REGEXP

// BEGIN STRING-ESC-REGEXP
dc.dynamic STRING_ESC_REGEXP$v1=dc.RegExp("\\\\(?:u([0-9a-fA-F]{0,4})|([0-7]{1,3})|(.))", );

// END STRING-ESC-REGEXP

// BEGIN SYMBOL-REGEXP
dc.dynamic SYMBOL_REGEXP$v1=dc.RegExp("(?:([:]{2})|([:]))?(?:([^0-9/:].*)/)?(/|[^0-9/][^/]*)\$", );

// END SYMBOL-REGEXP

// BEGIN currentNS
dc.dynamic currentNS(dc.dynamic resolver$5, ){
if((resolver$5 is lcoc_reader.IResolver$iface)){
return ((resolver$5 as lcoc_reader.IResolver$iface).currentNS$0());
}
return ((lcoc_reader.IResolver.extensions(resolver$5, ) as lcoc_reader.IResolver$ext).currentNS$0(resolver$5, ));
}

// END currentNS

// BEGIN discard
dc.dynamic discard(dc.dynamic p$9369_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9369_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.do_discard, ));
return (lcoc_reader.do_discard.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END discard

// BEGIN dispatch
dc.dynamic dispatch(dc.dynamic state$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.int cu$1=((s$1 as dc.String).codeUnitAt((from$1 as dc.int), ));
late final dc.dynamic some$6955_$AUTO_$1;
if((cu$1 < 128)){
some$6955_$AUTO_$1=((lcoc_reader.macros$v1 as dc.List)[cu$1]);
}else{
some$6955_$AUTO_$1=null;
}
if((null == some$6955_$AUTO_$1)){
final void $UNDERSCORE_$1=((state$1 as lcoc_reader.ReaderState).stack.add(lcoc_reader.post_interpret_token$v1, ));
final dc.dynamic from$2=lcoc_reader.read_token((state$1 as lcoc_reader.ReaderState), (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), );
if((0 > (from$2 as dc.num))){
return from$2;
}
final lcoc_reader.ReaderState arg$3=(state$1 as lcoc_reader.ReaderState);
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((lcoc_reader.post_interpret_token$v1 is dc.Function)){
return (lcoc_reader.post_interpret_token$v1 as dc.Function)(arg$3, arg$2, from$2, arg$1, );
}
if((lcoc_reader.post_interpret_token$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.post_interpret_token$v1 as lcoc_core.IFn$iface).$_invoke$4(arg$3, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.post_interpret_token$v1, ).$_invoke$4(lcoc_reader.post_interpret_token$v1, arg$3, arg$2, from$2, arg$1, ));
}
final lcoc_reader.ReaderState arg$7=(state$1 as lcoc_reader.ReaderState);
final dc.String arg$6=(s$1 as dc.String);
final dc.int arg$5=(1 + (from$1 as dc.int));
final dc.int arg$4=(to$1 as dc.int);
if((some$6955_$AUTO_$1 is dc.Function)){
return (some$6955_$AUTO_$1 as dc.Function)(arg$7, arg$6, arg$5, arg$4, );
}
if((some$6955_$AUTO_$1 is lcoc_core.IFn$iface)){
return ((some$6955_$AUTO_$1 as lcoc_core.IFn$iface).$_invoke$4(arg$7, arg$6, arg$5, arg$4, ));
}
return (lcoc_core.IFn.extensions(some$6955_$AUTO_$1, ).$_invoke$4(some$6955_$AUTO_$1, arg$7, arg$6, arg$5, arg$4, ));
}

// END dispatch

// BEGIN dispatch-macros
dc.dynamic dispatch_macros$v1=(){
final dc.List<dc.dynamic> doto$7921_$AUTO_$1=(dc.List.filled(128, null, ));
final dc.Function v$7638_$AUTO_$1=lcoc_reader.discard;
(doto$7921_$AUTO_$1[lcoc_core.int("_", )]=v$7638_$AUTO_$1);
final dc.Function v$7638_$AUTO_$2=lcoc_reader.read_fn;
(doto$7921_$AUTO_$1[lcoc_core.int("(", )]=v$7638_$AUTO_$2);
final dc.dynamic v$7638_$AUTO_$3=lcoc_reader.mk_read_coll("}", lcoc_core.$set_, );
(doto$7921_$AUTO_$1[lcoc_core.int("{", )]=v$7638_$AUTO_$3);
final dc.Function v$7638_$AUTO_$4=lcoc_reader.read_regexp;
(doto$7921_$AUTO_$1[lcoc_core.int("\"", )]=v$7638_$AUTO_$4);
final dc.dynamic v$7638_$AUTO_$5=lcoc_reader.mk_read_wrapped((lcoc_core.symbol.$_invoke$2(null, "var", )), );
(doto$7921_$AUTO_$1[lcoc_core.int("'", )]=v$7638_$AUTO_$5);
final dc.Function v$7638_$AUTO_$6=lcoc_reader.read_namespaced_map;
(doto$7921_$AUTO_$1[lcoc_core.int(":", )]=v$7638_$AUTO_$6);
final dc.Function v$7638_$AUTO_$7=lcoc_reader.read_symbolic_value;
(doto$7921_$AUTO_$1[lcoc_core.int("#", )]=v$7638_$AUTO_$7);
return doto$7921_$AUTO_$1;
}();

// END dispatch-macros

// BEGIN do-discard
lcoc_core.IFn$iface do_discard=lcoc_reader.ifn_do_discard_M__18695hm$1(null, );

// END do-discard

// BEGIN do-maybe-read
lcoc_core.IFn$iface do_maybe_read=lcoc_reader.ifn_do_maybe_read_M__18695hm$1(null, );

// END do-maybe-read

// BEGIN do-namespace
dc.dynamic do_namespace(dc.dynamic m$1, dc.dynamic ns$1, ){
return lcoc_core.persistent$BANG_(lcoc_core.reduce_kv((dc.dynamic tm$1, dc.dynamic k$1, dc.dynamic v$1, ){
late final dc.dynamic some$6955_$AUTO_$1;
if(lcoc_core.keyword$QMARK_(k$1, )){
late final dc.String? test$6746_$AUTO_$1;
if((k$1 is lcoc_core.INamed$iface)){
test$6746_$AUTO_$1=(((k$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
test$6746_$AUTO_$1=(((lcoc_core.INamed.extensions(k$1, ) as lcoc_core.INamed$ext).$_namespace$0(k$1, )) as dc.String?);
}
late final dc.int hash$1;
if((test$6746_$AUTO_$1 is lcoc_core.IHash$iface)){
hash$1=(((test$6746_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(test$6746_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(test$6746_$AUTO_$1, )) as dc.int);
}
switch(hash$1){
case 0:
if((lcoc_core.$EQ_.$_invoke$2(null, test$6746_$AUTO_$1, ))){
some$6955_$AUTO_$1=(lcoc_core.keyword.$_invoke$2(ns$1, lcoc_core.name(k$1, ), ));
}else{
continue _default$1;
}
break;
case 1380573395:
if((lcoc_core.$EQ_.$_invoke$2("_", test$6746_$AUTO_$1, ))){
some$6955_$AUTO_$1=(lcoc_core.keyword.$_invoke$1(lcoc_core.name(k$1, ), ));
}else{
continue _default$1;
}
break;
_default$1: default:
some$6955_$AUTO_$1=null;
}
}else if(lcoc_core.symbol$QMARK_(k$1, )){
late final dc.String? test$6746_$AUTO_$2;
if((k$1 is lcoc_core.INamed$iface)){
test$6746_$AUTO_$2=(((k$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
test$6746_$AUTO_$2=(((lcoc_core.INamed.extensions(k$1, ) as lcoc_core.INamed$ext).$_namespace$0(k$1, )) as dc.String?);
}
late final dc.int hash$2;
if((test$6746_$AUTO_$2 is lcoc_core.IHash$iface)){
hash$2=(((test$6746_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$2=(((lcoc_core.IHash.extensions(test$6746_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(test$6746_$AUTO_$2, )) as dc.int);
}
switch(hash$2){
case 0:
if((lcoc_core.$EQ_.$_invoke$2(null, test$6746_$AUTO_$2, ))){
some$6955_$AUTO_$1=(lcoc_core.symbol.$_invoke$2(ns$1, lcoc_core.name(k$1, ), ));
}else{
continue _default$2;
}
break;
case 1380573395:
if((lcoc_core.$EQ_.$_invoke$2("_", test$6746_$AUTO_$2, ))){
some$6955_$AUTO_$1=(lcoc_core.symbol.$_invoke$1(lcoc_core.name(k$1, ), ));
}else{
continue _default$2;
}
break;
_default$2: default:
some$6955_$AUTO_$1=null;
}
}else{
some$6955_$AUTO_$1=null;
}
if((null == some$6955_$AUTO_$1)){
return tm$1;
}
return (lcoc_core.assoc$BANG_.$_invoke$3((lcoc_core.dissoc$BANG_.$_invoke$2(tm$1, k$1, )), some$6955_$AUTO_$1, v$1, ));
}, lcoc_core.transient(m$1, ), m$1, ), );
}

// END do-namespace

// BEGIN do-pop-binding
lcoc_core.IFn$iface do_pop_binding=lcoc_reader.ifn_do_pop_binding_M__18695hm$1(null, );

// END do-pop-binding

// BEGIN do-read
lcoc_core.IFn$iface do_read=lcoc_reader.ifn_do_read_M__18695hm$1(null, );

// END do-read

// BEGIN do-read-comment
lcoc_core.IFn$iface do_read_comment=lcoc_reader.ifn_do_read_comment_M__18695hm$1(null, );

// END do-read-comment

// BEGIN do-read-ctor
lcoc_core.IFn$iface do_read_ctor=lcoc_reader.ifn_do_read_ctor_M__18695hm$1(null, );

// END do-read-ctor

// BEGIN do-read-dispatch-macro
lcoc_core.IFn$iface do_read_dispatch_macro=lcoc_reader.ifn_do_read_dispatch_macro_M__18695hm$1(null, );

// END do-read-dispatch-macro

// BEGIN do-read-meta
lcoc_core.IFn$iface do_read_meta=lcoc_reader.ifn_do_read_meta_M__18695hm$1(null, );

// END do-read-meta

// BEGIN do-read-namespaced-map
lcoc_core.IFn$iface do_read_namespaced_map=lcoc_reader.ifn_do_read_namespaced_map_M__18695hm$1(null, );

// END do-read-namespaced-map

// BEGIN do-read-raw-string
lcoc_core.IFn$iface do_read_raw_string=lcoc_reader.ifn_do_read_raw_string_M__18695hm$1(null, );

// END do-read-raw-string

// BEGIN do-read-token
lcoc_core.IFn$iface do_read_token=lcoc_reader.ifn_do_read_token_M__18695hm$1(null, );

// END do-read-token

// BEGIN do-read-unquote
lcoc_core.IFn$iface do_read_unquote=lcoc_reader.ifn_do_read_unquote_M__18695hm$1(null, );

// END do-read-unquote

// BEGIN eof!
dc.dynamic eof$BANG_(dc.dynamic p$9275_$1, ){
final lcoc_reader.ReaderState state$1=(p$9275_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
do {
if(stack$1.isNotEmpty){
final dc.dynamic f$1=stack$1.last;
if((f$1 is dc.Function)){
((f$1 as dc.Function)(state$1, ));
}else if((f$1 is lcoc_core.IFn$iface)){
((f$1 as lcoc_core.IFn$iface).$_invoke$1(state$1, ));
}else{
(lcoc_core.IFn.extensions(f$1, ).$_invoke$1(f$1, state$1, ));
}
continue;
}
return null;
} while(true);
}

// END eof!

// BEGIN get-binding
dc.dynamic get_binding(dc.dynamic stack$1, dc.dynamic k$1, ){
final dc.int i$1=(1 + ((stack$1 as dc.List).lastIndexOf(k$1, )));
if((0 < i$1)){
return ((stack$1 as dc.List)[i$1]);
}
return null;
}

// END get-binding

// BEGIN ifn_do_discard_M__18695hm$1
class ifn_do_discard_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_discard_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_discard_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9366_$1, ){
final lcoc_reader.ReaderState state$1=(p$9366_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
if((0 > ((lcoc_reader.do_discard.$_invoke$4(state$1, "", 0, 0, )) as dc.num))){
throw dc.Exception("EOF while reading a discarded form.", );
}
return null;
}

dc.dynamic $_invoke$4(dc.dynamic p$9367_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9367_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$1=state$2.q;
final dc.dynamic from$3=lcoc_reader.read(state$2, s$2, from$2, to$2, );
if((0 > (from$3 as dc.num))){
return from$3;
}
final dc.dynamic $UNDERSCORE_$1=(q$1.removeFirst());
(stack$2.removeLast());
return from$3;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_discard_M__18695hm$1

// BEGIN ifn_do_maybe_read_M__18695hm$1
class ifn_do_maybe_read_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_maybe_read_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_maybe_read_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9285_$1, ){
final lcoc_reader.ReaderState state$1=(p$9285_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
final d_collection.Queue q$1=state$1.q;
return (stack$1.removeLast());
}

dc.dynamic $_invoke$4(dc.dynamic p$9286_$2, dc.dynamic s$3, dc.dynamic from$5, dc.dynamic to$3, ){
dc.dynamic p$9286_$1=p$9286_$2;
dc.dynamic s$1=s$3;
dc.dynamic from$1=from$5;
dc.dynamic to$1=to$3;
do {
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9286_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$2=state$2.q;
if(q$2.isNotEmpty){
(stack$2.removeLast());
return from$2;
}
final dc.dynamic from$3=lcoc_reader.skip_space(s$2, from$2, to$2, );
if((0 > (from$3 as dc.num))){
return from$3;
}
if(((from$3 as dc.num) < to$2)){
final dc.dynamic from$4=lcoc_reader.dispatch(state$2, s$2, from$3, to$2, );
if((0 > (from$4 as dc.num))){
return from$4;
}
p$9286_$1=state$2;
s$1=s$2;
from$1=from$4;
to$1=to$2;
continue;
}
return -1;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_maybe_read_M__18695hm$1

// BEGIN ifn_do_pop_binding_M__18695hm$1
class ifn_do_pop_binding_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_pop_binding_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_pop_binding_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9321_$1, ){
final lcoc_reader.ReaderState state$1=(p$9321_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
final dc.int setval$1=(stack$1.length - 3);
stack$1.length=setval$1;
return setval$1;
}

dc.dynamic $_invoke$4(dc.dynamic p$9322_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9322_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
stack$2.length=(stack$2.length - 3);
return from$2;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_pop_binding_M__18695hm$1

// BEGIN ifn_do_read_M__18695hm$1
class ifn_do_read_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9281_$1, ){
final lcoc_reader.ReaderState state$1=(p$9281_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
final d_collection.Queue q$1=state$1.q;
if(q$1.isEmpty){
throw dc.Exception("EOF while reading", );
}else{
}
return (stack$1.removeLast());
}

dc.dynamic $_invoke$4(dc.dynamic p$9282_$2, dc.dynamic s$3, dc.dynamic from$5, dc.dynamic to$3, ){
dc.dynamic p$9282_$1=p$9282_$2;
dc.dynamic s$1=s$3;
dc.dynamic from$1=from$5;
dc.dynamic to$1=to$3;
do {
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9282_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$2=state$2.q;
if(q$2.isNotEmpty){
(stack$2.removeLast());
return from$2;
}
final dc.dynamic from$3=lcoc_reader.skip_space(s$2, from$2, to$2, );
if((0 > (from$3 as dc.num))){
return from$3;
}
if(((from$3 as dc.num) < to$2)){
final dc.dynamic from$4=lcoc_reader.dispatch(state$2, s$2, from$3, to$2, );
if((0 > (from$4 as dc.num))){
return from$4;
}
p$9282_$1=state$2;
s$1=s$2;
from$1=from$4;
to$1=to$2;
continue;
}
return -1;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_M__18695hm$1

// BEGIN ifn_do_read_comment_M__18695hm$1
class ifn_do_read_comment_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_comment_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_comment_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9370_$1, ){
final lcoc_reader.ReaderState map$9373_$1=(p$9370_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=map$9373_$1.stack;
return (stack$1.removeLast());
}

dc.dynamic $_invoke$4(dc.dynamic p$9371_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState map$9374_$1=(p$9371_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=map$9374_$1.stack;
dc.dynamic from$3=from$2;
do {
if(((from$3 as dc.num) < to$2)){
final dc.int cu$1=(s$2.codeUnitAt((from$3 as dc.int), ));
if((10 == cu$1)){
(stack$2.removeLast());
return (1 + (from$3 as dc.num));
}
from$3=(1 + (from$3 as dc.num));
continue;
}
return -1;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_comment_M__18695hm$1

// BEGIN ifn_do_read_ctor_M__18695hm$1
class ifn_do_read_ctor_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_ctor_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_ctor_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9377_$1, ){
final lcoc_reader.ReaderState state$1=(p$9377_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
throw dc.Exception("EOF while reading a tagged literal.", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9378_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9378_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$1=state$2.q;
final dc.int n_2$1=(stack$2.length - 2);
dc.dynamic from$3=from$2;
do {
final dc.dynamic some$6955_$AUTO_$1=(stack$2[n_2$1]);
if((null == some$6955_$AUTO_$1)){
final dc.dynamic from$4=lcoc_reader.read(state$2, s$2, from$3, to$2, );
if((0 > (from$4 as dc.num))){
return from$4;
}
final dc.dynamic x$1=(q$1.removeFirst());
late final dc.bool $if_$1;
if(lcoc_core.symbol$QMARK_(x$1, )){
$if_$1=false;
}else{
$if_$1=true;
}
late final dc.dynamic data_reader$1;
if($if_$1){
throw dc.Exception("Reader tag must be a symbol", );
}else if((lcoc_core.name(x$1, ).contains(".", ))){
throw dc.Exception("Reader tag name can't contain a dot (reserved for compatibility and future use).", );
}else{
late final dc.dynamic or$6824_$AUTO_$1;
if((lcoc_core.$STAR_data_readers$STAR_ is dc.Function)){
or$6824_$AUTO_$1=(lcoc_core.$STAR_data_readers$STAR_ as dc.Function)(x$1, );
}else if((lcoc_core.$STAR_data_readers$STAR_ is lcoc_core.IFn$iface)){
or$6824_$AUTO_$1=((lcoc_core.$STAR_data_readers$STAR_ as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}else{
or$6824_$AUTO_$1=(lcoc_core.IFn.extensions(lcoc_core.$STAR_data_readers$STAR_, ).$_invoke$1(lcoc_core.$STAR_data_readers$STAR_, x$1, ));
}
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
data_reader$1=or$6824_$AUTO_$1;
}else{
late final dc.dynamic or$6824_$AUTO_$2;
if((lcoc_core.default_data_readers is dc.Function)){
or$6824_$AUTO_$2=(lcoc_core.default_data_readers as dc.Function)(x$1, );
}else if((lcoc_core.default_data_readers is lcoc_core.IFn$iface)){
or$6824_$AUTO_$2=((lcoc_core.default_data_readers as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}else{
or$6824_$AUTO_$2=(lcoc_core.IFn.extensions(lcoc_core.default_data_readers, ).$_invoke$1(lcoc_core.default_data_readers, x$1, ));
}
if(((false != or$6824_$AUTO_$2) && (null != or$6824_$AUTO_$2))){
data_reader$1=or$6824_$AUTO_$2;
}else{
final dc.dynamic some$6955_$AUTO_$2=lcoc_core.$STAR_default_data_reader_fn$STAR_;
late final dc.dynamic Function(dc.dynamic, )? or$6824_$AUTO_$3;
if((null == some$6955_$AUTO_$2)){
or$6824_$AUTO_$3=null;
}else{
or$6824_$AUTO_$3=(dc.dynamic p1$9376_$SHARP_$1, ){
if((some$6955_$AUTO_$2 is dc.Function)){
return (some$6955_$AUTO_$2 as dc.Function)(x$1, p1$9376_$SHARP_$1, );
}
if((some$6955_$AUTO_$2 is lcoc_core.IFn$iface)){
return ((some$6955_$AUTO_$2 as lcoc_core.IFn$iface).$_invoke$2(x$1, p1$9376_$SHARP_$1, ));
}
return (lcoc_core.IFn.extensions(some$6955_$AUTO_$2, ).$_invoke$2(some$6955_$AUTO_$2, x$1, p1$9376_$SHARP_$1, ));
};
}
if((null != or$6824_$AUTO_$3)){
data_reader$1=or$6824_$AUTO_$3;
}else{
throw (lcoc_core.str.$_invoke$2("No reader function for tag ", x$1, ));
}
}
}
}
(stack$2[n_2$1]=data_reader$1);
from$3=from$4;
continue;
}
final dc.dynamic from$5=lcoc_reader.read(state$2, s$2, from$3, to$2, );
if((0 > (from$5 as dc.num))){
return from$5;
}
final dc.dynamic data$1=(q$1.removeFirst());
stack$2.length=n_2$1;
late final dc.dynamic $if_$2;
if((some$6955_$AUTO_$1 is dc.Function)){
$if_$2=(some$6955_$AUTO_$1 as dc.Function)(data$1, );
}else if((some$6955_$AUTO_$1 is lcoc_core.IFn$iface)){
$if_$2=((some$6955_$AUTO_$1 as lcoc_core.IFn$iface).$_invoke$1(data$1, ));
}else{
$if_$2=(lcoc_core.IFn.extensions(some$6955_$AUTO_$1, ).$_invoke$1(some$6955_$AUTO_$1, data$1, ));
}
(q$1.addFirst($if_$2, ));
return from$5;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_ctor_M__18695hm$1

// BEGIN ifn_do_read_dispatch_macro_M__18695hm$1
class ifn_do_read_dispatch_macro_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_dispatch_macro_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_dispatch_macro_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic state$1, ){
final lcoc_reader.ReaderState state$2=(state$1 as lcoc_reader.ReaderState);
throw dc.Exception("EOF encoutered after a #.", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9381_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$3=(p$9381_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$3.q;
final dc.List stack$1=state$3.stack;
if((from$2 < to$2)){
final dc.int cu$1=(s$2.codeUnitAt(from$2, ));
(stack$1.removeLast());
late final dc.dynamic some$6955_$AUTO_$1;
if((cu$1 < 128)){
some$6955_$AUTO_$1=((lcoc_reader.dispatch_macros$v1 as dc.List)[cu$1]);
}else{
some$6955_$AUTO_$1=null;
}
if((null == some$6955_$AUTO_$1)){
return lcoc_reader.read_ctor(state$3, s$2, from$2, to$2, );
}
final dc.int arg$1=(1 + from$2);
if((some$6955_$AUTO_$1 is dc.Function)){
return (some$6955_$AUTO_$1 as dc.Function)(state$3, s$2, arg$1, to$2, );
}
if((some$6955_$AUTO_$1 is lcoc_core.IFn$iface)){
return ((some$6955_$AUTO_$1 as lcoc_core.IFn$iface).$_invoke$4(state$3, s$2, arg$1, to$2, ));
}
return (lcoc_core.IFn.extensions(some$6955_$AUTO_$1, ).$_invoke$4(some$6955_$AUTO_$1, state$3, s$2, arg$1, to$2, ));
}
return null;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_dispatch_macro_M__18695hm$1

// BEGIN ifn_do_read_meta_M__18695hm$1
class ifn_do_read_meta_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_meta_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_meta_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9313_$1, ){
final lcoc_reader.ReaderState state$1=(p$9313_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
if((0 > ((lcoc_reader.do_read_meta.$_invoke$4(state$1, "", 0, 0, )) as dc.num))){
throw dc.Exception("EOF while reading a value with metadata.", );
}
return null;
}

dc.dynamic $_invoke$4(dc.dynamic p$9314_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9314_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$1=state$2.q;
final dc.int n_2$1=(stack$2.length - 2);
dc.dynamic from$3=from$2;
do {
final dc.dynamic from$4=lcoc_reader.read(state$2, s$2, from$3, to$2, );
if((0 > (from$4 as dc.num))){
return from$4;
}
final dc.dynamic x$1=(q$1.removeFirst());
final dc.dynamic some$6955_$AUTO_$1=(stack$2[n_2$1]);
if((null == some$6955_$AUTO_$1)){
late final dc.dynamic m$1;
if(lcoc_core.map$QMARK_(x$1, )){
m$1=x$1;
}else if(lcoc_core.keyword$QMARK_(x$1, )){
final lcoc_core.BitmapNode node$8024_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
late final dc.int cast$1;
if((x$1 is lcoc_core.IHash$iface)){
cast$1=(((x$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(x$1, ) as lcoc_core.IHash$ext).$_hash$0(x$1, )) as dc.int);
}
final lcoc_core.BitmapNode $1=(node$8024_$AUTO_$1.inode_assoc_transient(0, cast$1, x$1, true, ));
m$1=lcoc_core.PersistentHashMap(null, $1, -1, );
}else{
final dc.bool or$6824_$AUTO_$1=lcoc_core.symbol$QMARK_(x$1, );
late final dc.bool $if_$1;
if(or$6824_$AUTO_$1){
$if_$1=or$6824_$AUTO_$1;
}else{
$if_$1=(x$1 is dc.String);
}
if($if_$1){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "tag", 2780644040, ), ));
(fl$1[1]=x$1);
m$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 256, 256, fl$1, ), -1, );
}else{
throw dc.Exception((lcoc_core.str.$_invoke$2("Invalid value as metadata: ", (lcoc_core.pr_str.$_invoke$1(x$1, )), )), );
}
}
(stack$2[n_2$1]=m$1);
from$3=from$4;
continue;
}
stack$2.length=n_2$1;
(q$1.addFirst(lcoc_core.with_meta(x$1, some$6955_$AUTO_$1, ), ));
return from$4;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_meta_M__18695hm$1

// BEGIN ifn_do_read_namespaced_map_M__18695hm$1
class ifn_do_read_namespaced_map_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_namespaced_map_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_namespaced_map_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9317_$1, ){
final lcoc_reader.ReaderState state$1=(p$9317_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
throw dc.Exception("EOF while reading a namespaced map.", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9318_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9318_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$1=state$2.q;
final dc.int n_2$1=(stack$2.length - 2);
dc.dynamic from$3=from$2;
do {
final dc.dynamic some$6955_$AUTO_$1=(stack$2[n_2$1]);
if((null == some$6955_$AUTO_$1)){
final dc.dynamic from$4=lcoc_reader.read_token(state$2, s$2, from$3, to$2, );
if((0 > (from$4 as dc.num))){
return from$4;
}
final dc.dynamic x$1=(q$1.removeFirst());
late final dc.String ns$1;
switch(x$1){
case "::":
final dc.dynamic resolver9215$1=lcoc_reader.$STAR_resolver$STAR_;
late final dc.dynamic $if_$1;
if((resolver9215$1 is lcoc_reader.IResolver$iface)){
$if_$1=((resolver9215$1 as lcoc_reader.IResolver$iface).currentNS$0());
}else{
$if_$1=((lcoc_reader.IResolver.extensions(resolver9215$1, ) as lcoc_reader.IResolver$ext).currentNS$0(resolver9215$1, ));
}
ns$1=lcoc_core.name($if_$1, );
break;
default:
final dc.dynamic k$1=lcoc_reader.interpret_token(x$1, );
if(lcoc_core.simple_keyword$QMARK_(k$1, )){
}else{
throw dc.Exception("Only simple keywords can be used as namespaces in namespaced maps.", );
}
ns$1=lcoc_core.name(k$1, );
}
(stack$2[n_2$1]=ns$1);
from$3=from$4;
continue;
}
final dc.dynamic from$5=lcoc_reader.read(state$2, s$2, from$3, to$2, );
if((0 > (from$5 as dc.num))){
return from$5;
}
final dc.dynamic m$1=(q$1.removeFirst());
stack$2.length=n_2$1;
if(lcoc_core.map$QMARK_(m$1, )){
}else{
throw dc.Exception("Only maps can be namespaced.", );
}
(q$1.addFirst(lcoc_reader.do_namespace(m$1, some$6955_$AUTO_$1, ), ));
return from$5;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_namespaced_map_M__18695hm$1

// BEGIN ifn_do_read_raw_string_M__18695hm$1
class ifn_do_read_raw_string_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_raw_string_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_raw_string_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic state$1, ){
final lcoc_reader.ReaderState state$2=(state$1 as lcoc_reader.ReaderState);
throw dc.Exception("EOF encoutered, string not properly terminated.", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9300_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$3=(p$9300_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$3.q;
final dc.List stack$1=state$3.stack;
final dc.int n_3$1=(stack$1.length - 3);
final dc.StringBuffer sb$1=((stack$1[(1 + n_3$1)]) as dc.StringBuffer);
dc.dynamic from$3=from$2;
dc.bool esc$1=((stack$1[n_3$1]) as dc.bool);
do {
if(((from$3 as dc.num) < to$2)){
final dc.int cu$1=(s$2.codeUnitAt((from$3 as dc.int), ));
late final dc.bool and$6942_$AUTO_$1;
if(esc$1){
and$6942_$AUTO_$1=false;
}else{
and$6942_$AUTO_$1=true;
}
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=(34 == cu$1);
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
stack$1.length=n_3$1;
(q$1.add((sb$1.toString()), ));
return (1 + (from$3 as dc.num));
}
(sb$1.writeCharCode(cu$1, ));
from$3=(1 + (from$3 as dc.num));
late final dc.bool and$6942_$AUTO_$2;
if(esc$1){
and$6942_$AUTO_$2=false;
}else{
and$6942_$AUTO_$2=true;
}
if(and$6942_$AUTO_$2){
esc$1=(92 == cu$1);
}else{
esc$1=and$6942_$AUTO_$2;
}
continue;
}
final dc.bool v$7638_$AUTO_$1=esc$1;
(stack$1[n_3$1]=v$7638_$AUTO_$1);
return -1;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_raw_string_M__18695hm$1

// BEGIN ifn_do_read_token_M__18695hm$1
class ifn_do_read_token_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_token_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_token_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9276_$1, ){
final lcoc_reader.ReaderState state$1=(p$9276_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
final dc.int n_2$1=(stack$1.length - 2);
final dc.StringBuffer sb$1=((stack$1[n_2$1]) as dc.StringBuffer);
stack$1.length=n_2$1;
return (state$1.q.add((sb$1.toString()), ));
}

dc.dynamic $_invoke$4(dc.dynamic p$9277_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9277_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$2=state$2.q;
final dc.List stack$2=state$2.stack;
final dc.int n_2$2=(stack$2.length - 2);
final dc.StringBuffer sb$2=((stack$2[n_2$2]) as dc.StringBuffer);
dc.dynamic from$3=from$2;
do {
if(((from$3 as dc.num) < to$2)){
if(lcoc_reader.terminating$QMARK_(s$2, from$3, )){
stack$2.length=n_2$2;
(state$2.q.add((sb$2.toString()), ));
return from$3;
}
final dc.int cu$1=(s$2.codeUnitAt((from$3 as dc.int), ));
(sb$2.writeCharCode(cu$1, ));
from$3=(1 + (from$3 as dc.num));
continue;
}
return -1;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_token_M__18695hm$1

// BEGIN ifn_do_read_unquote_M__18695hm$1
class ifn_do_read_unquote_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_read_unquote_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.ifn_do_read_unquote_M__18695hm$1(m$2646_$AUTO_$1, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9330_$1, ){
final lcoc_reader.ReaderState state$1=(p$9330_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
throw dc.Exception("EOF after a ~", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9331_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9331_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
if((from$2 < to$2)){
(stack$2.removeLast());
if((lcoc_core.$EQ_.$_invoke$2("@", (s$2[from$2]), ))){
final dc.int arg$1=(1 + from$2);
if((lcoc_reader.read_splicing_unquote$v1 is dc.Function)){
return (lcoc_reader.read_splicing_unquote$v1 as dc.Function)(state$2, s$2, arg$1, to$2, );
}
if((lcoc_reader.read_splicing_unquote$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.read_splicing_unquote$v1 as lcoc_core.IFn$iface).$_invoke$4(state$2, s$2, arg$1, to$2, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.read_splicing_unquote$v1, ).$_invoke$4(lcoc_reader.read_splicing_unquote$v1, state$2, s$2, arg$1, to$2, ));
}
if((lcoc_reader.read_non_splicing_unquote$v1 is dc.Function)){
return (lcoc_reader.read_non_splicing_unquote$v1 as dc.Function)(state$2, s$2, from$2, to$2, );
}
if((lcoc_reader.read_non_splicing_unquote$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.read_non_splicing_unquote$v1 as lcoc_core.IFn$iface).$_invoke$4(state$2, s$2, from$2, to$2, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.read_non_splicing_unquote$v1, ).$_invoke$4(lcoc_reader.read_non_splicing_unquote$v1, state$2, s$2, from$2, to$2, ));
}
return -1;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_read_unquote_M__18695hm$1

// BEGIN interpret-token
dc.dynamic interpret_token(dc.dynamic token$1, ){
switch((token$1 as dc.String)){
case "nil":
return null;
case "true":
return true;
case "false":
return false;
default:
final dc.Match? some$6955_$AUTO_$1=(lcoc_reader.INT_REGEXP$v1.matchAsPrefix((token$1 as dc.String), ));
if((null == some$6955_$AUTO_$1)){
final dc.Match? some$6955_$AUTO_$2=(lcoc_reader.DOUBLE_REGEXP$v1.matchAsPrefix((token$1 as dc.String), ));
if((null == some$6955_$AUTO_$2)){
final dc.Match? some$6955_$AUTO_$3=(lcoc_reader.SYMBOL_REGEXP$v1.matchAsPrefix((token$1 as dc.String), ));
if((null == some$6955_$AUTO_$3)){
throw dc.FormatException((lcoc_core.str.$_invoke$2("Invalid token: ", (token$1 as dc.String), )), );
}
final dc.Match m$1=(some$6955_$AUTO_$3 as dc.Match);
final dc.String? g1$1=(m$1.group(1, ));
final dc.String? g2$1=(m$1.group(2, ));
final dc.String? g3$1=(m$1.group(3, ));
final dc.String? g4$1=(m$1.group(4, ));
late final dc.Object? or$6824_$AUTO_$1;
if((null != g3$1)){
or$6824_$AUTO_$1=((g3$1 as dc.String).endsWith(":/", ));
}else{
or$6824_$AUTO_$1=g3$1;
}
late final dc.Object? $if_$1;
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
$if_$1=or$6824_$AUTO_$1;
}else{
final dc.bool or$6824_$AUTO_$2=((g4$1 as dc.String).endsWith(":", ));
if(or$6824_$AUTO_$2){
$if_$1=or$6824_$AUTO_$2;
}else{
$if_$1=(lcoc_core.not$EQ_.$_invoke$2(-1, ((token$1 as dc.String).indexOf("::", 1, )), ));
}
}
if(((false != $if_$1) && (null != $if_$1))){
(dc.FormatException((lcoc_core.str.$_invoke$2("Invalid token: ", (token$1 as dc.String), )), ));
}else{
}
if((null != g1$1)){
late final dc.dynamic some$6955_$AUTO_$4;
if((null != g3$1)){
final dc.dynamic resolver9226$1=lcoc_reader.$STAR_resolver$STAR_;
final dc.dynamic sym9227$1=(lcoc_core.symbol.$_invoke$2(null, g3$1, ));
if((resolver9226$1 is lcoc_reader.IResolver$iface)){
some$6955_$AUTO_$4=((resolver9226$1 as lcoc_reader.IResolver$iface).resolveAlias$1(sym9227$1, ));
}else{
some$6955_$AUTO_$4=((lcoc_reader.IResolver.extensions(resolver9226$1, ) as lcoc_reader.IResolver$ext).resolveAlias$1(resolver9226$1, sym9227$1, ));
}
}else{
final dc.dynamic resolver9215$1=lcoc_reader.$STAR_resolver$STAR_;
if((resolver9215$1 is lcoc_reader.IResolver$iface)){
some$6955_$AUTO_$4=((resolver9215$1 as lcoc_reader.IResolver$iface).currentNS$0());
}else{
some$6955_$AUTO_$4=((lcoc_reader.IResolver.extensions(resolver9215$1, ) as lcoc_reader.IResolver$ext).currentNS$0(resolver9215$1, ));
}
}
if((null == some$6955_$AUTO_$4)){
return dc.FormatException((lcoc_core.str.$_invoke$2("Invalid token: ", (token$1 as dc.String), )), );
}
return (lcoc_core.keyword.$_invoke$2(lcoc_core.name(some$6955_$AUTO_$4, ), g4$1, ));
}
if((null != g2$1)){
return (lcoc_core.keyword.$_invoke$2(g3$1, g4$1, ));
}
return (lcoc_core.symbol.$_invoke$2(g3$1, g4$1, ));
}
if((null != ((some$6955_$AUTO_$2 as dc.Match).group(4, )))){
throw const dc.FormatException("BigDecimal not supported yet.", );
}
return (dc.double.parse((token$1 as dc.String), ));
}
late final dc.Function parse$1;
if((null != (((some$6955_$AUTO_$1 as dc.Match).group(8, )) as dc.dynamic?))){
if(("-" == ((some$6955_$AUTO_$1 as dc.Match).group(1, )))){
parse$1=(dc.dynamic s$1, dc.dynamic radix$1, ){
return (((- ((dc.BigInt.parse((s$1 as dc.String), radix: (radix$1 as dc.int), )) as dc.num))) as dc.BigInt);
};
}else{
parse$1=(dc.dynamic s$2, dc.dynamic radix$2, ){
return (dc.BigInt.parse((s$2 as dc.String), radix: (radix$2 as dc.int), ));
};
}
}else if(("-" == ((some$6955_$AUTO_$1 as dc.Match).group(1, )))){
parse$1=(dc.dynamic s$3, dc.dynamic radix$3, ){
return ((- (dc.int.parse((s$3 as dc.String), radix: (radix$3 as dc.int), ))));
};
}else{
parse$1=(dc.dynamic s$4, dc.dynamic radix$4, ){
return (dc.int.parse((s$4 as dc.String), radix: (radix$4 as dc.int), ));
};
}
late final dc.bool $if_$2;
if((null == ((some$6955_$AUTO_$1 as dc.Match).group(2, )))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
return 0;
}
late final dc.bool $if_$3;
if((null == ((some$6955_$AUTO_$1 as dc.Match).group(3, )))){
$if_$3=false;
}else{
$if_$3=true;
}
if($if_$3){
return parse$1(((some$6955_$AUTO_$1 as dc.Match).group(3, )), 10, );
}
late final dc.bool $if_$4;
if((null == ((some$6955_$AUTO_$1 as dc.Match).group(4, )))){
$if_$4=false;
}else{
$if_$4=true;
}
if($if_$4){
return parse$1(((some$6955_$AUTO_$1 as dc.Match).group(4, )), 16, );
}
late final dc.bool $if_$5;
if((null == ((some$6955_$AUTO_$1 as dc.Match).group(5, )))){
$if_$5=false;
}else{
$if_$5=true;
}
if($if_$5){
return parse$1(((some$6955_$AUTO_$1 as dc.Match).group(5, )), 8, );
}
late final dc.bool $if_$6;
if((null == ((some$6955_$AUTO_$1 as dc.Match).group(7, )))){
$if_$6=false;
}else{
$if_$6=true;
}
if($if_$6){
return parse$1(((some$6955_$AUTO_$1 as dc.Match).group(7, )), (dc.int.parse((((some$6955_$AUTO_$1 as dc.Match).group(6, )) as dc.String), )), );
}
throw dc.FormatException((lcoc_core.str.$_invoke$3("Invalid number: ", (token$1 as dc.String), ".", )), );
}
}

// END interpret-token

// BEGIN macros
dc.dynamic macros$v1=(){
final dc.List<dc.dynamic> doto$7921_$AUTO_$1=(dc.List.filled(128, null, ));
final dc.Function v$7638_$AUTO_$1=lcoc_reader.read_stringlit;
(doto$7921_$AUTO_$1[lcoc_core.int("\"", )]=v$7638_$AUTO_$1);
final dc.Function v$7638_$AUTO_$2=lcoc_reader.read_char;
(doto$7921_$AUTO_$1[lcoc_core.int("\\", )]=v$7638_$AUTO_$2);
final dc.Function v$7638_$AUTO_$3=lcoc_reader.read_unquote;
(doto$7921_$AUTO_$1[lcoc_core.int("~", )]=v$7638_$AUTO_$3);
final dc.Function v$7638_$AUTO_$4=lcoc_reader.read_syntax_quote;
(doto$7921_$AUTO_$1[lcoc_core.int("`", )]=v$7638_$AUTO_$4);
final dc.Function v$7638_$AUTO_$5=lcoc_reader.read_anon_arg;
(doto$7921_$AUTO_$1[lcoc_core.int("%", )]=v$7638_$AUTO_$5);
final dc.dynamic v$7638_$AUTO_$6=lcoc_reader.mk_read_coll(")", lcoc_core.$_list_lit, );
(doto$7921_$AUTO_$1[lcoc_core.int("(", )]=v$7638_$AUTO_$6);
final dc.dynamic v$7638_$AUTO_$7=lcoc_reader.unexpected("closing parenthesis", );
(doto$7921_$AUTO_$1[lcoc_core.int(")", )]=v$7638_$AUTO_$7);
final dc.dynamic v$7638_$AUTO_$8=lcoc_reader.mk_read_coll("}", (dc.dynamic kvs$1, ){
late final dc.int cast$1;
if((kvs$1 is lcoc_core.ICounted$iface)){
cast$1=(((kvs$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(kvs$1, ) as lcoc_core.ICounted$ext).$_count$0(kvs$1, )) as dc.int);
}
final dc.bool $1=cast$1.isEven;
if($1){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, kvs$1, ));
}
throw const dc.FormatException("Map literal must contain an even number of forms", );
}, );
(doto$7921_$AUTO_$1[lcoc_core.int("{", )]=v$7638_$AUTO_$8);
final dc.dynamic v$7638_$AUTO_$9=lcoc_reader.unexpected("closing curly brace", );
(doto$7921_$AUTO_$1[lcoc_core.int("}", )]=v$7638_$AUTO_$9);
final dc.dynamic v$7638_$AUTO_$10=lcoc_reader.mk_read_coll("]", lcoc_core.vec, );
(doto$7921_$AUTO_$1[lcoc_core.int("[", )]=v$7638_$AUTO_$10);
final dc.dynamic v$7638_$AUTO_$11=lcoc_reader.unexpected("closing square bracket", );
(doto$7921_$AUTO_$1[lcoc_core.int("]", )]=v$7638_$AUTO_$11);
final dc.Function v$7638_$AUTO_$12=lcoc_reader.read_meta;
(doto$7921_$AUTO_$1[lcoc_core.int("^", )]=v$7638_$AUTO_$12);
final dc.dynamic v$7638_$AUTO_$13=lcoc_reader.mk_read_wrapped((lcoc_core.symbol.$_invoke$2("cljd.core", "deref", )), );
(doto$7921_$AUTO_$1[lcoc_core.int("@", )]=v$7638_$AUTO_$13);
final dc.dynamic v$7638_$AUTO_$14=lcoc_reader.mk_read_wrapped((lcoc_core.symbol.$_invoke$2(null, "quote", )), );
(doto$7921_$AUTO_$1[lcoc_core.int("'", )]=v$7638_$AUTO_$14);
final dc.Function v$7638_$AUTO_$15=lcoc_reader.read_dispatch_macro;
(doto$7921_$AUTO_$1[lcoc_core.int("#", )]=v$7638_$AUTO_$15);
final dc.Function v$7638_$AUTO_$16=lcoc_reader.read_comment;
(doto$7921_$AUTO_$1[lcoc_core.int(";", )]=v$7638_$AUTO_$16);
return doto$7921_$AUTO_$1;
}();

// END macros

// BEGIN maybe-read
dc.dynamic maybe_read(dc.dynamic p$9288_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9288_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
if(state$1.q.isNotEmpty){
return (from$1 as dc.int);
}
(stack$1.add(lcoc_reader.do_maybe_read, ));
return (lcoc_reader.do_maybe_read.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END maybe-read

// BEGIN mk-read-coll
dc.dynamic mk_read_coll(dc.dynamic closing_delim$1, dc.dynamic mk_coll$1, ){
final dc.int closing_cu$1=lcoc_core.int(closing_delim$1, );
final lcoc_reader.reify_mk_read_coll_M__18695hm$1 f$1=lcoc_reader.reify_mk_read_coll_M__18695hm$1(null, closing_cu$1, mk_coll$1, );
final lcoc_reader.reify_mk_read_coll_M__18695hm$1 do_read_coll$1=f$1;
final lcoc_reader.reify_mk_read_coll_M__18695hm$2 f$2=lcoc_reader.reify_mk_read_coll_M__18695hm$2(null, do_read_coll$1, );
return f$2;
}

// END mk-read-coll

// BEGIN mk-read-wrapped
dc.dynamic mk_read_wrapped(dc.dynamic sym$1, ){
final dc.dynamic post$1=lcoc_reader.post_read((dc.dynamic p1$9328_$SHARP_$1, ){
return (lcoc_core.list.$_invoke$2(sym$1, p1$9328_$SHARP_$1, ));
}, );
return (dc.dynamic p$9329_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9329_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(post$1, ));
final dc.dynamic from$2=lcoc_reader.read(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), );
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((post$1 is dc.Function)){
return (post$1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((post$1 is lcoc_core.IFn$iface)){
return ((post$1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(post$1, ).$_invoke$4(post$1, state$1, arg$2, from$2, arg$1, ));
};
}

// END mk-read-wrapped

// BEGIN post-char-token
dc.dynamic post_char_token$v1=lcoc_reader.post_read((dc.dynamic token$1, ){
if((lcoc_core.$EQ_.$_invoke$2(1, (token$1 as dc.String).length, ))){
return (token$1 as dc.String);
}
switch((token$1 as dc.String)){
case "newline":
return "\n";
case "space":
return " ";
case "tab":
return "\t";
case "backspace":
return "\b";
case "formfeed":
return "\f";
case "return":
return "\r";
default:
if(((token$1 as dc.String).startsWith("u", ))){
final dc.int cu$1=(dc.int.parse(((token$1 as dc.String).substring(1, )), radix: 16, ));
final dc.bool or$6824_$AUTO_$1=(lcoc_core.not$EQ_.$_invoke$2(5, (token$1 as dc.String).length, ));
late final dc.bool $if_$1;
if(or$6824_$AUTO_$1){
$if_$1=or$6824_$AUTO_$1;
}else{
final dc.bool or$6824_$AUTO_$2=(0 > cu$1);
if(or$6824_$AUTO_$2){
$if_$1=or$6824_$AUTO_$2;
}else{
$if_$1=((55296 <= cu$1) && (cu$1 <= 57343));
}
}
if($if_$1){
throw dc.Exception((lcoc_core.str.$_invoke$2("Invalid character constant: \\", (token$1 as dc.String), )), );
}else{
}
return (dc.String.fromCharCode(cu$1, ));
}
if(((token$1 as dc.String).startsWith("o", ))){
final dc.int cu$2=(dc.int.parse(((token$1 as dc.String).substring(1, )), radix: 8, ));
if((4 < (token$1 as dc.String).length)){
throw dc.Exception((lcoc_core.str.$_invoke$2("Invalid octal escape sequence length: ", ((token$1 as dc.String).length - 1), )), );
}else{
}
final dc.bool $1=((0 <= cu$2) && (cu$2 <= 255));
if($1){
}else{
throw dc.Exception("Octal escape sequence must be in range [0, 377].", );
}
return (dc.String.fromCharCode(cu$2, ));
}
throw dc.Exception((lcoc_core.str.$_invoke$2("Unsupported character: \\", (token$1 as dc.String), )), );
}
}, );

// END post-char-token

// BEGIN post-interpret-token
dc.dynamic post_interpret_token$v1=lcoc_reader.post_read(lcoc_reader.interpret_token, );

// END post-interpret-token

// BEGIN post-read
dc.dynamic post_read(dc.dynamic f$1, ){
final dc.dynamic self$1=lcoc_reader.self_post_read_M__18695hm$1(null, f$1, );
return self$1;
}

// END post-read

// BEGIN post-regexp
dc.dynamic post_regexp$v1=lcoc_reader.post_read((dc.dynamic p1$9303_$SHARP_$1, ){
return dc.RegExp((p1$9303_$SHARP_$1 as dc.String), );
}, );

// END post-regexp

// BEGIN post-stringlit
dc.dynamic post_stringlit$v1=lcoc_reader.post_read(lcoc_reader.unesc, );

// END post-stringlit

// BEGIN post-symbolic-value
dc.dynamic post_symbolic_value$v1=lcoc_reader.post_read((dc.dynamic x$1, ){
late final dc.int hash$1;
if((x$1 is lcoc_core.IHash$iface)){
hash$1=(((x$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(x$1, ) as lcoc_core.IHash$ext).$_hash$0(x$1, )) as dc.int);
}
switch(hash$1){
case 647172781:
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "Inf", )), x$1, ))){
return dc.double.infinity;
}
continue _default$1;
case 2171723607:
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "-Inf", )), x$1, ))){
return dc.double.negativeInfinity;
}
continue _default$1;
case 3888143625:
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "NaN", )), x$1, ))){
return dc.double.nan;
}
continue _default$1;
_default$1: default:
if(lcoc_core.symbol$QMARK_(x$1, )){
throw dc.Exception((lcoc_core.str.$_invoke$2("Unknown symbolic value: ##", x$1, )), );
}
throw dc.Exception((lcoc_core.str.$_invoke$2("Unknown token: ##", x$1, )), );
}
}, );

// END post-symbolic-value

// BEGIN post-syntax-quote
dc.dynamic post_syntax_quote$v1=lcoc_reader.post_read((dc.dynamic form$1, ){
dc.dynamic maybe_f$1(){
return lcoc_reader.syntax_quote(form$1, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$8024_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$8025_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.reader", "*gensym-env*", ));
late final dc.int cast$1;
if((k$8025_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$8025_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$8025_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$8025_$AUTO_$1, )) as dc.int);
}
final lcoc_core.BitmapNode $1=(node$8024_$AUTO_$1.inode_assoc_transient(0, cast$1, k$8025_$AUTO_$1, lcoc_core.Volatile(lcoc_core.$_EMPTY_MAP, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $1, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $1, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $1, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );

// END post-syntax-quote

// BEGIN push-binding
dc.dynamic push_binding(dc.dynamic stack$1, dc.dynamic k$1, dc.dynamic v$1, ){
final dc.List doto$7921_$AUTO_$1=(stack$1 as dc.List);
(doto$7921_$AUTO_$1.add(const lcoc_core.Keyword(null, "args-env", 2282805623, ), ));
(doto$7921_$AUTO_$1.add(v$1, ));
(doto$7921_$AUTO_$1.add(lcoc_reader.do_pop_binding, ));
return doto$7921_$AUTO_$1;
}

// END push-binding

// BEGIN read
dc.dynamic read(dc.dynamic p$9284_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9284_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
if(state$1.q.isNotEmpty){
return (from$1 as dc.int);
}
(stack$1.add(lcoc_reader.do_read, ));
return (lcoc_reader.do_read.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END read

// BEGIN read-anon-arg
dc.dynamic read_anon_arg(dc.dynamic p$9324_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9324_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
final dc.dynamic once$1=lcoc_reader.get_binding(stack$1, const lcoc_core.Keyword(null, "args-env", 2282805623, ), );
late final dc.Map? args_env$1;
if((null != once$1)){
args_env$1=(once$1 as dc.Map);
}else{
args_env$1=null;
}
late final dc.Function $if_$3;
if((null == args_env$1)){
$if_$3=lcoc_reader.interpret_token;
}else{
$if_$3=(dc.dynamic token$1, ){
late final dc.int? n$3;
switch(token$1){
case "%":
n$3=1;
break;
case "%&":
n$3=-1;
break;
default:
final dc.dynamic n$1=lcoc_reader.interpret_token(token$1, );
late final dc.int? or$6824_$AUTO_$2;
if((n$1 is dc.num)){
final dc.int n$2=((n$1 as dc.num).toInt());
final dc.bool or$6824_$AUTO_$1=(0 < n$2);
late final dc.bool $if_$1;
if(or$6824_$AUTO_$1){
$if_$1=or$6824_$AUTO_$1;
}else{
$if_$1=(lcoc_core.$EQ_.$_invoke$2(-1, n$2, ));
}
if($if_$1){
or$6824_$AUTO_$2=n$2;
}else{
or$6824_$AUTO_$2=null;
}
}else{
or$6824_$AUTO_$2=null;
}
if((null != or$6824_$AUTO_$2)){
n$3=or$6824_$AUTO_$2;
}else{
throw const dc.FormatException("arg literal must be %, %& or %integer", );
}
}
final dc.dynamic? or$6824_$AUTO_$3=((args_env$1 as dc.Map)[n$3]);
if(((false != or$6824_$AUTO_$3) && (null != or$6824_$AUTO_$3))){
return or$6824_$AUTO_$3;
}
late final dc.String $if_$2;
if((0 < (n$3 as dc.int))){
$if_$2=(lcoc_core.str.$_invoke$3("p", n$3, "__", ));
}else{
$if_$2="rest__";
}
late final dc.dynamic sym$1;
if((lcoc_core.gensym is dc.Function)){
sym$1=(lcoc_core.gensym as dc.Function)($if_$2, );
}else if((lcoc_core.gensym is lcoc_core.IFn$iface)){
sym$1=((lcoc_core.gensym as lcoc_core.IFn$iface).$_invoke$1($if_$2, ));
}else{
sym$1=(lcoc_core.IFn.extensions(lcoc_core.gensym, ).$_invoke$1(lcoc_core.gensym, $if_$2, ));
}
((args_env$1 as dc.Map)[n$3]=sym$1);
return sym$1;
};
}
final dc.dynamic post$1=lcoc_reader.post_read($if_$3, );
final void $UNDERSCORE_$1=(stack$1.add(post$1, ));
final dc.dynamic from$2=lcoc_reader.read_token(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), );
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((post$1 is dc.Function)){
return (post$1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((post$1 is lcoc_core.IFn$iface)){
return ((post$1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(post$1, ).$_invoke$4(post$1, state$1, arg$2, from$2, arg$1, ));
}

// END read-anon-arg

// BEGIN read-char
dc.dynamic read_char(dc.dynamic p$9312_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9312_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.post_char_token$v1, ));
final dc.dynamic from$2=lcoc_reader.read_token(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), );
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((lcoc_reader.post_char_token$v1 is dc.Function)){
return (lcoc_reader.post_char_token$v1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((lcoc_reader.post_char_token$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.post_char_token$v1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.post_char_token$v1, ).$_invoke$4(lcoc_reader.post_char_token$v1, state$1, arg$2, from$2, arg$1, ));
}

// END read-char

// BEGIN read-comment
dc.dynamic read_comment(dc.dynamic p$9375_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9375_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.do_read_comment, ));
return (lcoc_reader.do_read_comment.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END read-comment

// BEGIN read-ctor
dc.dynamic read_ctor(dc.dynamic p$9380_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9380_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(null, ));
(stack$1.add(lcoc_reader.do_read_ctor, ));
return (lcoc_reader.do_read_ctor.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END read-ctor

// BEGIN read-dispatch-macro
dc.dynamic read_dispatch_macro(dc.dynamic p$9383_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9383_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.do_read_dispatch_macro, ));
return (lcoc_reader.do_read_dispatch_macro.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END read-dispatch-macro

// BEGIN read-fn
dc.dynamic read_fn(dc.dynamic p$9325_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9325_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
final dc.Map args_env$1=dc.Map();
final dc.dynamic $UNDERSCORE_$1=lcoc_reader.push_binding(stack$1, const lcoc_core.Keyword(null, "args-env", 2282805623, ), args_env$1, );
final dc.dynamic read$1=lcoc_reader.mk_read_coll(")", (dc.dynamic items$1, ){
final dc.dynamic coll7134$1=lcoc_core.keys(args_env$1, );
final lcoc_core.IFn$iface f7135$1=lcoc_core.max;
late final dc.dynamic n$1;
if((coll7134$1 is lcoc_core.IReduce$iface)){
n$1=((coll7134$1 as lcoc_core.IReduce$iface).$_reduce$2(f7135$1, 0, ));
}else{
n$1=((lcoc_core.IReduce.extensions(coll7134$1, ) as lcoc_core.IReduce$ext).$_reduce$2(coll7134$1, f7135$1, 0, ));
}
late final dc.dynamic rest_arg$1;
if((args_env$1 is lcoc_core.ILookup$iface)){
rest_arg$1=((args_env$1 as lcoc_core.ILookup$iface).$_lookup$1(-1, ));
}else{
rest_arg$1=((lcoc_core.ILookup.extensions(args_env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(args_env$1, -1, ));
}
final dc.dynamic cond_$GT_$6983_$AUTO_$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.map.$_invoke$1((dc.dynamic i$1, ){
late final dc.dynamic or$6824_$AUTO_$1;
if((args_env$1 is lcoc_core.ILookup$iface)){
or$6824_$AUTO_$1=((args_env$1 as lcoc_core.ILookup$iface).$_lookup$1(i$1, ));
}else{
or$6824_$AUTO_$1=((lcoc_core.ILookup.extensions(args_env$1, ) as lcoc_core.ILookup$ext).$_lookup$1(args_env$1, i$1, ));
}
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
return or$6824_$AUTO_$1;
}
final dc.String arg$1=(lcoc_core.str.$_invoke$3("p", i$1, "__", ));
if((lcoc_core.gensym is dc.Function)){
return (lcoc_core.gensym as dc.Function)(arg$1, );
}
if((lcoc_core.gensym is lcoc_core.IFn$iface)){
return ((lcoc_core.gensym as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_core.gensym, ).$_invoke$1(lcoc_core.gensym, arg$1, ));
}, )), (lcoc_core.range.$_invoke$2(1, (1 + (n$1 as dc.num)), )), ));
late final dc.dynamic args$1;
if(((false != rest_arg$1) && (null != rest_arg$1))){
args$1=(lcoc_core.conj.$_invoke$3(cond_$GT_$6983_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "&", )), rest_arg$1, ));
}else{
args$1=cond_$GT_$6983_$AUTO_$1;
}
return (lcoc_core.list.$_invoke$3((lcoc_core.symbol.$_invoke$2(null, "fn*", )), args$1, lcoc_core.$_list_lit(items$1, ), ));
}, );
final dc.String arg$4=(s$1 as dc.String);
final dc.int arg$3=(from$1 as dc.int);
final dc.int arg$2=(to$1 as dc.int);
late final dc.dynamic from$2;
if((read$1 is dc.Function)){
from$2=(read$1 as dc.Function)(state$1, arg$4, arg$3, arg$2, );
}else if((read$1 is lcoc_core.IFn$iface)){
from$2=((read$1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$4, arg$3, arg$2, ));
}else{
from$2=(lcoc_core.IFn.extensions(read$1, ).$_invoke$4(read$1, state$1, arg$4, arg$3, arg$2, ));
}
if((0 > (from$2 as dc.num))){
return from$2;
}
return (lcoc_reader.do_pop_binding.$_invoke$4(state$1, (s$1 as dc.String), from$2, (to$1 as dc.int), ));
}

// END read-fn

// BEGIN read-meta
dc.dynamic read_meta(dc.dynamic p$9316_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9316_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(null, ));
(stack$1.add(lcoc_reader.do_read_meta, ));
return (lcoc_reader.do_read_meta.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END read-meta

// BEGIN read-namespaced-map
dc.dynamic read_namespaced_map(dc.dynamic p$9320_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9320_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(null, ));
(stack$1.add(lcoc_reader.do_read_namespaced_map, ));
return (lcoc_reader.do_read_namespaced_map.$_invoke$4(state$1, (s$1 as dc.String), ((from$1 as dc.int) - 1), (to$1 as dc.int), ));
}

// END read-namespaced-map

// BEGIN read-non-splicing-unquote
dc.dynamic read_non_splicing_unquote$v1=lcoc_reader.mk_read_wrapped((lcoc_core.symbol.$_invoke$2("cljd.core", "unquote", )), );

// END read-non-splicing-unquote

// BEGIN read-regexp
dc.dynamic read_regexp(dc.dynamic p$9304_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9304_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.post_regexp$v1, ));
(stack$1.add(false, ));
(stack$1.add(dc.StringBuffer(), ));
(stack$1.add(lcoc_reader.do_read_raw_string, ));
final dc.dynamic from$2=(lcoc_reader.do_read_raw_string.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((lcoc_reader.post_regexp$v1 is dc.Function)){
return (lcoc_reader.post_regexp$v1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((lcoc_reader.post_regexp$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.post_regexp$v1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.post_regexp$v1, ).$_invoke$4(lcoc_reader.post_regexp$v1, state$1, arg$2, from$2, arg$1, ));
}

// END read-regexp

// BEGIN read-splicing-unquote
dc.dynamic read_splicing_unquote$v1=lcoc_reader.mk_read_wrapped((lcoc_core.symbol.$_invoke$2("cljd.core", "unquote-splicing", )), );

// END read-splicing-unquote

// BEGIN read-stream
dc.Stream read_stream(dc.dynamic s$1, ){
late final da.Stream<dc.String> casted$1;
if((s$1 is da.Stream<dc.String>)){
casted$1=(s$1 as da.Stream<dc.String>);
}else{
casted$1=((s$1 as da.Stream).cast<dc.String>());
}
return (lcoc_reader.CljDecoder((dc.dynamic p1$9385_$SHARP_$1, ){
return lcoc_reader.maybe_read(p1$9385_$SHARP_$1, "", 0, 0, );
}, ).bind(casted$1, ));
}

// END read-stream

// BEGIN read-string
dc.dynamic read_string(dc.dynamic s$1, ){
return (lcoc_reader.CljDecoder((dc.dynamic p1$9384_$SHARP_$1, ){
return lcoc_reader.read(p1$9384_$SHARP_$1, "", 0, 0, );
}, ).convert((s$1 as dc.String), ));
}

// END read-string

// BEGIN read-stringlit
dc.dynamic read_stringlit(dc.dynamic p$9302_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9302_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.post_stringlit$v1, ));
(stack$1.add(false, ));
(stack$1.add(dc.StringBuffer(), ));
(stack$1.add(lcoc_reader.do_read_raw_string, ));
final dc.dynamic from$2=(lcoc_reader.do_read_raw_string.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((lcoc_reader.post_stringlit$v1 is dc.Function)){
return (lcoc_reader.post_stringlit$v1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((lcoc_reader.post_stringlit$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.post_stringlit$v1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.post_stringlit$v1, ).$_invoke$4(lcoc_reader.post_stringlit$v1, state$1, arg$2, from$2, arg$1, ));
}

// END read-stringlit

// BEGIN read-symbolic-value
dc.dynamic read_symbolic_value(dc.dynamic p$9305_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9305_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$1.q;
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.post_symbolic_value$v1, ));
(stack$1.add(lcoc_reader.do_read, ));
final dc.dynamic from$2=(lcoc_reader.do_read.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((lcoc_reader.post_symbolic_value$v1 is dc.Function)){
return (lcoc_reader.post_symbolic_value$v1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((lcoc_reader.post_symbolic_value$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.post_symbolic_value$v1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.post_symbolic_value$v1, ).$_invoke$4(lcoc_reader.post_symbolic_value$v1, state$1, arg$2, from$2, arg$1, ));
}

// END read-symbolic-value

// BEGIN read-syntax-quote
dc.dynamic read_syntax_quote(dc.dynamic p$9365_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9365_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.post_syntax_quote$v1, ));
final dc.dynamic from$2=lcoc_reader.read(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), );
if((0 > (from$2 as dc.num))){
return from$2;
}
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((lcoc_reader.post_syntax_quote$v1 is dc.Function)){
return (lcoc_reader.post_syntax_quote$v1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}
if((lcoc_reader.post_syntax_quote$v1 is lcoc_core.IFn$iface)){
return ((lcoc_reader.post_syntax_quote$v1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}
return (lcoc_core.IFn.extensions(lcoc_reader.post_syntax_quote$v1, ).$_invoke$4(lcoc_reader.post_syntax_quote$v1, state$1, arg$2, from$2, arg$1, ));
}

// END read-syntax-quote

// BEGIN read-token
dc.dynamic read_token(dc.dynamic p$9279_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9279_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(dc.StringBuffer(((s$1 as dc.String)[(from$1 as dc.int)]), ), ));
(stack$1.add(lcoc_reader.do_read_token, ));
return (lcoc_reader.do_read_token.$_invoke$4(state$1, (s$1 as dc.String), (1 + (from$1 as dc.int)), (to$1 as dc.int), ));
}

// END read-token

// BEGIN read-unquote
dc.dynamic read_unquote(dc.dynamic p$9333_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9333_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
(stack$1.add(lcoc_reader.do_read_unquote, ));
return (lcoc_reader.do_read_unquote.$_invoke$4(state$1, (s$1 as dc.String), (from$1 as dc.int), (to$1 as dc.int), ));
}

// END read-unquote

// BEGIN reify_CljDecoder_odt782$1
class reify_CljDecoder_odt782$1 extends d_convert.StringConversionSinkBase implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface {
final meta$1;
final dc.Null Function() _0;
final _1;
final dc.Sink<dc.Object?> _2;
final lcoc_reader.ReaderState _3;

reify_CljDecoder_odt782$1(this.meta$1, this._0, this._1, this._2, this._3, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.reify_CljDecoder_odt782$1(m$2646_$AUTO_$1, _0, _1, _2, _3, );
}

void close(){
(lcoc_reader.eof$BANG_(_3, ));
(_0());
return (_2.close());
}

void addSlice(dc.String s$2, dc.int from$2, dc.int to$1, dc.bool is_last$1, ){
dc.dynamic from$3=from$2;
do {
final dc.dynamic from$4=lcoc_reader.resume$BANG_(_3, s$2, from$3, to$1, );
(_0());
late final dc.bool $if_$1;
if((0 > (from$4 as dc.num))){
$if_$1=false;
}else{
$if_$1=true;
}
if($if_$1){
if((_1 is dc.Function)){
((_1 as dc.Function)(_3, ));
}else if((_1 is lcoc_core.IFn$iface)){
((_1 as lcoc_core.IFn$iface).$_invoke$1(_3, ));
}else{
(lcoc_core.IFn.extensions(_1, ).$_invoke$1(_1, _3, ));
}
from$3=from$4;
continue;
}
if(is_last$1){
return (this.close());
}
return null;
} while(true);
}
}

// END reify_CljDecoder_odt782$1

// BEGIN reify_mk_read_coll_M__18695hm$1
class reify_mk_read_coll_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;
final dc.int _0;
final _1;

reify_mk_read_coll_M__18695hm$1(this.meta$1, this._0, this._1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.reify_mk_read_coll_M__18695hm$1(m$2646_$AUTO_$1, _0, _1, );
}

dc.dynamic $_invoke$1(dc.dynamic state$1, ){
final lcoc_reader.ReaderState state$2=(state$1 as lcoc_reader.ReaderState);
throw dc.Exception("EOF while reading", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9289_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$3=(p$9289_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$1=state$3.q;
final dc.List stack$1=state$3.stack;
final dc.int n_2$1=(stack$1.length - 2);
final dc.dynamic castable$1=(stack$1[n_2$1]);
late final dc.List casted$1;
if((null == castable$1)){
casted$1=(dc.List.empty());
}else if((castable$1 is dc.List)){
casted$1=(castable$1 as dc.List);
}else{
casted$1=((castable$1 as dc.List).cast());
}
final dc.List items$1=casted$1;
dc.dynamic from$3=lcoc_reader.skip_space(s$2, from$2, to$2, );
do {
(items$1.addAll(q$1, ));
(q$1.clear());
if((0 > (from$3 as dc.num))){
return from$3;
}
if(((from$3 as dc.num) < to$2)){
if((_0 == (s$2.codeUnitAt((from$3 as dc.int), )))){
stack$1.length=n_2$1;
late final dc.dynamic $if_$1;
if((_1 is dc.Function)){
$if_$1=(_1 as dc.Function)(items$1, );
}else if((_1 is lcoc_core.IFn$iface)){
$if_$1=((_1 as lcoc_core.IFn$iface).$_invoke$1(items$1, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(_1, ).$_invoke$1(_1, items$1, ));
}
(q$1.add($if_$1, ));
return (1 + (from$3 as dc.num));
}
final dc.dynamic from$4=lcoc_reader.read(state$3, s$2, from$3, to$2, );
if((0 > (from$4 as dc.num))){
return from$4;
}
from$3=from$4;
continue;
}
return -1;
} while(true);
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END reify_mk_read_coll_M__18695hm$1

// BEGIN reify_mk_read_coll_M__18695hm$2
class reify_mk_read_coll_M__18695hm$2 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$2;
final lcoc_reader.reify_mk_read_coll_M__18695hm$1 _0;

reify_mk_read_coll_M__18695hm$2(this.meta$2, this._0, ):super();

dc.dynamic $_meta$0(){
return meta$2;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$2, ){
return lcoc_reader.reify_mk_read_coll_M__18695hm$2(m$2646_$AUTO_$2, _0, );
}

dc.dynamic $_invoke$1(dc.dynamic state$4, ){
final lcoc_reader.ReaderState state$5=(state$4 as lcoc_reader.ReaderState);
throw dc.Exception("EOF encoutered, expecting closing delimiter.", );
}

dc.dynamic $_invoke$4(dc.dynamic p$9291_$1, dc.dynamic s$3, dc.dynamic from$5, dc.dynamic to$3, ){
final dc.String s$4=(s$3 as dc.String);
final dc.int from$6=(from$5 as dc.int);
final dc.int to$4=(to$3 as dc.int);
final lcoc_reader.ReaderState state$6=(p$9291_$1 as lcoc_reader.ReaderState);
final d_collection.Queue q$2=state$6.q;
final dc.List stack$2=state$6.stack;
(stack$2.add(<dc.dynamic>[], ));
(stack$2.add(_0, ));
return (_0.$_invoke$4(state$6, s$4, from$6, to$4, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END reify_mk_read_coll_M__18695hm$2

// BEGIN resolveAlias
dc.dynamic resolveAlias(dc.dynamic resolver$7, dc.dynamic sym$8, ){
if((resolver$7 is lcoc_reader.IResolver$iface)){
return ((resolver$7 as lcoc_reader.IResolver$iface).resolveAlias$1(sym$8, ));
}
return ((lcoc_reader.IResolver.extensions(resolver$7, ) as lcoc_reader.IResolver$ext).resolveAlias$1(resolver$7, sym$8, ));
}

// END resolveAlias

// BEGIN resolveClass
dc.dynamic resolveClass(dc.dynamic resolver$6, dc.dynamic sym$7, ){
if((resolver$6 is lcoc_reader.IResolver$iface)){
return ((resolver$6 as lcoc_reader.IResolver$iface).resolveClass$1(sym$7, ));
}
return ((lcoc_reader.IResolver.extensions(resolver$6, ) as lcoc_reader.IResolver$ext).resolveClass$1(resolver$6, sym$7, ));
}

// END resolveClass

// BEGIN resolveVar
dc.dynamic resolveVar(dc.dynamic resolver$8, dc.dynamic sym$9, ){
if((resolver$8 is lcoc_reader.IResolver$iface)){
return ((resolver$8 as lcoc_reader.IResolver$iface).resolveVar$1(sym$9, ));
}
return ((lcoc_reader.IResolver.extensions(resolver$8, ) as lcoc_reader.IResolver$ext).resolveVar$1(resolver$8, sym$9, ));
}

// END resolveVar

// BEGIN resume!
dc.dynamic resume$BANG_(dc.dynamic p$9274_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final lcoc_reader.ReaderState state$1=(p$9274_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
dc.dynamic from$2=(from$1 as dc.int);
do {
final dc.bool or$6824_$AUTO_$1=(0 > (from$2 as dc.num));
late final dc.bool $if_$1;
if(or$6824_$AUTO_$1){
$if_$1=or$6824_$AUTO_$1;
}else{
$if_$1=stack$1.isEmpty;
}
if($if_$1){
return from$2;
}
final dc.dynamic f$1=stack$1.last;
final dc.String arg$2=(s$1 as dc.String);
final dc.int arg$1=(to$1 as dc.int);
if((f$1 is dc.Function)){
from$2=(f$1 as dc.Function)(state$1, arg$2, from$2, arg$1, );
}else if((f$1 is lcoc_core.IFn$iface)){
from$2=((f$1 as lcoc_core.IFn$iface).$_invoke$4(state$1, arg$2, from$2, arg$1, ));
}else{
from$2=(lcoc_core.IFn.extensions(f$1, ).$_invoke$4(f$1, state$1, arg$2, from$2, arg$1, ));
}
continue;
} while(true);
}

// END resume!

// BEGIN self_post_read_M__18695hm$1
class self_post_read_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uXuuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;
final _0;

self_post_read_M__18695hm$1(this.meta$1, this._0, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2646_$AUTO_$1, ){
return lcoc_reader.self_post_read_M__18695hm$1(m$2646_$AUTO_$1, _0, );
}

dc.dynamic $_invoke$1(dc.dynamic p$9326_$1, ){
final lcoc_reader.ReaderState state$1=(p$9326_$1 as lcoc_reader.ReaderState);
final dc.List stack$1=state$1.stack;
return (this.$_invoke$4(state$1, "", 0, 0, ));
}

dc.dynamic $_invoke$4(dc.dynamic p$9327_$1, dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.String s$2=(s$1 as dc.String);
final dc.int from$2=(from$1 as dc.int);
final dc.int to$2=(to$1 as dc.int);
final lcoc_reader.ReaderState state$2=(p$9327_$1 as lcoc_reader.ReaderState);
final dc.List stack$2=state$2.stack;
final d_collection.Queue q$1=state$2.q;
final dc.dynamic x$1=(q$1.removeFirst());
(stack$2.removeLast());
late final dc.dynamic $if_$1;
if((_0 is dc.Function)){
$if_$1=(_0 as dc.Function)(x$1, );
}else if((_0 is lcoc_core.IFn$iface)){
$if_$1=((_0 as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(_0, ).$_invoke$1(_0, x$1, ));
}
(q$1.addFirst($if_$1, ));
return from$2;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END self_post_read_M__18695hm$1

// BEGIN skip-space
dc.dynamic skip_space(dc.dynamic s$1, dc.dynamic from$1, dc.dynamic to$1, ){
final dc.Match? map$9280_$1=(lcoc_reader.SPACE_REGEXP$v1.matchAsPrefix((s$1 as dc.String), (from$1 as dc.int), ));
late final dc.int? end$1;
if((null == map$9280_$1)){
end$1=null;
}else{
end$1=(map$9280_$1 as dc.Match).end;
}
if(((end$1 as dc.int) < (to$1 as dc.int))){
return end$1;
}
return -1;
}

// END skip-space

// BEGIN special-form?
dc.dynamic special_form$QMARK_(dc.dynamic form$1, ){
(lcoc_core.println.$_invoke$1("DEPRECATED, use cljd.core/special-symbol? instead of cljd.reader/special-form?", ));
final dc.dynamic set_item9338$1=(lcoc_core.symbol.$_invoke$2("dart", "is?", ));
final dc.dynamic set_item9342$1=(lcoc_core.symbol.$_invoke$2(null, "loop*", ));
final dc.dynamic set_item9353$1=(lcoc_core.symbol.$_invoke$2("dart", "assert", ));
final dc.dynamic set_item9349$1=(lcoc_core.symbol.$_invoke$2(null, "deftype*", ));
final dc.dynamic set_item9337$1=(lcoc_core.symbol.$_invoke$2(null, "reify*", ));
final dc.dynamic set_item9343$1=(lcoc_core.symbol.$_invoke$2(null, "defprotocol*", ));
final dc.dynamic set_item9360$1=(lcoc_core.symbol.$_invoke$2(null, "throw", ));
final dc.dynamic set_item9362$1=(lcoc_core.symbol.$_invoke$2("dart", "run-zoned", ));
final dc.dynamic set_item9350$1=(lcoc_core.symbol.$_invoke$2(null, "let*", ));
final dc.dynamic set_item9351$1=(lcoc_core.symbol.$_invoke$2(null, "fn*", ));
final dc.dynamic set_item9348$1=(lcoc_core.symbol.$_invoke$2(null, "ns", ));
final dc.dynamic set_item9357$1=(lcoc_core.symbol.$_invoke$2(null, "var", ));
final dc.dynamic set_item9346$1=(lcoc_core.symbol.$_invoke$2(null, "if", ));
final dc.dynamic set_item9352$1=(lcoc_core.symbol.$_invoke$2(null, "recur", ));
final dc.dynamic set_item9358$1=(lcoc_core.symbol.$_invoke$2(null, "quote", ));
final dc.dynamic set_item9361$1=(lcoc_core.symbol.$_invoke$2(null, "def", ));
final dc.dynamic set_item9341$1=(lcoc_core.symbol.$_invoke$2("dart", "await", ));
final dc.dynamic set_item9347$1=(lcoc_core.symbol.$_invoke$2(null, "new", ));
final dc.dynamic set_item9335$1=(lcoc_core.symbol.$_invoke$2(null, "try", ));
final dc.dynamic set_item9356$1=(lcoc_core.symbol.$_invoke$2(null, ".", ));
final dc.dynamic set_item9359$1=(lcoc_core.symbol.$_invoke$2("dart", "async-barrier", ));
final dc.dynamic set_item9345$1=(lcoc_core.symbol.$_invoke$2(null, "defmethod*", ));
final dc.dynamic set_item9339$1=(lcoc_core.symbol.$_invoke$2("dart", "type-like", ));
final dc.dynamic set_item9336$1=(lcoc_core.symbol.$_invoke$2(null, "extend-type-protocol*", ));
final dc.dynamic set_item9344$1=(lcoc_core.symbol.$_invoke$2(null, "do", ));
final dc.dynamic set_item9334$1=(lcoc_core.symbol.$_invoke$2(null, "case*", ));
final dc.dynamic set_item9340$1=(lcoc_core.symbol.$_invoke$2(null, "defmulti*", ));
final dc.dynamic set_item9355$1=(lcoc_core.symbol.$_invoke$2(null, "set!", ));
final dc.dynamic set_item9354$1=(lcoc_core.symbol.$_invoke$2(null, "letfn", ));
final lcoc_core.BitmapNode node$8024_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
late final dc.int cast$1;
if((set_item9338$1 is lcoc_core.IHash$iface)){
cast$1=(((set_item9338$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(set_item9338$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9338$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$2=(node$8024_$AUTO_$1.inode_assoc_transient(0, cast$1, set_item9338$1, set_item9338$1, ));
late final dc.int cast$2;
if((set_item9342$1 is lcoc_core.IHash$iface)){
cast$2=(((set_item9342$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(set_item9342$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9342$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$3=(node$8024_$AUTO_$2.inode_assoc_transient(0, cast$2, set_item9342$1, set_item9342$1, ));
late final dc.int cast$3;
if((set_item9353$1 is lcoc_core.IHash$iface)){
cast$3=(((set_item9353$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(set_item9353$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9353$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$4=(node$8024_$AUTO_$3.inode_assoc_transient(0, cast$3, set_item9353$1, set_item9353$1, ));
late final dc.int cast$4;
if((set_item9349$1 is lcoc_core.IHash$iface)){
cast$4=(((set_item9349$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$4=(((lcoc_core.IHash.extensions(set_item9349$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9349$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$5=(node$8024_$AUTO_$4.inode_assoc_transient(0, cast$4, set_item9349$1, set_item9349$1, ));
late final dc.int cast$5;
if((set_item9337$1 is lcoc_core.IHash$iface)){
cast$5=(((set_item9337$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$5=(((lcoc_core.IHash.extensions(set_item9337$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9337$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$6=(node$8024_$AUTO_$5.inode_assoc_transient(0, cast$5, set_item9337$1, set_item9337$1, ));
late final dc.int cast$6;
if((set_item9343$1 is lcoc_core.IHash$iface)){
cast$6=(((set_item9343$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$6=(((lcoc_core.IHash.extensions(set_item9343$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9343$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$7=(node$8024_$AUTO_$6.inode_assoc_transient(0, cast$6, set_item9343$1, set_item9343$1, ));
late final dc.int cast$7;
if((set_item9360$1 is lcoc_core.IHash$iface)){
cast$7=(((set_item9360$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$7=(((lcoc_core.IHash.extensions(set_item9360$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9360$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$8=(node$8024_$AUTO_$7.inode_assoc_transient(0, cast$7, set_item9360$1, set_item9360$1, ));
late final dc.int cast$8;
if((set_item9362$1 is lcoc_core.IHash$iface)){
cast$8=(((set_item9362$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$8=(((lcoc_core.IHash.extensions(set_item9362$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9362$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$9=(node$8024_$AUTO_$8.inode_assoc_transient(0, cast$8, set_item9362$1, set_item9362$1, ));
late final dc.int cast$9;
if((set_item9350$1 is lcoc_core.IHash$iface)){
cast$9=(((set_item9350$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$9=(((lcoc_core.IHash.extensions(set_item9350$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9350$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$10=(node$8024_$AUTO_$9.inode_assoc_transient(0, cast$9, set_item9350$1, set_item9350$1, ));
late final dc.int cast$10;
if((set_item9351$1 is lcoc_core.IHash$iface)){
cast$10=(((set_item9351$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$10=(((lcoc_core.IHash.extensions(set_item9351$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9351$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$11=(node$8024_$AUTO_$10.inode_assoc_transient(0, cast$10, set_item9351$1, set_item9351$1, ));
late final dc.int cast$11;
if((set_item9348$1 is lcoc_core.IHash$iface)){
cast$11=(((set_item9348$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$11=(((lcoc_core.IHash.extensions(set_item9348$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9348$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$12=(node$8024_$AUTO_$11.inode_assoc_transient(0, cast$11, set_item9348$1, set_item9348$1, ));
late final dc.int cast$12;
if((set_item9357$1 is lcoc_core.IHash$iface)){
cast$12=(((set_item9357$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$12=(((lcoc_core.IHash.extensions(set_item9357$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9357$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$13=(node$8024_$AUTO_$12.inode_assoc_transient(0, cast$12, set_item9357$1, set_item9357$1, ));
late final dc.int cast$13;
if((set_item9346$1 is lcoc_core.IHash$iface)){
cast$13=(((set_item9346$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$13=(((lcoc_core.IHash.extensions(set_item9346$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9346$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$14=(node$8024_$AUTO_$13.inode_assoc_transient(0, cast$13, set_item9346$1, set_item9346$1, ));
late final dc.int cast$14;
if((set_item9352$1 is lcoc_core.IHash$iface)){
cast$14=(((set_item9352$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$14=(((lcoc_core.IHash.extensions(set_item9352$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9352$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$15=(node$8024_$AUTO_$14.inode_assoc_transient(0, cast$14, set_item9352$1, set_item9352$1, ));
late final dc.int cast$15;
if((set_item9358$1 is lcoc_core.IHash$iface)){
cast$15=(((set_item9358$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$15=(((lcoc_core.IHash.extensions(set_item9358$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9358$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$16=(node$8024_$AUTO_$15.inode_assoc_transient(0, cast$15, set_item9358$1, set_item9358$1, ));
late final dc.int cast$16;
if((set_item9361$1 is lcoc_core.IHash$iface)){
cast$16=(((set_item9361$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$16=(((lcoc_core.IHash.extensions(set_item9361$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9361$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$17=(node$8024_$AUTO_$16.inode_assoc_transient(0, cast$16, set_item9361$1, set_item9361$1, ));
late final dc.int cast$17;
if((set_item9341$1 is lcoc_core.IHash$iface)){
cast$17=(((set_item9341$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$17=(((lcoc_core.IHash.extensions(set_item9341$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9341$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$18=(node$8024_$AUTO_$17.inode_assoc_transient(0, cast$17, set_item9341$1, set_item9341$1, ));
late final dc.int cast$18;
if((set_item9347$1 is lcoc_core.IHash$iface)){
cast$18=(((set_item9347$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$18=(((lcoc_core.IHash.extensions(set_item9347$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9347$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$19=(node$8024_$AUTO_$18.inode_assoc_transient(0, cast$18, set_item9347$1, set_item9347$1, ));
late final dc.int cast$19;
if((set_item9335$1 is lcoc_core.IHash$iface)){
cast$19=(((set_item9335$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$19=(((lcoc_core.IHash.extensions(set_item9335$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9335$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$20=(node$8024_$AUTO_$19.inode_assoc_transient(0, cast$19, set_item9335$1, set_item9335$1, ));
late final dc.int cast$20;
if((set_item9356$1 is lcoc_core.IHash$iface)){
cast$20=(((set_item9356$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$20=(((lcoc_core.IHash.extensions(set_item9356$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9356$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$21=(node$8024_$AUTO_$20.inode_assoc_transient(0, cast$20, set_item9356$1, set_item9356$1, ));
late final dc.int cast$21;
if((set_item9359$1 is lcoc_core.IHash$iface)){
cast$21=(((set_item9359$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$21=(((lcoc_core.IHash.extensions(set_item9359$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9359$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$22=(node$8024_$AUTO_$21.inode_assoc_transient(0, cast$21, set_item9359$1, set_item9359$1, ));
late final dc.int cast$22;
if((set_item9345$1 is lcoc_core.IHash$iface)){
cast$22=(((set_item9345$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$22=(((lcoc_core.IHash.extensions(set_item9345$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9345$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$23=(node$8024_$AUTO_$22.inode_assoc_transient(0, cast$22, set_item9345$1, set_item9345$1, ));
late final dc.int cast$23;
if((set_item9339$1 is lcoc_core.IHash$iface)){
cast$23=(((set_item9339$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$23=(((lcoc_core.IHash.extensions(set_item9339$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9339$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$24=(node$8024_$AUTO_$23.inode_assoc_transient(0, cast$23, set_item9339$1, set_item9339$1, ));
late final dc.int cast$24;
if((set_item9336$1 is lcoc_core.IHash$iface)){
cast$24=(((set_item9336$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$24=(((lcoc_core.IHash.extensions(set_item9336$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9336$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$25=(node$8024_$AUTO_$24.inode_assoc_transient(0, cast$24, set_item9336$1, set_item9336$1, ));
late final dc.int cast$25;
if((set_item9344$1 is lcoc_core.IHash$iface)){
cast$25=(((set_item9344$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$25=(((lcoc_core.IHash.extensions(set_item9344$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9344$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$26=(node$8024_$AUTO_$25.inode_assoc_transient(0, cast$25, set_item9344$1, set_item9344$1, ));
late final dc.int cast$26;
if((set_item9334$1 is lcoc_core.IHash$iface)){
cast$26=(((set_item9334$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$26=(((lcoc_core.IHash.extensions(set_item9334$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9334$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$27=(node$8024_$AUTO_$26.inode_assoc_transient(0, cast$26, set_item9334$1, set_item9334$1, ));
late final dc.int cast$27;
if((set_item9340$1 is lcoc_core.IHash$iface)){
cast$27=(((set_item9340$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$27=(((lcoc_core.IHash.extensions(set_item9340$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9340$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$28=(node$8024_$AUTO_$27.inode_assoc_transient(0, cast$27, set_item9340$1, set_item9340$1, ));
late final dc.int cast$28;
if((set_item9355$1 is lcoc_core.IHash$iface)){
cast$28=(((set_item9355$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$28=(((lcoc_core.IHash.extensions(set_item9355$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9355$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$8024_$AUTO_$29=(node$8024_$AUTO_$28.inode_assoc_transient(0, cast$28, set_item9355$1, set_item9355$1, ));
late final dc.int cast$29;
if((set_item9354$1 is lcoc_core.IHash$iface)){
cast$29=(((set_item9354$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$29=(((lcoc_core.IHash.extensions(set_item9354$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9354$1, )) as dc.int);
}
final lcoc_core.BitmapNode $1=(node$8024_$AUTO_$29.inode_assoc_transient(0, cast$29, set_item9354$1, set_item9354$1, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$30=(lcoc_core.PersistentHashMap(null, $1, -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.contains$QMARK_(lcoc_core.PersistentHashSet(null, cast$30, -1, ), form$1, );
}

// END special-form?

// BEGIN sq-expand-list
dc.dynamic sq_expand_list(dc.dynamic s$1, ){
return (lcoc_core.doall.$_invoke$1((lcoc_core.map.$_invoke$2((dc.dynamic p1$9363_$SHARP_$1, ){
final dc.dynamic test$1=lcoc_reader.unquote$QMARK_(p1$9363_$SHARP_$1, );
if(((false != test$1) && (null != test$1))){
return (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "list", )), lcoc_core.second(p1$9363_$SHARP_$1, ), ));
}
final dc.dynamic test$2=lcoc_reader.unquote_splicing$QMARK_(p1$9363_$SHARP_$1, );
if(((false != test$2) && (null != test$2))){
return lcoc_core.second(p1$9363_$SHARP_$1, );
}
return (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "list", )), lcoc_reader.syntax_quote(p1$9363_$SHARP_$1, ), ));
}, s$1, )), ));
}

// END sq-expand-list

// BEGIN syntax-quote
dc.dynamic syntax_quote(dc.dynamic form$1, ){
if(lcoc_core.special_symbol$QMARK_(form$1, )){
return (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "quote", )), form$1, ));
}
if(lcoc_core.symbol$QMARK_(form$1, )){
late final dc.String? nsform$1;
if((form$1 is lcoc_core.INamed$iface)){
nsform$1=(((form$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
nsform$1=(((lcoc_core.INamed.extensions(form$1, ) as lcoc_core.INamed$ext).$_namespace$0(form$1, )) as dc.String?);
}
final dc.String nameform$1=lcoc_core.name(form$1, );
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2(null, "quote", ));
final dc.bool and$6942_$AUTO_$1=(null == nsform$1);
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=(nameform$1.endsWith("#", ));
}else{
$if_$1=and$6942_$AUTO_$1;
}
late final dc.dynamic $if_$8;
if($if_$1){
if((null == lcoc_reader.$STAR_gensym_env$STAR_)){
throw const dc.FormatException("Gensym literal not in syntax-quote", );
}else{
late final dc.dynamic or$6824_$AUTO_$1;
if((lcoc_reader.$STAR_gensym_env$STAR_ is dc.Function)){
or$6824_$AUTO_$1=(lcoc_reader.$STAR_gensym_env$STAR_ as dc.Function)(form$1, );
}else if((lcoc_reader.$STAR_gensym_env$STAR_ is lcoc_core.IFn$iface)){
or$6824_$AUTO_$1=((lcoc_reader.$STAR_gensym_env$STAR_ as lcoc_core.IFn$iface).$_invoke$1(form$1, ));
}else{
or$6824_$AUTO_$1=(lcoc_core.IFn.extensions(lcoc_reader.$STAR_gensym_env$STAR_, ).$_invoke$1(lcoc_reader.$STAR_gensym_env$STAR_, form$1, ));
}
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
$if_$8=or$6824_$AUTO_$1;
}else{
final dc.String arg$1=(lcoc_core.str.$_invoke$2((nameform$1.substring(0, (nameform$1.length - 1), )), "__", ));
late final dc.dynamic $if_$2;
if((lcoc_core.gensym is dc.Function)){
$if_$2=(lcoc_core.gensym as dc.Function)(arg$1, );
}else if((lcoc_core.gensym is lcoc_core.IFn$iface)){
$if_$2=((lcoc_core.gensym as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}else{
$if_$2=(lcoc_core.IFn.extensions(lcoc_core.gensym, ).$_invoke$1(lcoc_core.gensym, arg$1, ));
}
final dc.String $1=(lcoc_core.str.$_invoke$2($if_$2, "__auto__", ));
final dc.dynamic gs$1=(lcoc_core.symbol.$_invoke$2(null, $1, ));
final dc.dynamic coll7202$1=lcoc_reader.$STAR_gensym_env$STAR_;
if((coll7202$1 is lcoc_core.IAssociative$iface)){
lcoc_reader.$STAR_gensym_env$STAR_=((coll7202$1 as lcoc_core.IAssociative$iface).$_assoc$2(form$1, gs$1, ));
}else{
lcoc_reader.$STAR_gensym_env$STAR_=((lcoc_core.IAssociative.extensions(coll7202$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7202$1, form$1, gs$1, ));
}
$if_$8=gs$1;
}
}
}else{
final dc.bool and$6942_$AUTO_$2=(null == nsform$1);
late final dc.bool $if_$3;
if(and$6942_$AUTO_$2){
$if_$3=(nameform$1.endsWith(".", ));
}else{
$if_$3=and$6942_$AUTO_$2;
}
if($if_$3){
final dc.dynamic resolver9220$1=lcoc_reader.$STAR_resolver$STAR_;
final dc.dynamic sym9221$1=(lcoc_core.symbol.$_invoke$2(null, (nameform$1.substring(0, (nameform$1.length - 1), )), ));
late final dc.dynamic rc$1;
if((resolver9220$1 is lcoc_reader.IResolver$iface)){
rc$1=((resolver9220$1 as lcoc_reader.IResolver$iface).resolveClass$1(sym9221$1, ));
}else{
rc$1=((lcoc_reader.IResolver.extensions(resolver9220$1, ) as lcoc_reader.IResolver$ext).resolveClass$1(resolver9220$1, sym9221$1, ));
}
late final dc.String? cast$1;
if((rc$1 is lcoc_core.INamed$iface)){
cast$1=(((rc$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$1=(((lcoc_core.INamed.extensions(rc$1, ) as lcoc_core.INamed$ext).$_namespace$0(rc$1, )) as dc.String?);
}
$if_$8=(lcoc_core.symbol.$_invoke$2(cast$1, (lcoc_core.str.$_invoke$2(lcoc_core.name(rc$1, ), ".", )), ));
}else{
final dc.bool and$6942_$AUTO_$3=(null == nsform$1);
late final dc.bool $if_$4;
if(and$6942_$AUTO_$3){
$if_$4=(nameform$1.startsWith(".", ));
}else{
$if_$4=and$6942_$AUTO_$3;
}
if($if_$4){
$if_$8=form$1;
}else{
late final dc.dynamic alias$1;
if((null == nsform$1)){
alias$1=null;
}else{
alias$1=(lcoc_core.symbol.$_invoke$2(null, nsform$1, ));
}
late final dc.dynamic nsym$1;
if((null == alias$1)){
nsym$1=null;
}else{
final dc.dynamic resolver9220$2=lcoc_reader.$STAR_resolver$STAR_;
if((resolver9220$2 is lcoc_reader.IResolver$iface)){
nsym$1=((resolver9220$2 as lcoc_reader.IResolver$iface).resolveClass$1(alias$1, ));
}else{
nsym$1=((lcoc_reader.IResolver.extensions(resolver9220$2, ) as lcoc_reader.IResolver$ext).resolveClass$1(resolver9220$2, alias$1, ));
}
}
late final dc.dynamic nsym$2;
if((null == nsym$1)){
final dc.dynamic resolver9226$1=lcoc_reader.$STAR_resolver$STAR_;
if((resolver9226$1 is lcoc_reader.IResolver$iface)){
nsym$2=((resolver9226$1 as lcoc_reader.IResolver$iface).resolveAlias$1(alias$1, ));
}else{
nsym$2=((lcoc_reader.IResolver.extensions(resolver9226$1, ) as lcoc_reader.IResolver$ext).resolveAlias$1(resolver9226$1, alias$1, ));
}
}else{
nsym$2=nsym$1;
}
late final dc.bool $if_$5;
if((null == nsym$2)){
$if_$5=false;
}else{
$if_$5=true;
}
if($if_$5){
$if_$8=(lcoc_core.symbol.$_invoke$2(lcoc_core.name(nsym$2, ), nameform$1, ));
}else if((null == nsform$1)){
final dc.dynamic resolver9220$3=lcoc_reader.$STAR_resolver$STAR_;
late final dc.dynamic rsym$1;
if((resolver9220$3 is lcoc_reader.IResolver$iface)){
rsym$1=((resolver9220$3 as lcoc_reader.IResolver$iface).resolveClass$1(form$1, ));
}else{
rsym$1=((lcoc_reader.IResolver.extensions(resolver9220$3, ) as lcoc_reader.IResolver$ext).resolveClass$1(resolver9220$3, form$1, ));
}
late final dc.dynamic rsym$2;
if((null == rsym$1)){
final dc.dynamic resolver9232$1=lcoc_reader.$STAR_resolver$STAR_;
if((resolver9232$1 is lcoc_reader.IResolver$iface)){
rsym$2=((resolver9232$1 as lcoc_reader.IResolver$iface).resolveVar$1(form$1, ));
}else{
rsym$2=((lcoc_reader.IResolver.extensions(resolver9232$1, ) as lcoc_reader.IResolver$ext).resolveVar$1(resolver9232$1, form$1, ));
}
}else{
rsym$2=rsym$1;
}
late final dc.bool $if_$6;
if((null == rsym$2)){
$if_$6=false;
}else{
$if_$6=true;
}
if($if_$6){
$if_$8=rsym$2;
}else{
final dc.dynamic resolver9215$1=lcoc_reader.$STAR_resolver$STAR_;
late final dc.dynamic $if_$7;
if((resolver9215$1 is lcoc_reader.IResolver$iface)){
$if_$7=((resolver9215$1 as lcoc_reader.IResolver$iface).currentNS$0());
}else{
$if_$7=((lcoc_reader.IResolver.extensions(resolver9215$1, ) as lcoc_reader.IResolver$ext).currentNS$0(resolver9215$1, ));
}
final dc.String $2=lcoc_core.name($if_$7, );
$if_$8=(lcoc_core.symbol.$_invoke$2($2, nameform$1, ));
}
}else{
$if_$8=form$1;
}
}
}
}
return (lcoc_core.list.$_invoke$2(arg$2, $if_$8, ));
}
final dc.dynamic test$1=lcoc_reader.unquote$QMARK_(form$1, );
if(((false != test$1) && (null != test$1))){
return lcoc_core.second(form$1, );
}
final dc.dynamic test$2=lcoc_reader.unquote_splicing$QMARK_(form$1, );
if(((false != test$2) && (null != test$2))){
throw const dc.FormatException("splice not in list", );
}
if((form$1 is dc.num)){
return form$1;
}
if((form$1 is dc.String)){
return form$1;
}
if(lcoc_core.keyword$QMARK_(form$1, )){
return form$1;
}
if(lcoc_core.coll$QMARK_(form$1, )){
if(lcoc_core.vector$QMARK_(form$1, )){
return (lcoc_core.list.$_invoke$3((lcoc_core.symbol.$_invoke$2("cljd.core", "apply", )), (lcoc_core.symbol.$_invoke$2("cljd.core", "vector", )), (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "seq", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2("cljd.core", "concat", )), lcoc_reader.sq_expand_list(form$1, ), ), )), ));
}
if(lcoc_core.set$QMARK_(form$1, )){
return (lcoc_core.list.$_invoke$3((lcoc_core.symbol.$_invoke$2("cljd.core", "apply", )), (lcoc_core.symbol.$_invoke$2("cljd.core", "hash-set", )), (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "seq", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2("cljd.core", "concat", )), lcoc_reader.sq_expand_list(form$1, ), ), )), ));
}
if(lcoc_core.map$QMARK_(form$1, )){
return (lcoc_core.list.$_invoke$3((lcoc_core.symbol.$_invoke$2("cljd.core", "apply", )), (lcoc_core.symbol.$_invoke$2("cljd.core", "hash-map", )), (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "seq", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2("cljd.core", "concat", )), lcoc_reader.sq_expand_list((lcoc_core.apply.$_invoke$2(lcoc_core.concat, form$1, )), ), ), )), ));
}
final dc.bool or$6824_$AUTO_$2=lcoc_core.list$QMARK_(form$1, );
late final dc.bool $if_$9;
if(or$6824_$AUTO_$2){
$if_$9=or$6824_$AUTO_$2;
}else{
$if_$9=((lcoc_core.ISeq.satisfies(form$1, )) as dc.bool);
}
if($if_$9){
return (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "seq", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2("cljd.core", "concat", )), lcoc_reader.sq_expand_list(form$1, ), ), ));
}
throw const dc.FormatException("Unknown Collection type", );
}
return (lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "quote", )), form$1, ));
}

// END syntax-quote

// BEGIN terminating?
dc.bool terminating$QMARK_(dc.dynamic s$1, dc.dynamic i$1, ){
return ((dc.RegExp("[\\s,;()\\[\\]{}\\\"~^@`\\\\]", ).matchAsPrefix((s$1 as dc.String), (i$1 as dc.int), )) != null);
}

// END terminating?

// BEGIN unesc
dc.dynamic unesc(dc.dynamic s$1, ){
return ((s$1 as dc.String).replaceAllMapped(lcoc_reader.STRING_ESC_REGEXP$v1, (dc.dynamic m$1, ){
final dc.String? some$6955_$AUTO_$1=((m$1 as dc.Match).group(1, ));
if((null == some$6955_$AUTO_$1)){
final dc.String? some$6955_$AUTO_$2=((m$1 as dc.Match).group(2, ));
if((null == some$6955_$AUTO_$2)){
final dc.String? m3$1=((m$1 as dc.Match).group(3, ));
switch(m3$1){
case "\"":
return (lcoc_core.str.$_invoke$1(m3$1, ));
case "\\":
return (lcoc_core.str.$_invoke$1(m3$1, ));
case "b":
return "\b";
case "n":
return "\n";
case "r":
return "\r";
case "t":
return "\t";
case "f":
return "\f";
default:
throw dc.FormatException((lcoc_core.str.$_invoke$2("Unsupported escape character: \\", m3$1, )), );
}
}
return (dc.String.fromCharCode((dc.int.parse((some$6955_$AUTO_$2 as dc.String), radix: 8, )), ));
}
if(((some$6955_$AUTO_$1 as dc.String).length < 4)){
throw dc.FormatException((lcoc_core.str.$_invoke$3("Unsupported escape for character: \\u", some$6955_$AUTO_$1, " \\u MUST be followed by 4 hexadecimal digits", )), );
}
return (dc.String.fromCharCode((dc.int.parse((some$6955_$AUTO_$1 as dc.String), radix: 16, )), ));
}, ));
}

// END unesc

// BEGIN unexpected
dc.dynamic unexpected(dc.dynamic msg$1, ){
return (dc.dynamic $UNDERSCORE_$1, dc.dynamic $UNDERSCORE_$2, dc.dynamic $UNDERSCORE_$3, dc.dynamic $UNDERSCORE_$4, ){
throw dc.FormatException((lcoc_core.str.$_invoke$3("Unexpected ", msg$1, ".", )), );
};
}

// END unexpected

// BEGIN unquote-splicing?
dc.dynamic unquote_splicing$QMARK_(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=((lcoc_core.ISeq.satisfies(form$1, )) as dc.bool);
if(and$6942_$AUTO_$1){
return (lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "unquote-splicing", )), lcoc_core.first(form$1, ), ));
}
return and$6942_$AUTO_$1;
}

// END unquote-splicing?

// BEGIN unquote?
dc.dynamic unquote$QMARK_(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=((lcoc_core.ISeq.satisfies(form$1, )) as dc.bool);
if(and$6942_$AUTO_$1){
return (lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2("cljd.core", "unquote", )), lcoc_core.first(form$1, ), ));
}
return and$6942_$AUTO_$1;
}

// END unquote?
