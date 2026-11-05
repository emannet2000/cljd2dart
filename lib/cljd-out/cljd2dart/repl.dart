// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:convert" as d_convert;
import "transpile.dart" as lcoc_transpile;
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "dart:io" as d_io;
import "dart:async" as da;
import "repl.dart" as lcoc_repl;
import "../cljd/string.dart" as lcoc_string;
import "../cljd/reader.dart" as lcoc_reader;

// BEGIN banner
dc.dynamic banner$v1="cljd2dart REPL - :help for commands, :quit to exit, Ctrl-C to interrupt";

// END banner

// BEGIN clean-compile-error
dc.dynamic clean_compile_error(dc.dynamic msg$1, ){
final lcoc_core.PersistentVector lines$1=lcoc_core.vec((lcoc_string.split.$_invoke$2(lcoc_string.trim(msg$1, ), dc.RegExp("\\n", ), )), );
final dc.dynamic first_line$1=lcoc_core.first(lines$1, );
final dc.dynamic i$1=(first_line$1.indexOf("Error: ", ));
if((0 > (i$1 as dc.num))){
return (lcoc_string.join.$_invoke$2("\n", lines$1, ));
}
return (lcoc_core.subs.$_invoke$2(first_line$1, ((i$1 as dc.num) + 7), ));
}

// END clean-compile-error

// BEGIN command-name
dc.dynamic command_name(dc.dynamic line$1, ){
return lcoc_core.first((lcoc_string.split.$_invoke$2(lcoc_string.trim(line$1, ), dc.RegExp("\\s+", ), )), );
}

// END command-name

// BEGIN command?
dc.dynamic command$QMARK_(dc.dynamic line$1, ){
return lcoc_core.contains$QMARK_(lcoc_repl.commands$v1, lcoc_repl.command_name(line$1, ), );
}

// END command?

// BEGIN commands
dc.dynamic commands$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(13, ":session", ));
(fl$1[1]=":session");
(fl$1[2]=":reset");
(fl$1[3]=":reset");
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, ":dart", ));
(fl$2[1]=":dart");
(fl$2[2]=":exit");
(fl$2[3]=":exit");
(fl$1[4]=lcoc_core.BitmapNode(2, 2097184, 2097184, fl$2, ));
(fl$1[5]=":help");
(fl$1[6]=":help");
(fl$1[7]=":quit");
(fl$1[8]=":quit");
(fl$1[9]=":q");
(fl$1[10]=":q");
(fl$1[11]=":load");
(fl$1[12]=":load");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(8, 3490746400, 3490713632, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.PersistentHashSet(null, cast$1, -1, );
}();

// END commands

// BEGIN definition?
dc.dynamic definition$QMARK_(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$1, );
if(and$6942_$AUTO_$1){
late final dc.dynamic and$6942_$AUTO_$2;
if((form$1 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$2=((form$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$2=((lcoc_core.ISeqable.extensions(form$1, ) as lcoc_core.ISeqable$ext).$_seq$0(form$1, ));
}
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(14, "defn", ));
(fl$1[1]="defn");
(fl$1[2]="declare");
(fl$1[3]="declare");
(fl$1[4]="require");
(fl$1[5]="require");
(fl$1[6]="defonce");
(fl$1[7]="defonce");
(fl$1[8]="defn-");
(fl$1[9]="defn-");
(fl$1[10]="def");
(fl$1[11]="def");
(fl$1[12]="ns");
(fl$1[13]="ns");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(7, 1166017556, 1166017556, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.contains$QMARK_(lcoc_core.PersistentHashSet(null, cast$1, -1, ), (lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), )), );
}
return and$6942_$AUTO_$2;
}
return and$6942_$AUTO_$1;
}

// END definition?

// BEGIN eval-forms
dc.dynamic eval_forms(dc.dynamic session$1, dc.dynamic forms$1, dc.dynamic show$QMARK_$1, ) async {
dc.dynamic session$2=session$1;
dc.dynamic forms$2=lcoc_core.vec((lcoc_core.mapcat.$_invoke$2(lcoc_repl.flatten_do, forms$1, )), );
do {
final dc.dynamic o7080$1=forms$2;
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
return session$2;
}
session$2=(await lcoc_repl.eval_one(session$2, lcoc_core.first(forms$2, ), show$QMARK_$1, ));
forms$2=lcoc_core.vec(lcoc_core.rest(forms$2, ), );
continue;
} while(true);
}

// END eval-forms

// BEGIN eval-one
dc.dynamic eval_one(dc.dynamic session$1, dc.dynamic form$1, dc.dynamic show$QMARK_$1, ) async {
late final dc.dynamic compiled$1;
try {
compiled$1=lcoc_transpile.repl_compile((const lcoc_core.Keyword(null, "state", 1750323599, ).$_invoke$1(session$1, )), form$1, );
} on dc.Object catch (e$1) {
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "failed", 2997450177, ), ));
(fl$1[1]=(lcoc_core.str.$_invoke$1(e$1, )));
compiled$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 2, 2, fl$1, ), -1, );
}
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "failed", 2997450177, ).$_invoke$1(compiled$1, ));
if(((false != test$1) && (null != test$1))){
(lcoc_repl.writeln((lcoc_core.str.$_invoke$2("error: ", (const lcoc_core.Keyword(null, "failed", 2997450177, ).$_invoke$1(compiled$1, )), )), ));
return session$1;
}
final dc.dynamic vm$1=(const lcoc_core.Keyword(null, "vm", 2892238519, ).$_invoke$1(session$1, ));
final dc.dynamic $UNDERSCORE_$1=(const lcoc_core.Keyword(null, "session", 1296252883, ).$_invoke$1(vm$1, ).writeAsStringSync(lcoc_transpile.repl_source((const lcoc_core.Keyword(null, "state", 1750323599, ).$_invoke$1(compiled$1, )), (const lcoc_core.Keyword(null, "body", 423165565, ).$_invoke$1(compiled$1, )), ), ));
final dc.dynamic compile_error$1=(await lcoc_repl.reload_error(vm$1, ));
if(((false != compile_error$1) && (null != compile_error$1))){
(lcoc_repl.writeln((lcoc_core.str.$_invoke$2("error: ", lcoc_repl.clean_compile_error(compile_error$1, ), )), ));
return session$1;
}
final dc.dynamic $UNDERSCORE_$2=lcoc_core.reset$BANG_((const lcoc_core.Keyword(null, "evaluating?", 3746611030, ).$_invoke$1(session$1, )), true, );
final dc.dynamic result$1=(await lcoc_repl.run_eval(vm$1, ));
final dc.dynamic $UNDERSCORE_$3=lcoc_core.reset$BANG_((const lcoc_core.Keyword(null, "evaluating?", 3746611030, ).$_invoke$1(session$1, )), false, );
final dc.dynamic assoc_v9593$1=(const lcoc_core.Keyword(null, "state", 1750323599, ).$_invoke$1(compiled$1, ));
final dc.dynamic assoc_v9594$1=(const lcoc_core.Keyword(null, "body", 423165565, ).$_invoke$1(compiled$1, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "last-dart", 226654219, ), ));
(fl$2[1]=assoc_v9594$1);
(fl$2[2]=const lcoc_core.Keyword(null, "state", 1750323599, ));
(fl$2[3]=assoc_v9593$1);
final lcoc_core.PersistentHashMap o7120$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 34816, 34816, fl$2, ), -1, );
late final dc.dynamic session$2;
if((session$1 is lcoc_core.ICollection$iface)){
session$2=((session$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}else{
session$2=((lcoc_core.ICollection.extensions(session$1, ) as lcoc_core.ICollection$ext).$_conj$1(session$1, o7120$1, ));
}
if((null == result$1)){
return (await lcoc_repl.restart(session$2, ));
}
late final dc.dynamic $if_$1;
if((result$1 is lcoc_core.ILookup$iface)){
$if_$1=((result$1 as lcoc_core.ILookup$iface).$_lookup$1("error", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(result$1, ) as lcoc_core.ILookup$ext).$_lookup$1(result$1, "error", ));
}
if(((false != $if_$1) && (null != $if_$1))){
late final dc.dynamic $if_$2;
if((result$1 is lcoc_core.ILookup$iface)){
$if_$2=((result$1 as lcoc_core.ILookup$iface).$_lookup$1("error", ));
}else{
$if_$2=((lcoc_core.ILookup.extensions(result$1, ) as lcoc_core.ILookup$ext).$_lookup$1(result$1, "error", ));
}
final dc.String $1=(lcoc_core.str.$_invoke$2("error: ", $if_$2, ));
(lcoc_repl.writeln($1, ));
return session$2;
}
if(((false != show$QMARK_$1) && (null != show$QMARK_$1))){
final dc.dynamic or$6824_$AUTO_$1=(const lcoc_core.Keyword(null, "echo", 3844603028, ).$_invoke$1(compiled$1, ));
late final dc.dynamic $if_$3;
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
$if_$3=or$6824_$AUTO_$1;
}else{
if((result$1 is lcoc_core.ILookup$iface)){
$if_$3=((result$1 as lcoc_core.ILookup$iface).$_lookup$1("value", ));
}else{
$if_$3=((lcoc_core.ILookup.extensions(result$1, ) as lcoc_core.ILookup$ext).$_lookup$1(result$1, "value", ));
}
}
(lcoc_repl.writeln($if_$3, ));
}else{
}
final dc.dynamic test$2=lcoc_repl.definition$QMARK_(form$1, );
if(((false != test$2) && (null != test$2))){
return (lcoc_core.update.$_invoke$4(session$2, const lcoc_core.Keyword(null, "forms", 4008429186, ), lcoc_core.conj, form$1, ));
}
return session$2;
}

// END eval-one

// BEGIN eval-text
dc.dynamic eval_text(dc.dynamic session$1, dc.dynamic text$1, ) async {
late final dc.dynamic forms$1;
try {
forms$1=(await lcoc_repl.parse_forms(text$1, ));
} on dc.Object catch (e$1) {
(lcoc_repl.writeln((lcoc_core.str.$_invoke$2("read error: ", e$1, )), ));
forms$1=lcoc_core.$_EMPTY_VECTOR;
}
return (await lcoc_repl.eval_forms(session$1, forms$1, true, ));
}

// END eval-text

// BEGIN flatten-do
dc.dynamic flatten_do(dc.dynamic form$1, ){
final dc.bool and$6942_$AUTO_$1=lcoc_core.list$QMARK_(form$1, );
late final dc.dynamic $if_$1;
if(and$6942_$AUTO_$1){
late final dc.dynamic and$6942_$AUTO_$2;
if((form$1 is lcoc_core.ISeqable$iface)){
and$6942_$AUTO_$2=((form$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
and$6942_$AUTO_$2=((lcoc_core.ISeqable.extensions(form$1, ) as lcoc_core.ISeqable$ext).$_seq$0(form$1, ));
}
if(((false != and$6942_$AUTO_$2) && (null != and$6942_$AUTO_$2))){
$if_$1=(lcoc_core.$EQ_.$_invoke$2("do", (lcoc_core.str.$_invoke$1(lcoc_core.first(form$1, ), )), ));
}else{
$if_$1=and$6942_$AUTO_$2;
}
}else{
$if_$1=and$6942_$AUTO_$1;
}
if(((false != $if_$1) && (null != $if_$1))){
return (lcoc_core.mapcat.$_invoke$2(lcoc_repl.flatten_do, lcoc_core.rest(form$1, ), ));
}
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, form$1, ));
return lcoc_core.PersistentVector(null, 1, 5, arg$1, fl$1, -1, );
}

// END flatten-do

// BEGIN form-complete?
dc.dynamic form_complete$QMARK_(dc.dynamic src$1, ){
late final dc.int n$1;
if((src$1 is lcoc_core.ICounted$iface)){
n$1=(((src$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
n$1=(((lcoc_core.ICounted.extensions(src$1, ) as lcoc_core.ICounted$ext).$_count$0(src$1, )) as dc.int);
}
dc.dynamic i$1=0;
dc.dynamic state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
dc.dynamic depth$1=0;
do {
if(((i$1 as dc.num) >= n$1)){
final dc.bool and$6942_$AUTO_$1=(lcoc_core.not$EQ_.$_invoke$2(state$1, const lcoc_core.Keyword(null, "string", 1823871036, ), ));
if(and$6942_$AUTO_$1){
return ((depth$1 as dc.num) <= 0);
}
return and$6942_$AUTO_$1;
}
final dc.String ch$1=(lcoc_core.subs.$_invoke$3(src$1, i$1, (1 + (i$1 as dc.num)), ));
if((lcoc_core.$EQ_.$_invoke$2(state$1, const lcoc_core.Keyword(null, "string", 1823871036, ), ))){
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\\", ))){
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
i$1=(1 + (i$1 as dc.num));
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\n", ))){
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
}else{
state$1=const lcoc_core.Keyword(null, "comment", 105183667, );
}
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\"", ))){
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "string", 1823871036, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, ";", ))){
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "comment", 105183667, );
continue;
}
if((lcoc_core.$EQ_.$_invoke$2(ch$1, "\\", ))){
i$1=((i$1 as dc.num) + 2);
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
continue;
}
final dc.bool or$6824_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2(ch$1, "(", ));
late final dc.bool $if_$1;
if(or$6824_$AUTO_$1){
$if_$1=or$6824_$AUTO_$1;
}else{
final dc.bool or$6824_$AUTO_$2=(lcoc_core.$EQ_.$_invoke$2(ch$1, "[", ));
if(or$6824_$AUTO_$2){
$if_$1=or$6824_$AUTO_$2;
}else{
$if_$1=(lcoc_core.$EQ_.$_invoke$2(ch$1, "{", ));
}
}
if($if_$1){
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
depth$1=(1 + (depth$1 as dc.num));
continue;
}
final dc.bool or$6824_$AUTO_$3=(lcoc_core.$EQ_.$_invoke$2(ch$1, ")", ));
late final dc.bool $if_$2;
if(or$6824_$AUTO_$3){
$if_$2=or$6824_$AUTO_$3;
}else{
final dc.bool or$6824_$AUTO_$4=(lcoc_core.$EQ_.$_invoke$2(ch$1, "]", ));
if(or$6824_$AUTO_$4){
$if_$2=or$6824_$AUTO_$4;
}else{
$if_$2=(lcoc_core.$EQ_.$_invoke$2(ch$1, "}", ));
}
}
if($if_$2){
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
depth$1=((depth$1 as dc.num) - 1);
continue;
}
i$1=(1 + (i$1 as dc.num));
state$1=const lcoc_core.Keyword(null, "code", 1085824150, );
continue;
} while(true);
}

// END form-complete?

// BEGIN fresh-session
dc.dynamic fresh_session(dc.dynamic session$1, ) async {
((await lcoc_repl.stop_vm((const lcoc_core.Keyword(null, "vm", 2892238519, ).$_invoke$1(session$1, )), )));
final dc.dynamic assoc_v9595$1=(await lcoc_repl.start_vm((const lcoc_core.Keyword(null, "dir", 2201117196, ).$_invoke$1(session$1, )), ));
final dc.dynamic assoc_v9596$1=lcoc_transpile.repl_state();
final lcoc_core.PersistentVector assoc_v9597$1=lcoc_core.$_EMPTY_VECTOR;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "forms", 4008429186, ), ));
(fl$1[1]=assoc_v9597$1);
(fl$1[2]=const lcoc_core.Keyword(null, "state", 1750323599, ));
(fl$1[3]=assoc_v9596$1);
(fl$1[4]=const lcoc_core.Keyword(null, "vm", 2892238519, ));
(fl$1[5]=assoc_v9595$1);
final lcoc_core.PersistentHashMap o7120$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421380, 8421380, fl$1, ), -1, );
if((session$1 is lcoc_core.ICollection$iface)){
return ((session$1 as lcoc_core.ICollection$iface).$_conj$1(o7120$1, ));
}
return ((lcoc_core.ICollection.extensions(session$1, ) as lcoc_core.ICollection$ext).$_conj$1(session$1, o7120$1, ));
}

// END fresh-session

// BEGIN handle-interrupt
dc.dynamic handle_interrupt(dc.dynamic current$1, dc.dynamic evaluating$QMARK_$1, dc.dynamic input_buffer$1, dc.dynamic interactive$QMARK_$1, ){
final dc.dynamic test$1=lcoc_core.deref(evaluating$QMARK_$1, );
if(((false != test$1) && (null != test$1))){
return (const lcoc_core.Keyword(null, "proc", 3503401363, ).$_invoke$1((const lcoc_core.Keyword(null, "vm", 2892238519, ).$_invoke$1(lcoc_core.deref(current$1, ), )), ).kill(d_io.ProcessSignal.sigkill, ));
}
(lcoc_core.reset$BANG_(input_buffer$1, "", ));
if(((false != interactive$QMARK_$1) && (null != interactive$QMARK_$1))){
return lcoc_repl.write("\nuser=> ", );
}
return null;
}

// END handle-interrupt

// BEGIN load-file
dc.dynamic load_file(dc.dynamic session$1, dc.dynamic line$1, ) async {
final dc.String arg$1=lcoc_string.trim(line$1, );
late final dc.int cast$1;
if((":load" is lcoc_core.ICounted$iface)){
cast$1=(((":load" as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(":load", ) as lcoc_core.ICounted$ext).$_count$0(":load", )) as dc.int);
}
final dc.String $1=(lcoc_core.subs.$_invoke$2(arg$1, cast$1, ));
final dc.String path$1=lcoc_string.trim($1, );
final d_io.File file$1=d_io.File(path$1, );
if(lcoc_string.blank$QMARK_(path$1, )){
(lcoc_repl.writeln("usage: :load <file>", ));
return session$1;
}
late final dc.bool $if_$1;
if((file$1.existsSync())){
$if_$1=false;
}else{
$if_$1=true;
}
if($if_$1){
(lcoc_repl.writeln((lcoc_core.str.$_invoke$2("error: no such file: ", path$1, )), ));
return session$1;
}
return (await lcoc_repl.eval_text(session$1, (file$1.readAsStringSync()), ));
}

// END load-file

// BEGIN on-exit
dc.dynamic on_exit(dc.dynamic vm$1, ){
(lcoc_core.reset$BANG_((const lcoc_core.Keyword(null, "dead", 1188903448, ).$_invoke$1(vm$1, )), true, ));
final dc.dynamic pending$1=lcoc_core.deref((const lcoc_core.Keyword(null, "pending", 3476571348, ).$_invoke$1(vm$1, )), );
(lcoc_core.reset$BANG_((const lcoc_core.Keyword(null, "pending", 3476571348, ).$_invoke$1(vm$1, )), lcoc_core.$_EMPTY_MAP, ));
final dc.Iterator it$8006_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(pending$1, ));
do {
if((it$8006_$AUTO_$1.moveNext())){
final dc.dynamic vec$9590_$1=it$8006_$AUTO_$1.current;
final dc.dynamic $UNDERSCORE_$1=(lcoc_core.nth.$_invoke$3(vec$9590_$1, 0, null, ));
final dc.dynamic done$1=(lcoc_core.nth.$_invoke$3(vec$9590_$1, 1, null, ));
(done$1.complete(null, ));
continue;
}else{
}
break;
} while(true);
return null;
}

// END on-exit

// BEGIN on-message
dc.dynamic on_message(dc.dynamic vm$1, dc.dynamic msg$1, ){
final dc.dynamic res$1=d_convert.jsonDecode((msg$1 as dc.String), );
late final dc.dynamic id$1;
if((res$1 is lcoc_core.ILookup$iface)){
id$1=((res$1 as lcoc_core.ILookup$iface).$_lookup$1("id", ));
}else{
id$1=((lcoc_core.ILookup.extensions(res$1, ) as lcoc_core.ILookup$ext).$_lookup$1(res$1, "id", ));
}
late final dc.dynamic done$1;
if(((false != id$1) && (null != id$1))){
final dc.dynamic o7258$2=lcoc_core.deref((const lcoc_core.Keyword(null, "pending", 3476571348, ).$_invoke$1(vm$1, )), );
if((o7258$2 is lcoc_core.ILookup$iface)){
done$1=((o7258$2 as lcoc_core.ILookup$iface).$_lookup$1(id$1, ));
}else{
done$1=((lcoc_core.ILookup.extensions(o7258$2, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$2, id$1, ));
}
}else{
done$1=null;
}
if(((false != done$1) && (null != done$1))){
(lcoc_core.swap$BANG_.$_invoke$3((const lcoc_core.Keyword(null, "pending", 3476571348, ).$_invoke$1(vm$1, )), lcoc_core.dissoc, id$1, ));
return (done$1.complete(res$1, ));
}
return null;
}

// END on-message

// BEGIN parse-forms
dc.dynamic parse_forms(dc.dynamic src$1, ) async {
return lcoc_core.vec((await (lcoc_reader.read_stream((da.Stream.value(lcoc_transpile.normalize_percent_args(src$1, ), )), ).toList())), );
}

// END parse-forms

// BEGIN prompt
dc.dynamic prompt(dc.dynamic session$1, dc.dynamic buffer$1, dc.dynamic interactive$QMARK_$1, ) async {
if(((false != interactive$QMARK_$1) && (null != interactive$QMARK_$1))){
late final dc.String $if_$1;
if(lcoc_string.blank$QMARK_(buffer$1, )){
$if_$1=(lcoc_core.str.$_invoke$2((const lcoc_core.Keyword(null, "ns", 1494845879, ).$_invoke$1((const lcoc_core.Keyword(null, "state", 1750323599, ).$_invoke$1(session$1, )), )), "=> ", ));
}else{
$if_$1="   ... ";
}
(lcoc_repl.write($if_$1, ));
return (await (d_io.stdout.flush()));
}
return null;
}

// END prompt

// BEGIN reload-error
dc.dynamic reload_error(dc.dynamic vm$1, ) async {
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, "force", ));
(fl$1[1]=true);
(fl$1[2]="isolateId");
(fl$1[3]=(const lcoc_core.Keyword(null, "isolate", 2751127512, ).$_invoke$1(vm$1, )));
final dc.dynamic $1=lcoc_repl.rpc(vm$1, "reloadSources", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 524800, 524800, fl$1, ), -1, ), );
final dc.dynamic res$1=(await $1);
late final dc.dynamic result$1;
if(((false != res$1) && (null != res$1))){
if((res$1 is lcoc_core.ILookup$iface)){
result$1=((res$1 as lcoc_core.ILookup$iface).$_lookup$1("result", ));
}else{
result$1=((lcoc_core.ILookup.extensions(res$1, ) as lcoc_core.ILookup$ext).$_lookup$1(res$1, "result", ));
}
}else{
result$1=null;
}
if((null == res$1)){
return null;
}
late final dc.dynamic $if_$1;
if((result$1 is lcoc_core.ILookup$iface)){
$if_$1=((result$1 as lcoc_core.ILookup$iface).$_lookup$1("success", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(result$1, ) as lcoc_core.ILookup$ext).$_lookup$1(result$1, "success", ));
}
final dc.bool $2=dc.identical($if_$1, true, );
if($2){
return null;
}
late final dc.dynamic notices$1;
if((result$1 is lcoc_core.ILookup$iface)){
notices$1=((result$1 as lcoc_core.ILookup$iface).$_lookup$1("notices", ));
}else{
notices$1=((lcoc_core.ILookup.extensions(result$1, ) as lcoc_core.ILookup$ext).$_lookup$1(result$1, "notices", ));
}
late final dc.dynamic $if_$2;
if(((false != notices$1) && (null != notices$1))){
$if_$2=notices$1.isNotEmpty;
}else{
$if_$2=notices$1;
}
if(((false != $if_$2) && (null != $if_$2))){
final dc.dynamic o7258$4=notices$1.first;
late final dc.dynamic $if_$3;
if((o7258$4 is lcoc_core.ILookup$iface)){
$if_$3=((o7258$4 as lcoc_core.ILookup$iface).$_lookup$1("message", ));
}else{
$if_$3=((lcoc_core.ILookup.extensions(o7258$4, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$4, "message", ));
}
return (lcoc_core.str.$_invoke$1($if_$3, ));
}
late final dc.dynamic or$6824_$AUTO_$1;
if((res$1 is lcoc_core.ILookup$iface)){
or$6824_$AUTO_$1=((res$1 as lcoc_core.ILookup$iface).$_lookup$1("error", ));
}else{
or$6824_$AUTO_$1=((lcoc_core.ILookup.extensions(res$1, ) as lcoc_core.ILookup$ext).$_lookup$1(res$1, "error", ));
}
late final dc.dynamic $if_$4;
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
$if_$4=or$6824_$AUTO_$1;
}else{
$if_$4=res$1;
}
return (lcoc_core.str.$_invoke$1($if_$4, ));
}

// END reload-error

// BEGIN repl-help
dc.dynamic repl_help$v1=(lcoc_core.str.$_invoke_more$10("Commands:\n", "  :help         show this help\n", "  :quit         leave the REPL (also :q, :exit, or Ctrl-D)\n", "  :reset        restart the session and forget all definitions\n", "  :load <file>  evaluate every form in a file\n", "  :session      print the definitions in this session\n", "  :dart         print the Dart generated for the last form\n", "\n", "*1 *2 *3 hold recent values and *e the last exception.\n", ["Dart libraries: (require '[\"dart:math\" :as math])\n", ], ));

// END repl-help

// BEGIN repl-loop
dc.dynamic repl_loop(dc.dynamic session$1, dc.dynamic lines$1, dc.dynamic interactive$QMARK_$1, dc.dynamic input_buffer$1, ) async {
dc.dynamic session$2=session$1;
do {
((await lcoc_repl.prompt(session$2, lcoc_core.deref(input_buffer$1, ), interactive$QMARK_$1, )));
final dc.dynamic test$1=(await (lines$1.moveNext()));
if(((false != test$1) && (null != test$1))){
final dc.dynamic line$1=lines$1.current;
final dc.dynamic buffer$1=lcoc_core.deref(input_buffer$1, );
final dc.bool and$6942_$AUTO_$1=lcoc_string.blank$QMARK_(buffer$1, );
late final dc.bool $if_$1;
if(and$6942_$AUTO_$1){
$if_$1=lcoc_string.blank$QMARK_(line$1, );
}else{
$if_$1=and$6942_$AUTO_$1;
}
if($if_$1){
continue;
}
final dc.bool and$6942_$AUTO_$2=lcoc_string.blank$QMARK_(buffer$1, );
late final dc.dynamic $if_$2;
if(and$6942_$AUTO_$2){
$if_$2=lcoc_repl.command$QMARK_(line$1, );
}else{
$if_$2=and$6942_$AUTO_$2;
}
if(((false != $if_$2) && (null != $if_$2))){
final dc.dynamic next_session$1=(await lcoc_repl.run_command(session$2, line$1, ));
if(((false != next_session$1) && (null != next_session$1))){
session$2=next_session$1;
continue;
}
return session$2;
}
final dc.String text$1=(lcoc_core.str.$_invoke$3(buffer$1, line$1, "\n", ));
final dc.dynamic test$2=lcoc_repl.form_complete$QMARK_(text$1, );
if(((false != test$2) && (null != test$2))){
(lcoc_core.reset$BANG_(input_buffer$1, "", ));
session$2=(await lcoc_repl.eval_text(session$2, text$1, ));
continue;
}
(lcoc_core.reset$BANG_(input_buffer$1, text$1, ));
continue;
}
return session$2;
} while(true);
}

// END repl-loop

// BEGIN repl-main
dc.dynamic repl_main() async {
final dc.bool interactive$QMARK_$1=d_io.stdin.hasTerminal;
final dc.String dir$1=(d_io.Directory.systemTemp.createTempSync("cljd2dart-repl-", )).path;
final lcoc_core.Atom evaluating$QMARK_$1=(lcoc_core.atom.$_invoke$1(false, ));
final lcoc_core.Atom input_buffer$1=(lcoc_core.atom.$_invoke$1("", ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(10, const lcoc_core.Keyword(null, "forms", 4008429186, ), ));
(fl$1[1]=lcoc_core.$_EMPTY_VECTOR);
(fl$1[2]=const lcoc_core.Keyword(null, "dir", 2201117196, ));
(fl$1[3]=dir$1);
(fl$1[4]=const lcoc_core.Keyword(null, "state", 1750323599, ));
(fl$1[5]=lcoc_transpile.repl_state());
(fl$1[6]=const lcoc_core.Keyword(null, "evaluating?", 3746611030, ));
(fl$1[7]=evaluating$QMARK_$1);
(fl$1[8]=const lcoc_core.Keyword(null, "vm", 2892238519, ));
(fl$1[9]=(await lcoc_repl.start_vm(dir$1, )));
final lcoc_core.Atom session$1=(lcoc_core.atom.$_invoke$1(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 12619780, 12619780, fl$1, ), -1, ), ));
final da.StreamSubscription<d_io.ProcessSignal> signals$1=(d_io.ProcessSignal.sigint.watch().listen((dc.dynamic $UNDERSCORE_$1, ){
return lcoc_repl.handle_interrupt(session$1, evaluating$QMARK_$1, input_buffer$1, interactive$QMARK_$1, );
}, ));
final da.StreamIterator lines$1=da.StreamIterator((d_io.stdin.transform(d_convert.utf8.decoder, ).transform(const d_convert.LineSplitter(), )), );
if(interactive$QMARK_$1){
(lcoc_repl.writeln(lcoc_repl.banner$v1, ));
}else{
}
final dc.dynamic last_session$1=(await lcoc_repl.repl_loop(lcoc_core.deref(session$1, ), lines$1, interactive$QMARK_$1, input_buffer$1, ));
if(interactive$QMARK_$1){
(lcoc_repl.writeln("", ));
}else{
}
((await lcoc_repl.stop_vm((const lcoc_core.Keyword(null, "vm", 2892238519, ).$_invoke$1(last_session$1, )), )));
((await (signals$1.cancel())));
(d_io.Directory(dir$1, ).deleteSync(recursive: true, ));
((await (d_io.stdout.flush())));
return d_io.exit(0, );
}

// END repl-main

// BEGIN restart
dc.dynamic restart(dc.dynamic session$1, ) async {
(lcoc_repl.writeln(";; session VM stopped; restarting and re-running definitions", ));
final dc.dynamic forms$1=(const lcoc_core.Keyword(null, "forms", 4008429186, ).$_invoke$1(session$1, ));
final dc.dynamic fresh$1=(await lcoc_repl.fresh_session(session$1, ));
return (await lcoc_repl.eval_forms(fresh$1, forms$1, false, ));
}

// END restart

// BEGIN rpc
dc.dynamic rpc(dc.dynamic vm$1, dc.dynamic method$1, dc.dynamic params$1, ) async {
final dc.dynamic test$1=lcoc_core.deref((const lcoc_core.Keyword(null, "dead", 1188903448, ).$_invoke$1(vm$1, )), );
if(((false != test$1) && (null != test$1))){
return null;
}
final dc.String id$1=(lcoc_core.str.$_invoke$1((lcoc_core.swap$BANG_.$_invoke$2((const lcoc_core.Keyword(null, "ids", 1893412903, ).$_invoke$1(vm$1, )), lcoc_core.inc, )), ));
final da.Completer done$1=da.Completer();
(lcoc_core.swap$BANG_.$_invoke$4((const lcoc_core.Keyword(null, "pending", 3476571348, ).$_invoke$1(vm$1, )), lcoc_core.assoc, id$1, done$1, ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(8, "params", ));
(fl$1[1]=params$1);
(fl$1[2]="method");
(fl$1[3]=method$1);
(fl$1[4]="id");
(fl$1[5]=id$1);
(fl$1[6]="jsonrpc");
(fl$1[7]="2.0");
final dc.Object? cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 67110176, 67110176, fl$1, ), -1, ) as dc.Object?);
final dc.String $1=d_convert.jsonEncode(cast$1, );
(const lcoc_core.Keyword(null, "ws", 1556811029, ).$_invoke$1(vm$1, ).add($1, ));
return (await done$1.future);
}

// END rpc

// BEGIN run-command
dc.dynamic run_command(dc.dynamic session$1, dc.dynamic line$1, ) async {
final dc.dynamic cmd$1=lcoc_repl.command_name(line$1, );
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, ":exit", ));
(fl$1[1]=":exit");
(fl$1[2]=":quit");
(fl$1[3]=":quit");
(fl$1[4]=":q");
(fl$1[5]=":q");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 1342210048, 1342210048, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
final dc.bool $1=lcoc_core.contains$QMARK_(lcoc_core.PersistentHashSet(null, cast$1, -1, ), cmd$1, );
if($1){
return null;
}
if((lcoc_core.$EQ_.$_invoke$2(cmd$1, ":help", ))){
(lcoc_repl.write(lcoc_repl.repl_help$v1, ));
return session$1;
}
if((lcoc_core.$EQ_.$_invoke$2(cmd$1, ":load", ))){
return (await lcoc_repl.load_file(session$1, line$1, ));
}
if((lcoc_core.$EQ_.$_invoke$2(cmd$1, ":session", ))){
final dc.Iterator it$8006_$AUTO_$1=(lcoc_core.iterator.$_invoke$1((const lcoc_core.Keyword(null, "forms", 4008429186, ).$_invoke$1(session$1, )), ));
do {
if((it$8006_$AUTO_$1.moveNext())){
final dc.dynamic form$1=it$8006_$AUTO_$1.current;
(lcoc_repl.writeln((lcoc_core.pr_str.$_invoke$1(form$1, )), ));
continue;
}else{
}
break;
} while(true);
return session$1;
}
if((lcoc_core.$EQ_.$_invoke$2(cmd$1, ":dart", ))){
final dc.dynamic or$6824_$AUTO_$1=(const lcoc_core.Keyword(null, "last-dart", 226654219, ).$_invoke$1(session$1, ));
late final dc.dynamic $if_$1;
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
$if_$1=or$6824_$AUTO_$1;
}else{
$if_$1=";; nothing yet";
}
(lcoc_repl.writeln($if_$1, ));
return session$1;
}
final dc.dynamic fresh$1=(await lcoc_repl.fresh_session(session$1, ));
(lcoc_repl.writeln(";; session reset", ));
return fresh$1;
}

// END run-command

// BEGIN run-eval
dc.dynamic run_eval(dc.dynamic vm$1, ) async {
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "isolateId", ));
(fl$1[1]=(const lcoc_core.Keyword(null, "isolate", 2751127512, ).$_invoke$1(vm$1, )));
final dc.dynamic $1=lcoc_repl.rpc(vm$1, "ext.cljd.eval", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$1, ), -1, ), );
final dc.dynamic res$1=(await $1);
if(((false != res$1) && (null != res$1))){
late final dc.dynamic or$6824_$AUTO_$1;
if((res$1 is lcoc_core.ILookup$iface)){
or$6824_$AUTO_$1=((res$1 as lcoc_core.ILookup$iface).$_lookup$1("result", ));
}else{
or$6824_$AUTO_$1=((lcoc_core.ILookup.extensions(res$1, ) as lcoc_core.ILookup$ext).$_lookup$1(res$1, "result", ));
}
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
return or$6824_$AUTO_$1;
}
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "error", ));
late final dc.dynamic $if_$1;
if((res$1 is lcoc_core.ILookup$iface)){
$if_$1=((res$1 as lcoc_core.ILookup$iface).$_lookup$1("error", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(res$1, ) as lcoc_core.ILookup$ext).$_lookup$1(res$1, "error", ));
}
final dc.String $2=(lcoc_core.str.$_invoke$1($if_$1, ));
(fl$2[1]=$2);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 1024, 1024, fl$2, ), -1, );
}
return null;
}

// END run-eval

// BEGIN start-vm
dc.dynamic start_vm(dc.dynamic dir$1, ) async {
final d_io.File info$1=d_io.File((lcoc_core.str.$_invoke$2(dir$1, "/service-uri", )), );
final d_io.File session$1=d_io.File((lcoc_core.str.$_invoke$2(dir$1, "/session.dart", )), );
final lcoc_core.Atom dead$1=(lcoc_core.atom.$_invoke$1(false, ));
if((info$1.existsSync())){
(info$1.deleteSync());
}else{
}
(session$1.writeAsStringSync((lcoc_transpile.repl_source(lcoc_transpile.repl_state(), "  return null;", ) as dc.String), ));
(d_io.File((lcoc_core.str.$_invoke$2(dir$1, "/host.dart", )), ).writeAsStringSync((lcoc_transpile.repl_host_main$v1 as dc.String), ));
final d_io.Process proc$1=(await (d_io.Process.start("dart", <dc.String>[(lcoc_core.str.$_invoke$2(dir$1, "/host.dart", )), info$1.path, ], mode: d_io.ProcessStartMode.inheritStdio, )));
final da.Future<dc.dynamic> $UNDERSCORE_$2=(proc$1.exitCode.then((dc.dynamic $UNDERSCORE_$1, ){
return lcoc_core.reset$BANG_(dead$1, true, );
}, ));
final dc.dynamic uri$1=(await lcoc_repl.wait_for_file(info$1, dead$1, ));
final dc.String ws_uri$1=(lcoc_core.str.$_invoke$2(lcoc_string.replace_first(uri$1, "http", "ws", ), "ws", ));
final d_io.WebSocket ws$1=(await (d_io.WebSocket.connect(ws_uri$1, )));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(9, const lcoc_core.Keyword(null, "ids", 1893412903, ), ));
(fl$2[1]=(lcoc_core.atom.$_invoke$1(0, )));
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "proc", 3503401363, ), ));
(fl$3[1]=proc$1);
(fl$3[2]=const lcoc_core.Keyword(null, "session", 1296252883, ));
(fl$3[3]=session$1);
(fl$2[2]=lcoc_core.BitmapNode(2, 1073745920, 1073745920, fl$3, ));
(fl$2[3]=const lcoc_core.Keyword(null, "pending", 3476571348, ));
(fl$2[4]=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_MAP, )));
(fl$2[5]=const lcoc_core.Keyword(null, "ws", 1556811029, ));
(fl$2[6]=ws$1);
(fl$2[7]=const lcoc_core.Keyword(null, "dead", 1188903448, ));
(fl$2[8]=dead$1);
final lcoc_core.PersistentHashMap vm$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(6, 20447360, 19923072, fl$2, ), -1, );
(ws$1.listen((dc.dynamic msg$1, ){
return lcoc_repl.on_message(vm$1, msg$1, );
}, ));
(proc$1.exitCode.then((dc.dynamic $UNDERSCORE_$3, ){
return lcoc_repl.on_exit(vm$1, );
}, ));
final dc.dynamic v7204$1=(await lcoc_repl.wait_for_isolate(vm$1, ));
if((vm$1 is lcoc_core.IAssociative$iface)){
return ((vm$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "isolate", 2751127512, ), v7204$1, ));
}
return ((lcoc_core.IAssociative.extensions(vm$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(vm$1, const lcoc_core.Keyword(null, "isolate", 2751127512, ), v7204$1, ));
}

// END start-vm

// BEGIN stop-vm
dc.dynamic stop_vm(dc.dynamic vm$1, ) async {
(const lcoc_core.Keyword(null, "proc", 3503401363, ).$_invoke$1(vm$1, ).kill(d_io.ProcessSignal.sigkill, ));
((await (const lcoc_core.Keyword(null, "proc", 3503401363, ).$_invoke$1(vm$1, )).exitCode));
return (await (const lcoc_core.Keyword(null, "ws", 1556811029, ).$_invoke$1(vm$1, ).close()));
}

// END stop-vm

// BEGIN wait-for-file
dc.dynamic wait_for_file(dc.dynamic file$1, dc.dynamic dead$1, ) async {
dc.dynamic tries$1=0;
do {
final dc.dynamic test$1=(file$1.existsSync());
if(((false != test$1) && (null != test$1))){
return (file$1.readAsStringSync());
}
final dc.dynamic or$6824_$AUTO_$1=lcoc_core.deref(dead$1, );
late final dc.dynamic $if_$1;
if(((false != or$6824_$AUTO_$1) && (null != or$6824_$AUTO_$1))){
$if_$1=or$6824_$AUTO_$1;
}else{
$if_$1=((tries$1 as dc.num) > 3000);
}
if(((false != $if_$1) && (null != $if_$1))){
throw dc.Exception("the Dart VM did not start", );
}
((await (da.Future.delayed(const dc.Duration(milliseconds: 10, ), ))));
tries$1=(1 + (tries$1 as dc.num));
continue;
} while(true);
}

// END wait-for-file

// BEGIN wait-for-isolate
dc.dynamic wait_for_isolate(dc.dynamic vm$1, ) async {
dc.dynamic tries$1=0;
do {
if(((tries$1 as dc.num) > 3000)){
throw dc.Exception("the Dart VM did not become ready", );
}else{
}
final dc.dynamic o7258$1=(await lcoc_repl.rpc(vm$1, "getVM", lcoc_core.$_EMPTY_MAP, ));
late final dc.dynamic o7258$2;
if((o7258$1 is lcoc_core.ILookup$iface)){
o7258$2=((o7258$1 as lcoc_core.ILookup$iface).$_lookup$1("result", ));
}else{
o7258$2=((lcoc_core.ILookup.extensions(o7258$1, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$1, "result", ));
}
late final dc.dynamic isolates$1;
if((o7258$2 is lcoc_core.ILookup$iface)){
isolates$1=((o7258$2 as lcoc_core.ILookup$iface).$_lookup$1("isolates", ));
}else{
isolates$1=((lcoc_core.ILookup.extensions(o7258$2, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$2, "isolates", ));
}
late final dc.dynamic $if_$1;
if(((false != isolates$1) && (null != isolates$1))){
$if_$1=isolates$1.isNotEmpty;
}else{
$if_$1=isolates$1;
}
late final dc.dynamic id$1;
if(((false != $if_$1) && (null != $if_$1))){
final dc.dynamic o7258$3=isolates$1.first;
if((o7258$3 is lcoc_core.ILookup$iface)){
id$1=((o7258$3 as lcoc_core.ILookup$iface).$_lookup$1("id", ));
}else{
id$1=((lcoc_core.ILookup.extensions(o7258$3, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$3, "id", ));
}
}else{
id$1=null;
}
late final dc.dynamic isolate$1;
if(((false != id$1) && (null != id$1))){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "isolateId", ));
(fl$1[1]=id$1);
final dc.dynamic $1=lcoc_repl.rpc(vm$1, "getIsolate", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$1, ), -1, ), );
final dc.dynamic o7258$4=(await $1);
if((o7258$4 is lcoc_core.ILookup$iface)){
isolate$1=((o7258$4 as lcoc_core.ILookup$iface).$_lookup$1("result", ));
}else{
isolate$1=((lcoc_core.ILookup.extensions(o7258$4, ) as lcoc_core.ILookup$ext).$_lookup$1(o7258$4, "result", ));
}
}else{
isolate$1=null;
}
late final dc.dynamic rpcs$1;
if(((false != isolate$1) && (null != isolate$1))){
if((isolate$1 is lcoc_core.ILookup$iface)){
rpcs$1=((isolate$1 as lcoc_core.ILookup$iface).$_lookup$1("extensionRPCs", ));
}else{
rpcs$1=((lcoc_core.ILookup.extensions(isolate$1, ) as lcoc_core.ILookup$ext).$_lookup$1(isolate$1, "extensionRPCs", ));
}
}else{
rpcs$1=null;
}
late final dc.dynamic $if_$2;
if(((false != rpcs$1) && (null != rpcs$1))){
$if_$2=(rpcs$1.contains("ext.cljd.eval", ));
}else{
$if_$2=rpcs$1;
}
if(((false != $if_$2) && (null != $if_$2))){
return id$1;
}
((await (da.Future.delayed(const dc.Duration(milliseconds: 10, ), ))));
tries$1=(1 + (tries$1 as dc.num));
continue;
} while(true);
}

// END wait-for-isolate

// BEGIN write
dc.dynamic write(dc.dynamic s$1, ){
return (d_io.stdout.write(s$1, ));
}

// END write

// BEGIN writeln
dc.dynamic writeln(dc.dynamic s$1, ){
return (d_io.stdout.writeln(s$1, ));
}

// END writeln
