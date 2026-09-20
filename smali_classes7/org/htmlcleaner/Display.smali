.class public final enum Lorg/htmlcleaner/Display;
.super Ljava/lang/Enum;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/htmlcleaner/Display;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/htmlcleaner/Display;

.field public static final enum any:Lorg/htmlcleaner/Display;

.field public static final enum block:Lorg/htmlcleaner/Display;

.field public static final enum inline:Lorg/htmlcleaner/Display;

.field public static final enum none:Lorg/htmlcleaner/Display;


# instance fields
.field private afterTagLineBreakNeeded:Z

.field private leadingAndEndWhitespacesAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lorg/htmlcleaner/Display;

    const-string v1, "block"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/htmlcleaner/Display;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    .line 23
    new-instance v1, Lorg/htmlcleaner/Display;

    const-string v4, "inline"

    invoke-direct {v1, v4, v3, v2, v3}, Lorg/htmlcleaner/Display;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    .line 31
    new-instance v4, Lorg/htmlcleaner/Display;

    const-string v5, "any"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3, v2}, Lorg/htmlcleaner/Display;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    .line 37
    new-instance v5, Lorg/htmlcleaner/Display;

    const-string v7, "none"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3, v2}, Lorg/htmlcleaner/Display;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/htmlcleaner/Display;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    .line 11
    sput-object v7, Lorg/htmlcleaner/Display;->$VALUES:[Lorg/htmlcleaner/Display;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-boolean p3, p0, Lorg/htmlcleaner/Display;->afterTagLineBreakNeeded:Z

    .line 44
    iput-boolean p4, p0, Lorg/htmlcleaner/Display;->leadingAndEndWhitespacesAllowed:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/htmlcleaner/Display;
    .locals 1

    .line 11
    const-class v0, Lorg/htmlcleaner/Display;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/htmlcleaner/Display;

    return-object p0
.end method

.method public static values()[Lorg/htmlcleaner/Display;
    .locals 1

    .line 11
    sget-object v0, Lorg/htmlcleaner/Display;->$VALUES:[Lorg/htmlcleaner/Display;

    invoke-virtual {v0}, [Lorg/htmlcleaner/Display;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/htmlcleaner/Display;

    return-object v0
.end method


# virtual methods
.method public isAfterTagLineBreakNeeded()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lorg/htmlcleaner/Display;->afterTagLineBreakNeeded:Z

    return v0
.end method

.method public isLeadingAndEndWhitespacesAllowed()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/htmlcleaner/Display;->leadingAndEndWhitespacesAllowed:Z

    return v0
.end method
