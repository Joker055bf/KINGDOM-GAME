.class public Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;
.super Ljava/lang/Object;


# instance fields
.field private final billingService:Lcom/flexionmobile/fdk/BillingService;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final purchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/PurchaseResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/flexionmobile/fdk/BillingService;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/BillingService;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/PurchaseResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->billingService:Lcom/flexionmobile/fdk/BillingService;

    iput-object p2, p0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->items:Ljava/util/List;

    return-void
.end method

.method public static of(Lcom/flexionmobile/fdk/BillingService;Ljava/util/List;Ljava/util/List;)Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/BillingService;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/PurchaseResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;)",
            "Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;"
        }
    .end annotation

    new-instance v0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;-><init>(Lcom/flexionmobile/fdk/BillingService;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getBillingService()Lcom/flexionmobile/fdk/BillingService;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->billingService:Lcom/flexionmobile/fdk/BillingService;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPurchases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/PurchaseResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->purchases:Ljava/util/List;

    return-object v0
.end method
