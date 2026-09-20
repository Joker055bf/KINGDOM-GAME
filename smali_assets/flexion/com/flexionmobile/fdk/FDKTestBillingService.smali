.class public Lcom/flexionmobile/fdk/FDKTestBillingService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/BillingServiceInternal;


# static fields
.field private static final BILLING_TIMEOUT_SECONDS:J = 0x78L

.field private static final ITEM_DEFINITIONS_SIZE_THRESHOLD:I = 0x64

.field private static final LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

.field private static final REFRESH_ITEM_DEFINITIONS_PAGE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FDKTestBillingService"


# instance fields
.field private final coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final itemCache:Lcom/flexionmobile/fdk/h;

.field private final purchaseListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/flexionmobile/fdk/PurchaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final purchaseService:Lcom/flexionmobile/fdk/PurchaseService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "FDKTestBillingService"

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    return-void
.end method

.method public constructor <init>(Lcom/flexionmobile/fdk/CoreServiceInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flexionmobile/fdk/h;

    invoke-direct {v0}, Lcom/flexionmobile/fdk/h;-><init>()V

    iput-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->itemCache:Lcom/flexionmobile/fdk/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->executor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    new-instance p1, Lcom/flexionmobile/fdk/j;

    invoke-direct {p1, p0}, Lcom/flexionmobile/fdk/j;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;)V

    iput-object p1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    return-void
.end method

.method static synthetic access$000(Lcom/flexionmobile/fdk/FDKTestBillingService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseListener:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flexionmobile/fdk/FDKTestBillingService;Landroid/os/Bundle;Lcom/flexionmobile/fdk/PurchaseListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->onPurchaseFinished(Landroid/os/Bundle;Lcom/flexionmobile/fdk/PurchaseListener;)V

    return-void
.end method

.method private callOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private callRefreshItemDefinitionsPaginated(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/util/List;Ljava/lang/String;I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/sdk/billing/ItemType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flexionmobile/sdk/billing/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, v1, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v4, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling paginated refreshItemDefinitions from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v4

    iget-object v5, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-interface {v5}, Lcom/flexionmobile/fdk/CoreServiceInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v4

    new-instance v5, Lcom/flexionmobile/sdk/parcel/ItemType;

    invoke-direct {v5, p1}, Lcom/flexionmobile/sdk/parcel/ItemType;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;)V

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v5, v1, p3}, Lcom/flexionmobile/sdk/FDKTestBillingService;->getItemDetails(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "itemMap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertItemDetails(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flexionmobile/sdk/billing/Item;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/sdk/billing/Item;

    invoke-direct {p0, v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->toFdkItem(Lcom/flexionmobile/sdk/billing/Item;)Lcom/flexionmobile/fdk/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertProductDetailsToItemIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-virtual {v1}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertToFdkPurchase(Lcom/flexionmobile/sdk/billing/Purchase;Lcom/flexionmobile/sdk/billing/Item;)Lcom/flexionmobile/fdk/Purchase;
    .locals 8

    invoke-direct {p0, p2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->toFdkItem(Lcom/flexionmobile/sdk/billing/Item;)Lcom/flexionmobile/fdk/Item;

    move-result-object v0

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Purchase;->getPurchaseTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Purchase;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v7

    const-string v5, "flexion-test-billing"

    invoke-static/range {v0 .. v7}, Lcom/flexionmobile/fdk/FdkPurchase;->of(Lcom/flexionmobile/fdk/Item;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/flexionmobile/fdk/FdkPurchase;

    move-result-object p1

    return-object p1
.end method

.method private convertToPurchaseResultList(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/flexionmobile/sdk/billing/Purchase;",
            "Lcom/flexionmobile/sdk/billing/Item;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/PurchaseResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flexionmobile/sdk/billing/Purchase;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/sdk/billing/Item;

    sget-object v3, Lcom/flexionmobile/fdk/PurchaseResultCode;->INCOMPLETE:Lcom/flexionmobile/fdk/PurchaseResultCode;

    invoke-direct {p0, v2, v1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->convertToFdkPurchase(Lcom/flexionmobile/sdk/billing/Purchase;Lcom/flexionmobile/sdk/billing/Item;)Lcom/flexionmobile/fdk/Purchase;

    move-result-object v2

    invoke-interface {v1}, Lcom/flexionmobile/sdk/billing/Item;->getType()Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flexionmobile/sdk/billing/ItemType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flexionmobile/fdk/ItemType;->valueOf(Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemType;

    move-result-object v4

    invoke-interface {v1}, Lcom/flexionmobile/sdk/billing/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/flexionmobile/fdk/ItemDefinition;->of(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemDefinition;

    move-result-object v1

    iget-object v4, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    const-string v5, "Unconsumed purchase."

    invoke-static {v3, v5, v2, v1, v4}, Lcom/flexionmobile/fdk/PurchaseResult;->of(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createPurchaseResult(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/PurchaseResult;
    .locals 11

    invoke-virtual {p4}, Lcom/flexionmobile/sdk/billing/ItemType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flexionmobile/fdk/ItemType;->valueOf(Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemType;

    move-result-object v2

    move-object v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-static/range {v1 .. v7}, Lcom/flexionmobile/fdk/FdkItem;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/flexionmobile/fdk/FdkItem;

    move-result-object v3

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    invoke-static/range {v3 .. v10}, Lcom/flexionmobile/fdk/FdkPurchase;->of(Lcom/flexionmobile/fdk/Item;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/flexionmobile/fdk/FdkPurchase;

    move-result-object v0

    move-object v1, p0

    iget-object v2, v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p17

    invoke-static {p1, p2, v0, v5, v2}, Lcom/flexionmobile/fdk/PurchaseResult;->of(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object v0

    return-object v0
.end method

.method private doQueryPurchases()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/PurchaseResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "com.flexionmobile.fdk.apptoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v3

    iget-object v4, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-interface {v4}, Lcom/flexionmobile/fdk/CoreServiceInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v3

    new-instance v4, Lcom/flexionmobile/sdk/parcel/ItemType;

    sget-object v5, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-direct {v4, v5}, Lcom/flexionmobile/sdk/parcel/ItemType;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;)V

    invoke-interface {v3, v4, v1}, Lcom/flexionmobile/sdk/FDKTestBillingService;->getPurchases(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "purchaseMap"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flexionmobile/sdk/billing/Purchase;

    invoke-interface {v4}, Lcom/flexionmobile/sdk/billing/Purchase;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-direct {p0, v3, v0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->doRefreshItemDefinitions(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flexionmobile/sdk/billing/Purchase;

    invoke-interface {v3}, Lcom/flexionmobile/sdk/billing/Purchase;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->convertToPurchaseResultList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "No com.flexionmobile.fdk.apptoken in AndroidManifest.xml can\'t retrieve purchases"

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private doRefreshItemDefinitions(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/sdk/billing/ItemType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flexionmobile/sdk/billing/Item;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "com.flexionmobile.fdk.apptoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->itemCache:Lcom/flexionmobile/fdk/h;

    invoke-virtual {v1, p2}, Lcom/flexionmobile/fdk/h;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->itemCache:Lcom/flexionmobile/fdk/h;

    invoke-virtual {v1, p2}, Lcom/flexionmobile/fdk/h;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callRefreshItemDefinitionsPaginated(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/util/List;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v2

    iget-object v3, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-interface {v3}, Lcom/flexionmobile/fdk/CoreServiceInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v2

    new-instance v3, Lcom/flexionmobile/sdk/parcel/ItemType;

    invoke-direct {v3, p1}, Lcom/flexionmobile/sdk/parcel/ItemType;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;)V

    invoke-interface {v2, v3, v1, v0}, Lcom/flexionmobile/sdk/FDKTestBillingService;->getItemDetails(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "itemMap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->itemCache:Lcom/flexionmobile/fdk/h;

    invoke-virtual {v0, p1}, Lcom/flexionmobile/fdk/h;->a(Ljava/util/Map;)V

    :cond_1
    iget-object p1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->itemCache:Lcom/flexionmobile/fdk/h;

    invoke-virtual {p1, p2}, Lcom/flexionmobile/fdk/h;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string p2, "No com.flexionmobile.fdk.apptoken in AndroidManifest.xml can\'t retrieve items"

    invoke-virtual {p1, p2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private filterInAppItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-virtual {v1}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemType()Lcom/flexionmobile/fdk/ItemType;

    move-result-object v2

    sget-object v3, Lcom/flexionmobile/fdk/ItemType;->IN_APP:Lcom/flexionmobile/fdk/ItemType;

    invoke-virtual {v2, v3}, Lcom/flexionmobile/fdk/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getMetaData()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-interface {v0}, Lcom/flexionmobile/fdk/CoreServiceInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic lambda$null$0(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->TIMED_OUT:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    const-string v1, "Could not initialize Flexion Billing Service: Flexion Startup Flow timed out."

    invoke-static {v1, v0}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$11(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;->BILLING_FAILURE:Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;

    const-string v1, "RefreshItemDefinitions call does not supported with null or empty itemDefinitions list."

    invoke-static {v1, v0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$13(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;J)V
    .locals 2

    invoke-static {p1}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;->of(Ljava/util/List;)Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    sget-object p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RefreshItemDefinitions task successfully finished in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " milliseconds."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$14(JLcom/flexionmobile/fdk/ResultHandler;Landroid/util/AndroidException;)V
    .locals 4

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshItemDefinitions task failed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " milliseconds."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;

    invoke-static {p0, p1}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$15(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/exception/b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/flexionmobile/fdk/exception/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;

    invoke-static {p1, v0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$16(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;

    invoke-static {p1, v0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$5(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;->BILLING_SERVICE_NOT_INITIALIZED:Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;

    const-string v1, "The billing service has not been initialized, call createBillingService() first."

    invoke-static {v1, v0}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$6(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;->TIMED_OUT:Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;

    const-string v1, "Could not execute QueryIncompletePurchases task: Flexion Initialization Flow timed out."

    invoke-static {v1, v0}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$7(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;->of(Ljava/util/List;)Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$8(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/InterruptedException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;

    invoke-static {p1, v0}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$9(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;

    invoke-static {p1, v0}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private onPurchaseFinished(Landroid/os/Bundle;Lcom/flexionmobile/fdk/PurchaseListener;)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    const-string v1, "testPurchaseFlowResultCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    const-string v2, "itemId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    const-string v2, "price"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "priceAmountMicros"

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v2, "priceCurrencyCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    const-string v2, "purchaseTime"

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-direct {v14, v9, v10}, Ljava/util/Date;-><init>(J)V

    const-string v2, "developerPayload"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "provider"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "purchaseJson"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v2, "signature"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/flexionmobile/fdk/ItemType;->IN_APP:Lcom/flexionmobile/fdk/ItemType;

    invoke-static {v2, v4}, Lcom/flexionmobile/fdk/ItemDefinition;->of(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemDefinition;

    move-result-object v10

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Received failed purchase result code"

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;

    invoke-direct {v0, v15, v3, v10}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$izXjpgFY9xmplFLvbaGmJKepX8w;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ItemDefinition;)V

    :goto_0
    invoke-static {v0}, Lcom/flexionmobile/fdk/k;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Received cancelled purchase result code"

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dZ_J_sW_Daj-NSBCS7gWlEQgRxY;

    invoke-direct {v0, v15, v3, v10}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dZ_J_sW_Daj-NSBCS7gWlEQgRxY;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ItemDefinition;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Received pending purchase result code"

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    new-instance v20, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$4Z5OXb9CoOMSy6bxN2Q7eN5ywJ4;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v9, v11

    move-object/from16 v21, v10

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v18}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$4Z5OXb9CoOMSy6bxN2Q7eN5ywJ4;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V

    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/flexionmobile/fdk/k;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_2
    move-object/from16 v21, v10

    sget-object v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Received delayed purchase success result code"

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/Thread;

    new-instance v10, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$NMs5afssgOa4-I5vmtzzAHJwY_I;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v9, v11

    move-object v11, v10

    move-object v10, v12

    move-object v12, v11

    move-object v11, v13

    move-object v13, v12

    move-object v12, v14

    move-object v14, v13

    move-object/from16 v13, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v17

    move-object/from16 v23, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v18}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$NMs5afssgOa4-I5vmtzzAHJwY_I;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_3
    move-object/from16 v21, v10

    sget-object v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Received purchase success result code"

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    new-instance v20, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$ufSEMtI7xZxC5-N0jH7bWSHy58E;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v18}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$ufSEMtI7xZxC5-N0jH7bWSHy58E;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/flexionmobile/fdk/exception/a;

    const-string v2, "Error during processing the purchase result"

    invoke-direct {v1, v2, v0}, Lcom/flexionmobile/fdk/exception/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private toFdkItem(Lcom/flexionmobile/sdk/billing/Item;)Lcom/flexionmobile/fdk/Item;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getType()Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flexionmobile/sdk/billing/ItemType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flexionmobile/fdk/ItemType;->valueOf(Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemType;

    move-result-object v1

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getPriceAmountMicros()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1}, Lcom/flexionmobile/sdk/billing/Item;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/flexionmobile/fdk/FdkItem;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lcom/flexionmobile/fdk/FdkItem;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public finishTransaction(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;

    invoke-direct {v1, p0, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Yn7rAzT-nHhtp2lPOKLJXtG3uYA;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initBillingServiceInternal(Landroid/app/Activity;Ljava/util/List;Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;",
            "Lcom/flexionmobile/fdk/PurchaseListener;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dQF28nPAa7bkfcd0fY9SA_1Xngo;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$finishTransaction$18$FDKTestBillingService(Ljava/lang/String;)V
    .locals 4

    const-string v0, "No com.flexionmobile.fdk.apptoken in AndroidManifest.xml unable to finish transaction"

    const-string v1, "com.flexionmobile.fdk.apptoken"

    :try_start_0
    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v1

    iget-object v2, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-interface {v2}, Lcom/flexionmobile/fdk/CoreServiceInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/flexionmobile/sdk/FDKTestBillingService;->consumePurchase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    invoke-virtual {v1, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not finish transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initBillingServiceInternal$2$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 8

    const-string v0, "Could not initialize Flexion Billing Service: "

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x78

    invoke-static {v2, v3, v1}, Lcom/flexionmobile/fdk/i;->e(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p2, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$JLH3PTZDuqvhfrBrBmRhsAQU9m4;

    invoke-direct {p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$JLH3PTZDuqvhfrBrBmRhsAQU9m4;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-direct {p0, p2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flexionmobile/fdk/i;->o()V

    return-void

    :cond_0
    invoke-static {}, Lcom/flexionmobile/fdk/i;->p()V

    sget-object v1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Flexion Billing Service initialization started..."

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_0
    sget-object p2, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported itemType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/flexionmobile/sdk/billing/ItemType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    sget-object p2, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Supported purchaseState: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/flexionmobile/sdk/billing/PurchaseState;->values()[Lcom/flexionmobile/sdk/billing/PurchaseState;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/flexionmobile/sdk/billing/PurchaseState;->ordinal()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/flexionmobile/sdk/billing/PurchaseState;->values()[Lcom/flexionmobile/sdk/billing/PurchaseState;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    sget-object p2, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-direct {p0, p3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->filterInAppItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->convertProductDetailsToItemIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->doRefreshItemDefinitions(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->doQueryPurchases()Ljava/util/List;

    move-result-object p3

    new-instance v3, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$lAxlfPDNHrWxhnoUK6-OweJfJYc;

    invoke-direct {v3, p0, p4, p3, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$lAxlfPDNHrWxhnoUK6-OweJfJYc;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0, v3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    sget-object p2, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Flexion Billing Service initialization successfully finished in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " milliseconds."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/flexionmobile/fdk/exception/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_1
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    invoke-static {p2, p3}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/flexionmobile/fdk/i;->o()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_2
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/flexionmobile/fdk/exception/b;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    invoke-static {p2, p3}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->of(Ljava/lang/String;Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/flexionmobile/fdk/i;->o()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$null$1$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-static {}, Lcom/flexionmobile/fdk/i;->n()V

    invoke-direct {p0, p3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->convertItemDetails(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->of(Lcom/flexionmobile/fdk/BillingService;Ljava/util/List;Ljava/util/List;)Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$null$12$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 1

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$srzjL1fX8gSrfOn_OPbMD_8gAt0;

    invoke-direct {v0, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$srzjL1fX8gSrfOn_OPbMD_8gAt0;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-direct {p0, v0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v0, "RefreshItemDefinitions call does not supported with null or empty itemDefinitions list."

    invoke-virtual {p1, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$20$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    sget-object v1, Lcom/flexionmobile/fdk/PurchaseResultCode;->SUCCESS:Lcom/flexionmobile/fdk/PurchaseResultCode;

    const-string v2, "Purchase success"

    invoke-direct/range {v0 .. v17}, Lcom/flexionmobile/fdk/FDKTestBillingService;->createPurchaseResult(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/flexionmobile/fdk/PurchaseListener;->processPurchase(Lcom/flexionmobile/fdk/PurchaseResult;)V

    return-void
.end method

.method public synthetic lambda$null$3$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ItemDefinition;Landroid/app/Activity;Ljava/lang/String;JLcom/flexionmobile/fdk/ResultHandler;)V
    .locals 6

    const-string v0, "No com.flexionmobile.fdk.apptoken in AndroidManifest.xml unable to launch purchase flow"

    const-string v1, "com.flexionmobile.fdk.apptoken"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lcom/flexionmobile/fdk/PurchaseSuccessResult;->of(Ljava/util/List;)Lcom/flexionmobile/fdk/PurchaseSuccessResult;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/flexionmobile/fdk/c;

    invoke-direct {v2, p0}, Lcom/flexionmobile/fdk/c;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;)V

    invoke-virtual {p1, v2}, Lcom/flexionmobile/fdk/eventbus/EventBus;->register(Lcom/flexionmobile/fdk/eventbus/EventListener;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "productDetailItemId"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemType()Lcom/flexionmobile/fdk/ItemType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flexionmobile/fdk/ItemType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "productDetailItemType"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported itemType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/flexionmobile/sdk/billing/ItemType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flexionmobile/sdk/billing/ItemType;->values()[Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported purchaseState: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flexionmobile/sdk/billing/PurchaseState;->values()[Lcom/flexionmobile/sdk/billing/PurchaseState;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/flexionmobile/sdk/billing/PurchaseState;->ordinal()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flexionmobile/sdk/billing/PurchaseState;->values()[Lcom/flexionmobile/sdk/billing/PurchaseState;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v0

    new-instance v1, Lcom/flexionmobile/sdk/parcel/ItemType;

    sget-object v2, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-direct {v1, v2}, Lcom/flexionmobile/sdk/parcel/ItemType;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;)V

    invoke-interface {v0, v1, p1}, Lcom/flexionmobile/sdk/FDKTestBillingService;->getPurchases(Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "purchaseMap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/flexionmobile/sdk/parcel/ItemType;

    sget-object v3, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-direct {v2, v3}, Lcom/flexionmobile/sdk/parcel/ItemType;-><init>(Lcom/flexionmobile/sdk/billing/ItemType;)V

    invoke-interface {v0, v1, v2, p4, p1}, Lcom/flexionmobile/sdk/FDKTestBillingService;->getBuyIntent(Ljava/lang/String;Lcom/flexionmobile/sdk/parcel/ItemType;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    new-instance p4, Landroid/content/Intent;

    const-class v0, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;

    invoke-direct {p4, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FDK_REQUEST_CODE"

    const/16 v1, 0x1ca3

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "startupFlowMode"

    const-string v1, "PURCHASE"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "TARGET_INTENT"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "startupFlowStarted"

    invoke-virtual {p4, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p3, p4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    invoke-virtual {p1, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;->TIMED_OUT:Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;

    :goto_0
    invoke-static {p2, p1, p3}, Lcom/flexionmobile/fdk/PurchaseErrorResult;->of(Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/PurchaseErrorResult$ResponseCode;)Lcom/flexionmobile/fdk/PurchaseErrorResult;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onPurchaseFinished$19$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    sget-object v1, Lcom/flexionmobile/fdk/PurchaseResultCode;->SUCCESS:Lcom/flexionmobile/fdk/PurchaseResultCode;

    const-string v2, "Purchase success"

    invoke-direct/range {v0 .. v17}, Lcom/flexionmobile/fdk/FDKTestBillingService;->createPurchaseResult(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/flexionmobile/fdk/PurchaseListener;->processPurchase(Lcom/flexionmobile/fdk/PurchaseResult;)V

    return-void
.end method

.method public synthetic lambda$onPurchaseFinished$21$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 19

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$d-OlEMyvF-Z5O1BkpHez6TEzoj8;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v1 .. v18}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$d-OlEMyvF-Z5O1BkpHez6TEzoj8;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V

    invoke-static {v0}, Lcom/flexionmobile/fdk/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onPurchaseFinished$22$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    sget-object v1, Lcom/flexionmobile/fdk/PurchaseResultCode;->PENDING:Lcom/flexionmobile/fdk/PurchaseResultCode;

    const-string v2, "Purchase pending"

    invoke-direct/range {v0 .. v17}, Lcom/flexionmobile/fdk/FDKTestBillingService;->createPurchaseResult(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/sdk/billing/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/flexionmobile/fdk/PurchaseListener;->processPurchase(Lcom/flexionmobile/fdk/PurchaseResult;)V

    return-void
.end method

.method public synthetic lambda$onPurchaseFinished$23$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 4

    sget-object v0, Lcom/flexionmobile/fdk/PurchaseResultCode;->USER_CANCELLED:Lcom/flexionmobile/fdk/PurchaseResultCode;

    iget-object v1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    const-string v2, "Purchase cancelled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p2, v1}, Lcom/flexionmobile/fdk/PurchaseResult;->of(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/PurchaseListener;->processPurchase(Lcom/flexionmobile/fdk/PurchaseResult;)V

    return-void
.end method

.method public synthetic lambda$onPurchaseFinished$24$FDKTestBillingService(Lcom/flexionmobile/fdk/PurchaseListener;Lcom/flexionmobile/fdk/ItemDefinition;)V
    .locals 4

    sget-object v0, Lcom/flexionmobile/fdk/PurchaseResultCode;->ERROR:Lcom/flexionmobile/fdk/PurchaseResultCode;

    iget-object v1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->purchaseService:Lcom/flexionmobile/fdk/PurchaseService;

    const-string v2, "Purchase failed"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p2, v1}, Lcom/flexionmobile/fdk/PurchaseResult;->of(Lcom/flexionmobile/fdk/PurchaseResultCode;Ljava/lang/String;Lcom/flexionmobile/fdk/Purchase;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/PurchaseService;)Lcom/flexionmobile/fdk/PurchaseResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/PurchaseListener;->processPurchase(Lcom/flexionmobile/fdk/PurchaseResult;)V

    return-void
.end method

.method public synthetic lambda$purchaseInternal$4$FDKTestBillingService(Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/ResultHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 11

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-static {v1, v2, v0}, Lcom/flexionmobile/fdk/i;->f(JLjava/util/concurrent/TimeUnit;)Z

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Purchase task started..."

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemDefinition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v5, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$5C1U7mheHyWh5kx4GaQbK3GtNM4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$5C1U7mheHyWh5kx4GaQbK3GtNM4;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ItemDefinition;Landroid/app/Activity;Ljava/lang/String;JLcom/flexionmobile/fdk/ResultHandler;)V

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$queryIncompletePurchasesInternal$10$FDKTestBillingService(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/flexionmobile/fdk/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$TE3RXNGyG0_9U1F_z56aBudXl1A;

    invoke-direct {p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$TE3RXNGyG0_9U1F_z56aBudXl1A;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-direct {p0, p2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/flexionmobile/fdk/i;->f(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p2, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$u2fwRAPlnZMEnQ5cesI5PGfPKzU;

    invoke-direct {p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$u2fwRAPlnZMEnQ5cesI5PGfPKzU;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-direct {p0, p2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "QueryIncompletePurchases task started..."

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->doQueryPurchases()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dVMN4pp2He25F3BtG3ymFpMqMAg;

    invoke-direct {v3, p2, v2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$dVMN4pp2He25F3BtG3ymFpMqMAg;-><init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    sget-object p2, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryIncompletePurchases task successfully finished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$JiwfjX4m1taQhlsCz5nKTtu1sUc;

    invoke-direct {v0, p1, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$JiwfjX4m1taQhlsCz5nKTtu1sUc;-><init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$S2L0O3_dW_MVkP_RuVGh64RuE6o;

    invoke-direct {v0, p1, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$S2L0O3_dW_MVkP_RuVGh64RuE6o;-><init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/InterruptedException;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$refreshItemDefinitionsInternal$17$FDKTestBillingService(Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-static {v1, v2, v0}, Lcom/flexionmobile/fdk/i;->f(JLjava/util/concurrent/TimeUnit;)Z

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestBillingService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "RefreshItemDefinitions task started..."

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flexionmobile/fdk/ItemDefinition;

    invoke-virtual {v3}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object p1, Lcom/flexionmobile/sdk/billing/ItemType;->IN_APP:Lcom/flexionmobile/sdk/billing/ItemType;

    invoke-direct {p0, p1, v2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->doRefreshItemDefinitions(Lcom/flexionmobile/sdk/billing/ItemType;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->convertItemDetails(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;

    invoke-direct {v2, p3, p1, v0, v1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$AdBpZ6eSjDmtmlWBkV0SDutg7xw;-><init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/util/List;J)V

    invoke-direct {p0, v2}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/flexionmobile/fdk/exception/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    new-instance p3, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;

    invoke-direct {p3, p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$-bYg4LYxVtIQH4Ws2IAyyU1o3r0;-><init>(Lcom/flexionmobile/fdk/ResultHandler;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p3, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$jacPJ_OoDRnvk4kaWRzZpz-VnXM;

    invoke-direct {p3, p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$jacPJ_OoDRnvk4kaWRzZpz-VnXM;-><init>(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/exception/b;)V

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    new-instance p3, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;

    invoke-direct {p3, v0, v1, p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$bJKKyREZ2t0qb0CR9kZqvx5wszg;-><init>(JLcom/flexionmobile/fdk/ResultHandler;Landroid/util/AndroidException;)V

    :goto_2
    invoke-direct {p0, p3}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :cond_2
    :goto_4
    new-instance p1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;

    invoke-direct {p1, p0, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$Y3MpDcRmm97RRHP7L9x0tFIi5Ws;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/FDKTestBillingService;->callOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public purchase(Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/step/PurchaseDeveloperPayloadStep;
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/PurchaseBuilder;

    iget-object v1, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->coreServiceInternal:Lcom/flexionmobile/fdk/CoreServiceInternal;

    invoke-interface {v1}, Lcom/flexionmobile/fdk/CoreServiceInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/flexionmobile/fdk/PurchaseBuilder;-><init>(Lcom/flexionmobile/fdk/BillingServiceInternal;Landroid/app/Activity;Lcom/flexionmobile/fdk/ItemDefinition;)V

    return-object v0
.end method

.method public purchaseInternal(Landroid/app/Activity;Lcom/flexionmobile/fdk/ItemDefinition;Ljava/lang/String;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            "Ljava/lang/String;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/PurchaseErrorResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$PgfKbWTQzmC-pYsY9Na7_Ihri7M;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$PgfKbWTQzmC-pYsY9Na7_Ihri7M;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ItemDefinition;Lcom/flexionmobile/fdk/ResultHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryIncompletePurchases()Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesSuccessStep;
    .locals 1

    new-instance v0, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;

    invoke-direct {v0, p0}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesBuilder;-><init>(Lcom/flexionmobile/fdk/BillingServiceInternal;)V

    return-object v0
.end method

.method public queryIncompletePurchasesInternal(Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;

    invoke-direct {v1, p0, p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$c_UTfc4XS245PA1PsFYH4jsTXxU;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshItemDefinitions(Ljava/util/List;)Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;)",
            "Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;"
        }
    .end annotation

    new-instance v0, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;

    invoke-direct {v0, p0, p1}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsBuilder;-><init>(Lcom/flexionmobile/fdk/BillingServiceInternal;Ljava/util/List;)V

    return-object v0
.end method

.method public refreshItemDefinitionsInternal(Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/ItemDefinition;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestBillingService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$2SBdaSVpUJG-2byirXTmk8fR7Vw;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestBillingService$2SBdaSVpUJG-2byirXTmk8fR7Vw;-><init>(Lcom/flexionmobile/fdk/FDKTestBillingService;Ljava/util/List;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
