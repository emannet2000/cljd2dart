// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "transpile.dart" as lcoc_transpile;
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "dart:io" as d_io;
import "dart:async" as da;
import "main.dart" as lcoc_main;
import "repl.dart" as lcoc_repl;
import "../cljd/string.dart" as lcoc_string;
import "../cljd/reader.dart" as lcoc_reader;

// BEGIN default-output
dc.dynamic default_output(dc.dynamic input$1, ){
if(lcoc_string.ends_with$QMARK_(input$1, ".cljd", )){
late final dc.int cast$1;
if((input$1 is lcoc_core.ICounted$iface)){
cast$1=(((input$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(input$1, ) as lcoc_core.ICounted$ext).$_count$0(input$1, )) as dc.int);
}
final dc.int $1=(cast$1 - 5);
final dc.String $2=(lcoc_core.subs.$_invoke$3(input$1, 0, $1, ));
return (lcoc_core.str.$_invoke$2($2, ".dart", ));
}
if(lcoc_string.ends_with$QMARK_(input$1, ".clj", )){
late final dc.int cast$2;
if((input$1 is lcoc_core.ICounted$iface)){
cast$2=(((input$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(input$1, ) as lcoc_core.ICounted$ext).$_count$0(input$1, )) as dc.int);
}
final dc.int $3=(cast$2 - 4);
final dc.String $4=(lcoc_core.subs.$_invoke$3(input$1, 0, $3, ));
return (lcoc_core.str.$_invoke$2($4, ".dart", ));
}
return (lcoc_core.str.$_invoke$2(input$1, ".dart", ));
}

// END default-output

// BEGIN main
dc.dynamic main(dc.dynamic args$1, ) async {
late final dc.dynamic $if_$1;
if(((false != args$1) && (null != args$1))){
$if_$1=args$1;
}else{
$if_$1=lcoc_core.$_EMPTY_VECTOR;
}
final lcoc_core.PersistentVector args$2=lcoc_core.vec($if_$1, );
final dc.dynamic test$1=lcoc_core.some((dc.dynamic a$1, ){
return (lcoc_core.$EQ_.$_invoke$2(a$1, "--repl", ));
}, args$2, );
if(((false != test$1) && (null != test$1))){
return (await lcoc_repl.repl_main());
}
final dc.dynamic opts$1=lcoc_main.parse_args(args$2, );
final dc.dynamic test$2=(const lcoc_core.Keyword(null, "help", 4280215376, ).$_invoke$1(opts$1, ));
if(((false != test$2) && (null != test$2))){
return lcoc_main.usage();
}
final dc.dynamic test$3=(const lcoc_core.Keyword(null, "version", 4138456560, ).$_invoke$1(opts$1, ));
if(((false != test$3) && (null != test$3))){
return (lcoc_core.println.$_invoke$1((lcoc_core.str.$_invoke$2("cljd2dart ", lcoc_main.version$v1, )), ));
}
if((null == (const lcoc_core.Keyword(null, "input", 3079316333, ).$_invoke$1(opts$1, )))){
(lcoc_main.usage());
return d_io.exit(2, );
}
final dc.dynamic input$1=(const lcoc_core.Keyword(null, "input", 3079316333, ).$_invoke$1(opts$1, ));
late final dc.dynamic source$1;
if((lcoc_core.$EQ_.$_invoke$2(input$1, "-", ))){
source$1=lcoc_main.read_stdin();
}else{
source$1=(d_io.File((input$1 as dc.String), ).readAsStringSync());
}
final dc.dynamic forms$1=(await lcoc_main.read_forms(lcoc_transpile.normalize_percent_args(source$1, ), ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "source-name", 2122676934, ), ));
(fl$1[1]=input$1);
final dc.dynamic dart$1=lcoc_transpile.transpile_forms(forms$1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 64, 64, fl$1, ), -1, ), );
final dc.dynamic or$6824_$AUTO_$2=(const lcoc_core.Keyword(null, "output", 3255666940, ).$_invoke$1(opts$1, ));
late final dc.dynamic output$1;
if(((false != or$6824_$AUTO_$2) && (null != or$6824_$AUTO_$2))){
output$1=or$6824_$AUTO_$2;
}else{
output$1=lcoc_main.default_output(input$1, );
}
final dc.dynamic test$4=(const lcoc_core.Keyword(null, "stdout", 1282561648, ).$_invoke$1(opts$1, ));
if(((false != test$4) && (null != test$4))){
return (lcoc_core.print.$_invoke$1(dart$1, ));
}
(d_io.File((output$1 as dc.String), ).writeAsStringSync((dart$1 as dc.String), ));
return (lcoc_core.println.$_invoke$1((lcoc_core.str.$_invoke$2("wrote ", output$1, )), ));
}

// END main

// BEGIN parse-args
dc.dynamic parse_args(dc.dynamic args$1, ){
dc.dynamic xs$1=lcoc_core.vec(args$1, );
dc.dynamic input$1=null;
dc.dynamic output$1=null;
dc.dynamic stdout$QMARK_$1=false;
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
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "input", 3079316333, ), ));
(fl$1[1]=input$1);
(fl$1[2]=const lcoc_core.Keyword(null, "stdout", 1282561648, ));
(fl$1[3]=stdout$QMARK_$1);
(fl$1[4]=const lcoc_core.Keyword(null, "output", 3255666940, ));
(fl$1[5]=output$1);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 268509184, 268509184, fl$1, ), -1, );
}
final dc.dynamic a$1=lcoc_core.first(xs$1, );
final dc.bool or$6824_$AUTO_$1=(lcoc_core.$EQ_.$_invoke$2(a$1, "-h", ));
late final dc.bool $if_$3;
if(or$6824_$AUTO_$1){
$if_$3=or$6824_$AUTO_$1;
}else{
$if_$3=(lcoc_core.$EQ_.$_invoke$2(a$1, "--help", ));
}
if($if_$3){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "help", 4280215376, ), ));
(fl$2[1]=true);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$2, ), -1, );
}
final dc.bool or$6824_$AUTO_$2=(lcoc_core.$EQ_.$_invoke$2(a$1, "-v", ));
late final dc.bool $if_$4;
if(or$6824_$AUTO_$2){
$if_$4=or$6824_$AUTO_$2;
}else{
$if_$4=(lcoc_core.$EQ_.$_invoke$2(a$1, "--version", ));
}
if($if_$4){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "version", 4138456560, ), ));
(fl$3[1]=true);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$3, ), -1, );
}
final dc.bool or$6824_$AUTO_$3=(lcoc_core.$EQ_.$_invoke$2(a$1, "-o", ));
late final dc.bool $if_$5;
if(or$6824_$AUTO_$3){
$if_$5=or$6824_$AUTO_$3;
}else{
$if_$5=(lcoc_core.$EQ_.$_invoke$2(a$1, "--output", ));
}
if($if_$5){
final dc.dynamic coll7154$1=xs$1;
late final dc.int cast$1;
if((coll7154$1 is lcoc_core.ICounted$iface)){
cast$1=(((coll7154$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(coll7154$1, ) as lcoc_core.ICounted$ext).$_count$0(coll7154$1, )) as dc.int);
}
final dc.bool $1=(cast$1 > 1);
if($1){
final dc.dynamic xs$1tmp=lcoc_core.vec((lcoc_core.drop.$_invoke$2(2, xs$1, )), );
output$1=lcoc_core.second(xs$1, );
xs$1=xs$1tmp;
continue;
}
throw dc.Exception("missing value after -o/--output", );
}
if((lcoc_core.$EQ_.$_invoke$2(a$1, "--stdout", ))){
xs$1=lcoc_core.vec(lcoc_core.rest(xs$1, ), );
stdout$QMARK_$1=true;
continue;
}
if(lcoc_string.starts_with$QMARK_(a$1, "--", )){
throw dc.Exception((lcoc_core.str.$_invoke$2("unknown option: ", a$1, )), );
}
if((null == input$1)){
xs$1=lcoc_core.vec(lcoc_core.rest(xs$1, ), );
input$1=a$1;
continue;
}
throw dc.Exception((lcoc_core.str.$_invoke$2("unexpected argument: ", a$1, )), );
} while(true);
}

// END parse-args

// BEGIN read-forms
dc.dynamic read_forms(dc.dynamic src$1, ) async {
return (await (lcoc_reader.read_stream((da.Stream.value(src$1, )), ).toList()));
}

// END read-forms

// BEGIN read-stdin
dc.dynamic read_stdin(){
final dc.StringBuffer sb$1=dc.StringBuffer();
do {
final dc.String? line$1=(d_io.stdin.readLineSync());
if((null == line$1)){
return (sb$1.toString());
}
(sb$1.write(line$1, ));
(sb$1.write("\n", ));
continue;
} while(true);
}

// END read-stdin

// BEGIN usage
dc.dynamic usage(){
(lcoc_core.println.$_invoke$1("cljd2dart - a small ClojureDart -> Dart source transpiler", ));
(lcoc_core.println.$_invoke$1("", ));
(lcoc_core.println.$_invoke$1("Usage:", ));
(lcoc_core.println.$_invoke$1("  cljd2dart <input.cljd> [-o output.dart]", ));
(lcoc_core.println.$_invoke$1("  cljd2dart <input.cljd> --stdout", ));
(lcoc_core.println.$_invoke$1("  cljd2dart --repl", ));
(lcoc_core.println.$_invoke$1("", ));
(lcoc_core.println.$_invoke$1("Options:", ));
(lcoc_core.println.$_invoke$1("  -o, --output <file>   Write Dart to <file>", ));
(lcoc_core.println.$_invoke$1("      --stdout          Write Dart to standard output", ));
(lcoc_core.println.$_invoke$1("      --repl            Start an interactive REPL", ));
(lcoc_core.println.$_invoke$1("  -h, --help            Show this help", ));
(lcoc_core.println.$_invoke$1("  -v, --version         Show the version", ));
(lcoc_core.println.$_invoke$1("", ));
(lcoc_core.println.$_invoke$1("If no output is given, the input extension is replaced with .dart.", ));
return (lcoc_core.println.$_invoke$1("Use '-' as the input path to read ClojureDart source from stdin.", ));
}

// END usage

// BEGIN version
dc.dynamic version$v1="0.1.0";

// END version
