.class public final enum Lcom/flexionmobile/sdk/billing/ItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexionmobile/sdk/billing/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flexionmobile/sdk/billing/ItemType;

.field public static final enum IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

.field public static final enum SUBSCRIPTION:Lcom/flexionmobile/sdk/billing/ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/flexionmobile/sdk/billing/ItemType;

    const-string v1, "IN_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexionmobile/sdk/billing/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    new-instance v0, Lcom/flexionmobile/sdk/billing/ItemType;

    const-string v1, "SUBSCRIPTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/flexionmobile/sdk/billing/ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/sdk/billing/ItemType;->SUBSCRIPTION:Lcom/flexionmobile/sdk/billing/ItemType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/flexionmobile/sdk/billing/ItemType;

    sget-object v4, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/flexionmobile/sdk/billing/ItemType;->$VALUES:[Lcom/flexionmobile/sdk/billing/ItemType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flexionmobile/sdk/billing/ItemType;
    .locals 1

    const-class v0, Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/sdk/billing/ItemType;

    return-object p0
.end method

.method public static values()[Lcom/flexionmobile/sdk/billing/ItemType;
    .locals 1

    sget-object v0, Lcom/flexionmobile/sdk/billing/ItemType;->$VALUES:[Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-virtual {v0}, [Lcom/flexionmobile/sdk/billing/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexionmobile/sdk/billing/ItemType;

    return-object v0
.end method
