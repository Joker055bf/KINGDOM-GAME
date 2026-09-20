.class public Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# static fields
.field private static REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SPECIAL_CHAR_NO_WHITESPACE:Ljava/util/regex/Pattern;

.field private static SPECIAL_CHAR_WHITESPACE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "(&[a-z]*;|&#x?([a-f]|[A-F]|[0-9])*;|[\\s\n]+)"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->SPECIAL_CHAR_WHITESPACE:Ljava/util/regex/Pattern;

    const-string v0, "(&[a-z]*;|&#x?([a-f]|[A-F]|[0-9])*;)"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->SPECIAL_CHAR_NO_WHITESPACE:Ljava/util/regex/Pattern;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&nbsp;"

    const-string v2, "\u00a0"

    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&cent;"

    const-string v2, "\u00a2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&sect;"

    const-string v2, "\u00a7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ldquo;"

    const-string v2, "\u201c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&rdquo;"

    const-string v2, "\u201d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&lsquo;"

    const-string v2, "\u2018"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&rsquo;"

    const-string v2, "\u2019"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ndash;"

    const-string v2, "\u2013"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&mdash;"

    const-string v2, "\u2014"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&horbar;"

    const-string v2, "\u2015"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&iexcl;"

    const-string v2, "\u00a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&pound;"

    const-string v2, "\u00a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&curren;"

    const-string v2, "\u00a4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&yen;"

    const-string v2, "\u00a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&brvbar;"

    const-string v2, "\u00a6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&uml;"

    const-string v2, "\u00a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&copy;"

    const-string v2, "\u00a9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ordf;"

    const-string v2, "\u00aa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&laquo;"

    const-string v2, "\u00ab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&not;"

    const-string v2, "\u00ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&reg;"

    const-string v2, "\u00ae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&macr;"

    const-string v2, "\u00af"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&deg;"

    const-string v2, "\u00b0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&plusmn;"

    const-string v2, "\u00b1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&sup2;"

    const-string v2, "\u00b2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&sup3;"

    const-string v2, "\u00b3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&acute;"

    const-string v2, "\u00b4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&micro;"

    const-string v2, "\u00b5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&para;"

    const-string v2, "\u00b6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&middot;"

    const-string v2, "\u00b7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&cedil;"

    const-string v2, "\u00b8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&sup1;"

    const-string v2, "\u00b9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ordm;"

    const-string v2, "\u00ba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&raquo;"

    const-string v2, "\u00bb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&frac14;"

    const-string v2, "\u00bc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&frac12;"

    const-string v2, "\u00bd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&frac34;"

    const-string v2, "\u00be"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&iquest;"

    const-string v2, "\u00bf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&times;"

    const-string v2, "\u00d7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&divide;"

    const-string v2, "\u00f7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Agrave;"

    const-string v2, "\u00c0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Aacute;"

    const-string v2, "\u00c1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Acirc;"

    const-string v2, "\u00c2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Atilde;"

    const-string v2, "\u00c3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Auml;"

    const-string v2, "\u00c4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Aring;"

    const-string v2, "\u00c5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&AElig;"

    const-string v2, "\u00c6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ccedil;"

    const-string v2, "\u00c7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Egrave;"

    const-string v2, "\u00c8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Eacute;"

    const-string v2, "\u00c9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ecirc;"

    const-string v2, "\u00ca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Euml;"

    const-string v2, "\u00cb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Igrave;"

    const-string v2, "\u00cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Iacute;"

    const-string v2, "\u00cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Icirc;"

    const-string v2, "\u00ce"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Iuml;"

    const-string v2, "\u00cf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ETH;"

    const-string v2, "\u00d0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ntilde;"

    const-string v2, "\u00d1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ograve;"

    const-string v2, "\u00d2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Oacute;"

    const-string v2, "\u00d3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ocirc;"

    const-string v2, "\u00d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Otilde;"

    const-string v2, "\u00d5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ouml;"

    const-string v2, "\u00d6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Oslash;"

    const-string v2, "\u00d8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ugrave;"

    const-string v2, "\u00d9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Uacute;"

    const-string v2, "\u00da"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Ucirc;"

    const-string v2, "\u00db"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Uuml;"

    const-string v2, "\u00dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&Yacute;"

    const-string v2, "\u00dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&THORN;"

    const-string v2, "\u00de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&szlig;"

    const-string v2, "\u00df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&agrave;"

    const-string v2, "\u00e0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&aacute;"

    const-string v2, "\u00e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&acirc;"

    const-string v2, "\u00e2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&atilde;"

    const-string v2, "\u00e3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&auml;"

    const-string v2, "\u00e4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&aring;"

    const-string v2, "\u00e5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&aelig;"

    const-string v2, "\u00e6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ccedil;"

    const-string v2, "\u00e7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&egrave;"

    const-string v2, "\u00e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&eacute;"

    const-string v2, "\u00e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ecirc;"

    const-string v2, "\u00ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&euml;"

    const-string v2, "\u00eb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&igrave;"

    const-string v2, "\u00ec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&iacute;"

    const-string v2, "\u00ed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&icirc;"

    const-string v2, "\u00ee"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&iuml;"

    const-string v2, "\u00ef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&eth;"

    const-string v2, "\u00f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ntilde;"

    const-string v2, "\u00f1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ograve;"

    const-string v2, "\u00f2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&oacute;"

    const-string v2, "\u00f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ocirc;"

    const-string v2, "\u00f4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&otilde;"

    const-string v2, "\u00f5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ouml;"

    const-string v2, "\u00f6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&oslash;"

    const-string v2, "\u00f8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ugrave;"

    const-string v2, "\u00f9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&uacute;"

    const-string v2, "\u00fa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&ucirc;"

    const-string v2, "\u00fb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&uuml;"

    const-string v2, "\u00fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&yacute;"

    const-string v2, "\u00fd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&thorn;"

    const-string v2, "\u00fe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    const-string v1, "&yuml;"

    const-string v2, "\u00ff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReplacement(Ljava/util/regex/Matcher;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "0x"

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "&#"

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "&#x"

    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x2

    .line 187
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 191
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public static replaceHtmlEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->REPLACEMENTS:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 149
    sget-object p1, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->SPECIAL_CHAR_NO_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_0
    sget-object p1, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->SPECIAL_CHAR_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    const-string v2, " "

    .line 152
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\n"

    .line 153
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :catch_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    :try_start_0
    invoke-static {p0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/TextUtil;->getReplacement(Ljava/util/regex/Matcher;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
