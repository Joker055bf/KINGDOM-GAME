.class public final enum Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

.field public static final enum BILLING_FAILURE:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

.field public static final enum ERROR:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

.field public static final enum TIMED_OUT:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    const-string v1, "TIMED_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->TIMED_OUT:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    new-instance v1, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    const-string v3, "BILLING_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->BILLING_FAILURE:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    new-instance v3, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->$VALUES:[Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;
    .locals 1

    const-class v0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->$VALUES:[Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    invoke-virtual {v0}, [Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    return-object v0
.end method
