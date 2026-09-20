.class public Lorg/htmlcleaner/SpecialEntities;
.super Ljava/lang/Object;
.source "SpecialEntities.java"


# static fields
.field public static final INSTANCE:Lorg/htmlcleaner/SpecialEntities;

.field public static final NON_BREAKABLE_SPACE:C = '\u00a0'


# instance fields
.field private entities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/SpecialEntity;",
            ">;"
        }
    .end annotation
.end field

.field private entitiesByUnicodeCharcode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/htmlcleaner/SpecialEntity;",
            ">;"
        }
    .end annotation
.end field

.field private greek:Z

.field private math:Z

.field private maxEntityLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/htmlcleaner/SpecialEntities$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/htmlcleaner/SpecialEntities$1;-><init>(ZZ)V

    sput-object v0, Lorg/htmlcleaner/SpecialEntities;->INSTANCE:Lorg/htmlcleaner/SpecialEntities;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/SpecialEntities;->entities:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/SpecialEntities;->entitiesByUnicodeCharcode:Ljava/util/Map;

    .line 73
    iput-boolean p1, p0, Lorg/htmlcleaner/SpecialEntities;->greek:Z

    .line 74
    iput-boolean p2, p0, Lorg/htmlcleaner/SpecialEntities;->math:Z

    .line 75
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "null"

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 76
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "nbsp"

    const/16 v1, 0xa0

    const/4 v3, 0x0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 77
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "iexcl"

    const/16 v1, 0xa1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 78
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "cent"

    const/16 v1, 0xa2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 79
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "pound"

    const/16 v1, 0xa3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 80
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "curren"

    const/16 v1, 0xa4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 81
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "yen"

    const/16 v1, 0xa5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 82
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "brvbar"

    const/16 v1, 0xa6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 83
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sect"

    const/16 v1, 0xa7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 84
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "uml"

    const/16 v1, 0xa8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 85
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "copy"

    const/16 v1, 0xa9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 86
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ordf"

    const/16 v1, 0xaa

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 87
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "laquo"

    const/16 v1, 0xab

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 88
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "not"

    const/16 v1, 0xac

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 89
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "shy"

    const/16 v1, 0xad

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 90
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "reg"

    const/16 v1, 0xae

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 91
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "macr"

    const/16 v1, 0xaf

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 92
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "deg"

    const/16 v1, 0xb0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 93
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "plusmn"

    const/16 v1, 0xb1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 94
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sup2"

    const/16 v1, 0xb2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 95
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sup3"

    const/16 v1, 0xb3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 96
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "acute"

    const/16 v1, 0xb4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 97
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "micro"

    const/16 v1, 0xb5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 98
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "para"

    const/16 v1, 0xb6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 99
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "middot"

    const/16 v1, 0xb7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 100
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "cedil"

    const/16 v1, 0xb8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 101
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sup1"

    const/16 v1, 0xb9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 102
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ordm"

    const/16 v1, 0xba

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 103
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "raquo"

    const/16 v1, 0xbb

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 104
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "frac14"

    const/16 v1, 0xbc

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 105
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "frac12"

    const/16 v1, 0xbd

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 106
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "frac34"

    const/16 v1, 0xbe

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 107
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "iquest"

    const/16 v1, 0xbf

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 108
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Agrave"

    const/16 v1, 0xc0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 109
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Aacute"

    const/16 v1, 0xc1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 110
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Acirc"

    const/16 v1, 0xc2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 111
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Atilde"

    const/16 v1, 0xc3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 113
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Auml"

    const/16 v1, 0xc4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 114
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Aring"

    const/16 v1, 0xc5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 115
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "AElig"

    const/16 v1, 0xc6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 116
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ccedil"

    const/16 v1, 0xc7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 117
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Egrave"

    const/16 v1, 0xc8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 118
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Eacute"

    const/16 v1, 0xc9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 119
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ecirc"

    const/16 v1, 0xca

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 120
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Euml"

    const/16 v1, 0xcb

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 121
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Igrave"

    const/16 v1, 0xcc

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 122
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Iacute"

    const/16 v1, 0xcd

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 123
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Icirc"

    const/16 v1, 0xce

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 124
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Iuml"

    const/16 v1, 0xcf

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 125
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ETH"

    const/16 v1, 0xd0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 126
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ntilde"

    const/16 v1, 0xd1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 127
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ograve"

    const/16 v1, 0xd2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 128
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Oacute"

    const/16 v1, 0xd3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 129
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ocirc"

    const/16 v1, 0xd4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 130
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Otilde"

    const/16 v1, 0xd5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 131
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ouml"

    const/16 v1, 0xd6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 132
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "times"

    const/16 v1, 0xd7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 133
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Oslash"

    const/16 v1, 0xd8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 134
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ugrave"

    const/16 v1, 0xd9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 135
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Uacute"

    const/16 v1, 0xda

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 136
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Ucirc"

    const/16 v1, 0xdb

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 137
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Uuml"

    const/16 v1, 0xdc

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 138
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Yacute"

    const/16 v1, 0xdd

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 139
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "THORN"

    const/16 v1, 0xde

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 140
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "szlig"

    const/16 v1, 0xdf

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 141
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "agrave"

    const/16 v1, 0xe0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 142
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "aacute"

    const/16 v1, 0xe1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 143
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "acirc"

    const/16 v1, 0xe2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 144
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "atilde"

    const/16 v1, 0xe3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 145
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "auml"

    const/16 v1, 0xe4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 146
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "aring"

    const/16 v1, 0xe5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 147
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "aelig"

    const/16 v1, 0xe6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 148
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ccedil"

    const/16 v1, 0xe7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 149
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "egrave"

    const/16 v1, 0xe8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 150
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "eacute"

    const/16 v1, 0xe9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 151
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ecirc"

    const/16 v1, 0xea

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 152
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "euml"

    const/16 v1, 0xeb

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 153
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "igrave"

    const/16 v1, 0xec

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 154
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "iacute"

    const/16 v1, 0xed

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 155
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "icirc"

    const/16 v1, 0xee

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 156
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "iuml"

    const/16 v1, 0xef

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 157
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "eth"

    const/16 v1, 0xf0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 158
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ntilde"

    const/16 v1, 0xf1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 159
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ograve"

    const/16 v1, 0xf2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 160
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "oacute"

    const/16 v1, 0xf3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 161
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ocirc"

    const/16 v1, 0xf4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 162
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "otilde"

    const/16 v1, 0xf5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 163
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ouml"

    const/16 v1, 0xf6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 164
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "divide"

    const/16 v1, 0xf7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 165
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "oslash"

    const/16 v1, 0xf8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 166
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ugrave"

    const/16 v1, 0xf9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 167
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "uacute"

    const/16 v1, 0xfa

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 168
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ucirc"

    const/16 v1, 0xfb

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 169
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "uuml"

    const/16 v1, 0xfc

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 170
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "yacute"

    const/16 v1, 0xfd

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 171
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "thorn"

    const/16 v1, 0xfe

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 172
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "yuml"

    const/16 v1, 0xff

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 174
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "OElig"

    const/16 v1, 0x152

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 175
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "oelig"

    const/16 v1, 0x153

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 176
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Scaron"

    const/16 v1, 0x160

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 177
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "scaron"

    const/16 v1, 0x161

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 178
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Yuml"

    const/16 v1, 0x178

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 179
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "fnof"

    const/16 v1, 0x192

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 180
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "circ"

    const/16 v1, 0x2c6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 181
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "tilde"

    const/16 v1, 0x2dc

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 182
    iget-boolean p1, p0, Lorg/htmlcleaner/SpecialEntities;->greek:Z

    if-eqz p1, :cond_0

    .line 184
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Alpha"

    const/16 v1, 0x391

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 186
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Beta"

    const/16 v1, 0x392

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 188
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Gamma"

    const/16 v1, 0x393

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 190
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Delta"

    const/16 v1, 0x394

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 192
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Epsilon"

    const/16 v1, 0x395

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 194
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Zeta"

    const/16 v1, 0x396

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 196
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Eta"

    const/16 v1, 0x397

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 198
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Theta"

    const/16 v1, 0x398

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 200
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Iota"

    const/16 v1, 0x399

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 202
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Kappa"

    const/16 v1, 0x39a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 204
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Lambda"

    const/16 v1, 0x39b

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 206
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Mu"

    const/16 v1, 0x39c

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 208
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Nu"

    const/16 v1, 0x39d

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 210
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Xi"

    const/16 v1, 0x39e

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 212
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Omicron"

    const/16 v1, 0x39f

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 214
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Pi"

    const/16 v1, 0x3a0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 216
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Rho"

    const/16 v1, 0x3a1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 219
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Sigma"

    const/16 v1, 0x3a3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 221
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Tau"

    const/16 v1, 0x3a4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 223
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Upsilon"

    const/16 v1, 0x3a5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 225
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Phi"

    const/16 v1, 0x3a6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 227
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Chi"

    const/16 v1, 0x3a7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 229
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Psi"

    const/16 v1, 0x3a8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 231
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Omega"

    const/16 v1, 0x3a9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 233
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "alpha"

    const/16 v1, 0x3b1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 235
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "beta"

    const/16 v1, 0x3b2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 237
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "gamma"

    const/16 v1, 0x3b3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 239
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "delta"

    const/16 v1, 0x3b4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 241
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "epsilon"

    const/16 v1, 0x3b5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 243
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "zeta"

    const/16 v1, 0x3b6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 245
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "eta"

    const/16 v1, 0x3b7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 247
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "theta"

    const/16 v1, 0x3b8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 249
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "iota"

    const/16 v1, 0x3b9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 251
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "kappa"

    const/16 v1, 0x3ba

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 253
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lambda"

    const/16 v1, 0x3bb

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 255
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "mu"

    const/16 v1, 0x3bc

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 257
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "nu"

    const/16 v1, 0x3bd

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 259
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "xi"

    const/16 v1, 0x3be

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 261
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "omicron"

    const/16 v1, 0x3bf

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 263
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "pi"

    const/16 v1, 0x3c0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 265
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rho"

    const/16 v1, 0x3c1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 267
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sigmaf"

    const/16 v1, 0x3c2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 269
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sigma"

    const/16 v1, 0x3c3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 271
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "tau"

    const/16 v1, 0x3c4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 273
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "upsilon"

    const/16 v1, 0x3c5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 275
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "phi"

    const/16 v1, 0x3c6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 277
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "chi"

    const/16 v1, 0x3c7

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 279
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "psi"

    const/16 v1, 0x3c8

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 281
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "omega"

    const/16 v1, 0x3c9

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 283
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "thetasym"

    const/16 v1, 0x3d1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 285
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "upsih"

    const/16 v1, 0x3d2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 287
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "piv"

    const/16 v1, 0x3d6

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 289
    :cond_0
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ensp"

    const/16 v1, 0x2002

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 290
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "emsp"

    const/16 v1, 0x2003

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 291
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "thinsp"

    const/16 v1, 0x2009

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 292
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "zwnj"

    const/16 v1, 0x200c

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 293
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "zwj"

    const/16 v1, 0x200d

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 294
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lrm"

    const/16 v1, 0x200e

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 295
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rlm"

    const/16 v1, 0x200f

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 296
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ndash"

    const/16 v1, 0x2013

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 297
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "mdash"

    const/16 v1, 0x2014

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 298
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lsquo"

    const/16 v1, 0x2018

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 299
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rsquo"

    const/16 v1, 0x2019

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 300
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sbquo"

    const/16 v1, 0x201a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 301
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ldquo"

    const/16 v1, 0x201c

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 302
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rdquo"

    const/16 v1, 0x201d

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 303
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "bdquo"

    const/16 v1, 0x201e

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 304
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "dagger"

    const/16 v1, 0x2020

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 305
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Dagger"

    const/16 v1, 0x2021

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 306
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "bull"

    const/16 v1, 0x2022

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 308
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "hellip"

    const/16 v1, 0x2026

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 309
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "permil"

    const/16 v1, 0x2030

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 310
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "prime"

    const/16 v1, 0x2032

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 311
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "Prime"

    const/16 v1, 0x2033

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 312
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lsaquo"

    const/16 v1, 0x2039

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 313
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rsaquo"

    const/16 v1, 0x203a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 314
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "oline"

    const/16 v1, 0x203e

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 315
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "frasl"

    const/16 v1, 0x2044

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 316
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "euro"

    const/16 v1, 0x20ac

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 317
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "image"

    const/16 v1, 0x2111

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 318
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "weierp"

    const/16 v1, 0x2118

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 319
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "real"

    const/16 v1, 0x211c

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 320
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "trade"

    const/16 v1, 0x2122

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 321
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "alefsym"

    const/16 v1, 0x2135

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 322
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "larr"

    const/16 v1, 0x2190

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 323
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "uarr"

    const/16 v1, 0x2191

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 324
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rarr"

    const/16 v1, 0x2192

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 325
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "darr"

    const/16 v1, 0x2193

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 326
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "harr"

    const/16 v1, 0x2194

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 327
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "crarr"

    const/16 v1, 0x21b5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 328
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lArr"

    const/16 v1, 0x21d0

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 329
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "uArr"

    const/16 v1, 0x21d1

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 330
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rArr"

    const/16 v1, 0x21d2

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 331
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "dArr"

    const/16 v1, 0x21d3

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 332
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "hArr"

    const/16 v1, 0x21d4

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 333
    iget-boolean p1, p0, Lorg/htmlcleaner/SpecialEntities;->math:Z

    if-eqz p1, :cond_1

    .line 335
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "forall"

    const/16 v1, 0x2200

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 337
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "part"

    const/16 v1, 0x2202

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 339
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "exist"

    const/16 v1, 0x2203

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 341
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "empty"

    const/16 v1, 0x2205

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 343
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "nabla"

    const/16 v1, 0x2207

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 345
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "isin"

    const/16 v1, 0x2208

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 347
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "notin"

    const/16 v1, 0x2209

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 349
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ni"

    const/16 v1, 0x220b

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 352
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "prod"

    const/16 v1, 0x220f

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 355
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sum"

    const/16 v1, 0x2211

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 357
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "minus"

    const/16 v1, 0x2212

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 359
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lowast"

    const/16 v1, 0x2217

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 361
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "radic"

    const/16 v1, 0x221a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 363
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "prop"

    const/16 v1, 0x221d

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 365
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "infin"

    const/16 v1, 0x221e

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 367
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ang"

    const/16 v1, 0x2220

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 369
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "and"

    const/16 v1, 0x2227

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 371
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "or"

    const/16 v1, 0x2228

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 373
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "cap"

    const/16 v1, 0x2229

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 375
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "cup"

    const/16 v1, 0x222a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 377
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "int"

    const/16 v1, 0x222b

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 379
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "there4"

    const/16 v1, 0x2234

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 382
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sim"

    const/16 v1, 0x223c

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 384
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "cong"

    const/16 v1, 0x2245

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 386
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "asymp"

    const/16 v1, 0x2248

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 388
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ne"

    const/16 v1, 0x2260

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 390
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "equiv"

    const/16 v1, 0x2261

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 392
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "le"

    const/16 v1, 0x2264

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 394
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "ge"

    const/16 v1, 0x2265

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 396
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sub"

    const/16 v1, 0x2282

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 398
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sup"

    const/16 v1, 0x2283

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 401
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "nsub"

    const/16 v1, 0x2284

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 403
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sube"

    const/16 v1, 0x2286

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 405
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "supe"

    const/16 v1, 0x2287

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 407
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "oplus"

    const/16 v1, 0x2295

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 409
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "otimes"

    const/16 v1, 0x2297

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 411
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "perp"

    const/16 v1, 0x22a5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 413
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "sdot"

    const/16 v1, 0x22c5

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 416
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lceil"

    const/16 v1, 0x2308

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 418
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rceil"

    const/16 v1, 0x2309

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 420
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lfloor"

    const/16 v1, 0x230a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 422
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rfloor"

    const/16 v1, 0x230b

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 425
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lang"

    const/16 v1, 0x2329

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 428
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "rang"

    const/16 v1, 0x232a

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 430
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "loz"

    const/16 v1, 0x25ca

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 433
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "spades"

    const/16 v1, 0x2660

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 435
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "clubs"

    const/16 v1, 0x2663

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 437
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "hearts"

    const/16 v1, 0x2665

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 439
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "diams"

    const/16 v1, 0x2666

    invoke-direct {p1, p2, v1, v3, v2}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 441
    :cond_1
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "amp"

    const/16 v1, 0x26

    invoke-direct {p1, p2, v1, v3, v0}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 442
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "lt"

    const/16 v1, 0x3c

    invoke-direct {p1, p2, v1, v3, v0}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 443
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "gt"

    const/16 v1, 0x3e

    invoke-direct {p1, p2, v1, v3, v0}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 444
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const-string p2, "quot"

    const/16 v1, 0x22

    invoke-direct {p1, p2, v1, v3, v0}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    .line 447
    new-instance p1, Lorg/htmlcleaner/SpecialEntity;

    const/16 p2, 0x27

    const-string v1, "\'"

    const-string v2, "apos"

    invoke-direct {p1, v2, p2, v1, v0}, Lorg/htmlcleaner/SpecialEntity;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    return-void
.end method

.method private _put(Lorg/htmlcleaner/SpecialEntity;)V
    .locals 5

    .line 482
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntities;->entities:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/htmlcleaner/SpecialEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/SpecialEntity;

    const-string v1, " with "

    const-string v2, "replaced "

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntities;->entitiesByUnicodeCharcode:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/htmlcleaner/SpecialEntity;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/SpecialEntity;

    if-nez v0, :cond_0

    .line 490
    iget v0, p0, Lorg/htmlcleaner/SpecialEntities;->maxEntityLength:I

    invoke-virtual {p1}, Lorg/htmlcleaner/SpecialEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/htmlcleaner/SpecialEntities;->maxEntityLength:I

    return-void

    .line 488
    :cond_0
    new-instance v3, Lorg/htmlcleaner/HtmlCleanerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    :cond_1
    new-instance v3, Lorg/htmlcleaner/HtmlCleanerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getMaxEntityLength()I
    .locals 1

    .line 493
    iget v0, p0, Lorg/htmlcleaner/SpecialEntities;->maxEntityLength:I

    return v0
.end method

.method public getSpecialEntity(Ljava/lang/String;)Lorg/htmlcleaner/SpecialEntity;
    .locals 3

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/16 v1, 0x3b

    .line 458
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 465
    :goto_0
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntities;->entities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/SpecialEntity;

    return-object p1
.end method

.method public getSpecialEntityByUnicode(I)Lorg/htmlcleaner/SpecialEntity;
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/htmlcleaner/SpecialEntities;->entitiesByUnicodeCharcode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/SpecialEntity;

    return-object p1
.end method

.method public put(Lorg/htmlcleaner/SpecialEntity;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Lorg/htmlcleaner/SpecialEntities;->_put(Lorg/htmlcleaner/SpecialEntity;)V

    return-void
.end method
