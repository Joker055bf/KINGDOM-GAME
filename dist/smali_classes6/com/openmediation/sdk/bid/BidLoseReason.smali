.class public final enum Lcom/openmediation/sdk/bid/BidLoseReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/bid/BidLoseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/bid/BidLoseReason;

.field public static final enum INTERNAL:Lcom/openmediation/sdk/bid/BidLoseReason;

.field public static final enum INVALID_RESPONSE:Lcom/openmediation/sdk/bid/BidLoseReason;

.field public static final enum INVENTORY_DID_NOT_MATERIALISE:Lcom/openmediation/sdk/bid/BidLoseReason;

.field public static final enum LOST_TO_HIGHER_BIDDER:Lcom/openmediation/sdk/bid/BidLoseReason;

.field public static final enum TIMEOUT:Lcom/openmediation/sdk/bid/BidLoseReason;


# instance fields
.field private final reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/openmediation/sdk/bid/BidLoseReason;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/openmediation/sdk/bid/BidLoseReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openmediation/sdk/bid/BidLoseReason;->INTERNAL:Lcom/openmediation/sdk/bid/BidLoseReason;

    new-instance v1, Lcom/openmediation/sdk/bid/BidLoseReason;

    const-string v4, "TIMEOUT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/openmediation/sdk/bid/BidLoseReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/openmediation/sdk/bid/BidLoseReason;->TIMEOUT:Lcom/openmediation/sdk/bid/BidLoseReason;

    new-instance v4, Lcom/openmediation/sdk/bid/BidLoseReason;

    const-string v6, "INVALID_RESPONSE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/openmediation/sdk/bid/BidLoseReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/openmediation/sdk/bid/BidLoseReason;->INVALID_RESPONSE:Lcom/openmediation/sdk/bid/BidLoseReason;

    new-instance v6, Lcom/openmediation/sdk/bid/BidLoseReason;

    const-string v8, "LOST_TO_HIGHER_BIDDER"

    const/16 v9, 0x66

    invoke-direct {v6, v8, v7, v9}, Lcom/openmediation/sdk/bid/BidLoseReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/openmediation/sdk/bid/BidLoseReason;->LOST_TO_HIGHER_BIDDER:Lcom/openmediation/sdk/bid/BidLoseReason;

    new-instance v8, Lcom/openmediation/sdk/bid/BidLoseReason;

    const/16 v9, 0x1326

    const-string v10, "INVENTORY_DID_NOT_MATERIALISE"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v9}, Lcom/openmediation/sdk/bid/BidLoseReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/openmediation/sdk/bid/BidLoseReason;->INVENTORY_DID_NOT_MATERIALISE:Lcom/openmediation/sdk/bid/BidLoseReason;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/openmediation/sdk/bid/BidLoseReason;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v11

    sput-object v9, Lcom/openmediation/sdk/bid/BidLoseReason;->$VALUES:[Lcom/openmediation/sdk/bid/BidLoseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/openmediation/sdk/bid/BidLoseReason;->reason:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/bid/BidLoseReason;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/bid/BidLoseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/bid/BidLoseReason;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/bid/BidLoseReason;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/bid/BidLoseReason;->$VALUES:[Lcom/openmediation/sdk/bid/BidLoseReason;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/bid/BidLoseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/bid/BidLoseReason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/bid/BidLoseReason;->reason:I

    return v0
.end method
