.class public final enum Lcom/flexionmobile/sdk/billing/PurchaseState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexionmobile/sdk/billing/PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flexionmobile/sdk/billing/PurchaseState;

.field public static final enum CANCELED:Lcom/flexionmobile/sdk/billing/PurchaseState;

.field public static final enum EXPIRED:Lcom/flexionmobile/sdk/billing/PurchaseState;

.field public static final enum PENDING:Lcom/flexionmobile/sdk/billing/PurchaseState;

.field public static final enum PURCHASED:Lcom/flexionmobile/sdk/billing/PurchaseState;

.field public static final enum REFUNDED:Lcom/flexionmobile/sdk/billing/PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    const-string v1, "PURCHASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexionmobile/sdk/billing/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/PurchaseState;->PURCHASED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    new-instance v0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    const-string v1, "CANCELED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/flexionmobile/sdk/billing/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/PurchaseState;->CANCELED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    new-instance v0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    const-string v1, "REFUNDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/flexionmobile/sdk/billing/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/PurchaseState;->REFUNDED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    new-instance v0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    const-string v1, "EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/flexionmobile/sdk/billing/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/PurchaseState;->EXPIRED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    new-instance v0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    const-string v1, "PENDING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/flexionmobile/sdk/billing/PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/PurchaseState;->PENDING:Lcom/flexionmobile/sdk/billing/PurchaseState;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/flexionmobile/sdk/billing/PurchaseState;

    sget-object v7, Lcom/flexionmobile/sdk/billing/PurchaseState;->PURCHASED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    aput-object v7, v1, v2

    sget-object v2, Lcom/flexionmobile/sdk/billing/PurchaseState;->CANCELED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/flexionmobile/sdk/billing/PurchaseState;->REFUNDED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/flexionmobile/sdk/billing/PurchaseState;->EXPIRED:Lcom/flexionmobile/sdk/billing/PurchaseState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/flexionmobile/sdk/billing/PurchaseState;->$VALUES:[Lcom/flexionmobile/sdk/billing/PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexionmobile/sdk/billing/PurchaseState;
    .locals 1

    const-class v0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/sdk/billing/PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/flexionmobile/sdk/billing/PurchaseState;
    .locals 1

    sget-object v0, Lcom/flexionmobile/sdk/billing/PurchaseState;->$VALUES:[Lcom/flexionmobile/sdk/billing/PurchaseState;

    invoke-virtual {v0}, [Lcom/flexionmobile/sdk/billing/PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexionmobile/sdk/billing/PurchaseState;

    return-object v0
.end method
