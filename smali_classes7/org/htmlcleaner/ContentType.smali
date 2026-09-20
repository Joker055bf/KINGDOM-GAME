.class public final enum Lorg/htmlcleaner/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/htmlcleaner/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/htmlcleaner/ContentType;

.field public static final enum all:Lorg/htmlcleaner/ContentType;

.field public static final enum none:Lorg/htmlcleaner/ContentType;

.field public static final enum text:Lorg/htmlcleaner/ContentType;


# instance fields
.field private final dbCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lorg/htmlcleaner/ContentType;

    const-string v1, "all"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/htmlcleaner/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    .line 46
    new-instance v1, Lorg/htmlcleaner/ContentType;

    const-string v3, "none"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lorg/htmlcleaner/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    .line 47
    new-instance v3, Lorg/htmlcleaner/ContentType;

    const-string v5, "text"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lorg/htmlcleaner/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/htmlcleaner/ContentType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 41
    sput-object v5, Lorg/htmlcleaner/ContentType;->$VALUES:[Lorg/htmlcleaner/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lorg/htmlcleaner/ContentType;->dbCode:Ljava/lang/String;

    return-void
.end method

.method public static toValue(Ljava/lang/Object;)Lorg/htmlcleaner/ContentType;
    .locals 5

    .line 62
    instance-of v0, p0, Lorg/htmlcleaner/ContentType;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Lorg/htmlcleaner/ContentType;

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_3

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {}, Lorg/htmlcleaner/ContentType;->values()[Lorg/htmlcleaner/ContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 67
    invoke-virtual {v3}, Lorg/htmlcleaner/ContentType;->getDbCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/htmlcleaner/ContentType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object p0, v3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/htmlcleaner/ContentType;
    .locals 1

    .line 41
    const-class v0, Lorg/htmlcleaner/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/htmlcleaner/ContentType;

    return-object p0
.end method

.method public static values()[Lorg/htmlcleaner/ContentType;
    .locals 1

    .line 41
    sget-object v0, Lorg/htmlcleaner/ContentType;->$VALUES:[Lorg/htmlcleaner/ContentType;

    invoke-virtual {v0}, [Lorg/htmlcleaner/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/htmlcleaner/ContentType;

    return-object v0
.end method


# virtual methods
.method public getDbCode()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/htmlcleaner/ContentType;->dbCode:Ljava/lang/String;

    return-object v0
.end method
