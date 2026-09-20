.class public final enum Lcom/crosspromotion/sdk/banner/AdSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/crosspromotion/sdk/banner/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/crosspromotion/sdk/banner/AdSize;

.field public static final enum BANNER:Lcom/crosspromotion/sdk/banner/AdSize;

.field public static final enum LEADERBOARD:Lcom/crosspromotion/sdk/banner/AdSize;

.field public static final enum MEDIUM_RECTANGLE:Lcom/crosspromotion/sdk/banner/AdSize;

.field public static final enum SMART:Lcom/crosspromotion/sdk/banner/AdSize;


# instance fields
.field height:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/crosspromotion/sdk/banner/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "BANNER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/crosspromotion/sdk/banner/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/crosspromotion/sdk/banner/AdSize;->BANNER:Lcom/crosspromotion/sdk/banner/AdSize;

    new-instance v1, Lcom/crosspromotion/sdk/banner/AdSize;

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    const-string v5, "LEADERBOARD"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/crosspromotion/sdk/banner/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/crosspromotion/sdk/banner/AdSize;->LEADERBOARD:Lcom/crosspromotion/sdk/banner/AdSize;

    new-instance v2, Lcom/crosspromotion/sdk/banner/AdSize;

    const/16 v3, 0x12c

    const/16 v5, 0xfa

    const-string v7, "MEDIUM_RECTANGLE"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/crosspromotion/sdk/banner/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/crosspromotion/sdk/banner/AdSize;->MEDIUM_RECTANGLE:Lcom/crosspromotion/sdk/banner/AdSize;

    new-instance v3, Lcom/crosspromotion/sdk/banner/AdSize;

    const/4 v5, -0x1

    const-string v7, "SMART"

    const/4 v9, 0x3

    invoke-direct {v3, v7, v9, v5, v5}, Lcom/crosspromotion/sdk/banner/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/crosspromotion/sdk/banner/AdSize;->SMART:Lcom/crosspromotion/sdk/banner/AdSize;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/crosspromotion/sdk/banner/AdSize;

    aput-object v0, v5, v4

    aput-object v1, v5, v6

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    sput-object v5, Lcom/crosspromotion/sdk/banner/AdSize;->$VALUES:[Lcom/crosspromotion/sdk/banner/AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/crosspromotion/sdk/banner/AdSize;->width:I

    iput p4, p0, Lcom/crosspromotion/sdk/banner/AdSize;->height:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crosspromotion/sdk/banner/AdSize;
    .locals 1

    const-class v0, Lcom/crosspromotion/sdk/banner/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/crosspromotion/sdk/banner/AdSize;

    return-object p0
.end method

.method public static values()[Lcom/crosspromotion/sdk/banner/AdSize;
    .locals 1

    sget-object v0, Lcom/crosspromotion/sdk/banner/AdSize;->$VALUES:[Lcom/crosspromotion/sdk/banner/AdSize;

    invoke-virtual {v0}, [Lcom/crosspromotion/sdk/banner/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crosspromotion/sdk/banner/AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/banner/AdSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/banner/AdSize;->width:I

    return v0
.end method
