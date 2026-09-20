.class public final enum Lorg/htmlcleaner/BelongsTo;
.super Ljava/lang/Enum;
.source "BelongsTo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/htmlcleaner/BelongsTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/htmlcleaner/BelongsTo;

.field public static final enum BODY:Lorg/htmlcleaner/BelongsTo;

.field public static final enum HEAD:Lorg/htmlcleaner/BelongsTo;

.field public static final enum HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;


# instance fields
.field private final dbCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 43
    new-instance v0, Lorg/htmlcleaner/BelongsTo;

    const-string v1, "all"

    const-string v2, "HEAD_AND_BODY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/htmlcleaner/BelongsTo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    .line 44
    new-instance v1, Lorg/htmlcleaner/BelongsTo;

    const-string v2, "head"

    const-string v4, "HEAD"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/htmlcleaner/BelongsTo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    .line 45
    new-instance v2, Lorg/htmlcleaner/BelongsTo;

    const-string v4, "body"

    const-string v6, "BODY"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/htmlcleaner/BelongsTo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/htmlcleaner/BelongsTo;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 41
    sput-object v4, Lorg/htmlcleaner/BelongsTo;->$VALUES:[Lorg/htmlcleaner/BelongsTo;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lorg/htmlcleaner/BelongsTo;->dbCode:Ljava/lang/String;

    return-void
.end method

.method public static toValue(Ljava/lang/Object;)Lorg/htmlcleaner/BelongsTo;
    .locals 5

    .line 60
    instance-of v0, p0, Lorg/htmlcleaner/BelongsTo;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lorg/htmlcleaner/BelongsTo;

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {}, Lorg/htmlcleaner/BelongsTo;->values()[Lorg/htmlcleaner/BelongsTo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Lorg/htmlcleaner/BelongsTo;->getDbCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/htmlcleaner/BelongsTo;->name()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/htmlcleaner/BelongsTo;
    .locals 1

    .line 41
    const-class v0, Lorg/htmlcleaner/BelongsTo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/htmlcleaner/BelongsTo;

    return-object p0
.end method

.method public static values()[Lorg/htmlcleaner/BelongsTo;
    .locals 1

    .line 41
    sget-object v0, Lorg/htmlcleaner/BelongsTo;->$VALUES:[Lorg/htmlcleaner/BelongsTo;

    invoke-virtual {v0}, [Lorg/htmlcleaner/BelongsTo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/htmlcleaner/BelongsTo;

    return-object v0
.end method


# virtual methods
.method public getDbCode()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/htmlcleaner/BelongsTo;->dbCode:Ljava/lang/String;

    return-object v0
.end method
