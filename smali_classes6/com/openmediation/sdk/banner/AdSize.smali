.class public final enum Lcom/openmediation/sdk/banner/AdSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/banner/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/banner/AdSize;

.field public static final enum BANNER:Lcom/openmediation/sdk/banner/AdSize;

.field public static final enum LEADERBOARD:Lcom/openmediation/sdk/banner/AdSize;

.field public static final enum MEDIUM_RECTANGLE:Lcom/openmediation/sdk/banner/AdSize;

.field public static final enum SMART:Lcom/openmediation/sdk/banner/AdSize;


# instance fields
.field height:I

.field mDescription:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/openmediation/sdk/banner/AdSize;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    const-string v5, "BANNER"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/openmediation/sdk/banner/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/openmediation/sdk/banner/AdSize;->BANNER:Lcom/openmediation/sdk/banner/AdSize;

    new-instance v0, Lcom/openmediation/sdk/banner/AdSize;

    const-string v8, "LEADERBOARD"

    const/4 v9, 0x1

    const/16 v10, 0x2d8

    const/16 v11, 0x5a

    const-string v12, "LEADERBOARD"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/openmediation/sdk/banner/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/openmediation/sdk/banner/AdSize;->LEADERBOARD:Lcom/openmediation/sdk/banner/AdSize;

    new-instance v1, Lcom/openmediation/sdk/banner/AdSize;

    const-string v14, "MEDIUM_RECTANGLE"

    const/4 v15, 0x2

    const/16 v16, 0x12c

    const/16 v17, 0xfa

    const-string v18, "RECTANGLE"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/openmediation/sdk/banner/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/openmediation/sdk/banner/AdSize;->MEDIUM_RECTANGLE:Lcom/openmediation/sdk/banner/AdSize;

    new-instance v2, Lcom/openmediation/sdk/banner/AdSize;

    const-string v8, "SMART"

    const/4 v9, 0x3

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-string v12, "SMART"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/openmediation/sdk/banner/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lcom/openmediation/sdk/banner/AdSize;->SMART:Lcom/openmediation/sdk/banner/AdSize;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/openmediation/sdk/banner/AdSize;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lcom/openmediation/sdk/banner/AdSize;->$VALUES:[Lcom/openmediation/sdk/banner/AdSize;

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

    const-string p1, ""

    iput-object p1, p0, Lcom/openmediation/sdk/banner/AdSize;->mDescription:Ljava/lang/String;

    iput p3, p0, Lcom/openmediation/sdk/banner/AdSize;->width:I

    iput p4, p0, Lcom/openmediation/sdk/banner/AdSize;->height:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/openmediation/sdk/banner/AdSize;->width:I

    iput p4, p0, Lcom/openmediation/sdk/banner/AdSize;->height:I

    iput-object p5, p0, Lcom/openmediation/sdk/banner/AdSize;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/banner/AdSize;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/banner/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/banner/AdSize;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/banner/AdSize;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/banner/AdSize;->$VALUES:[Lcom/openmediation/sdk/banner/AdSize;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/banner/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/banner/AdSize;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/banner/AdSize;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/banner/AdSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/banner/AdSize;->width:I

    return v0
.end method
