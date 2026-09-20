.class public Lcom/t4f/sdkpay/catappult/CatappultPay;
.super Ljava/lang/Object;
.source "CatappultPay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "sdktgs.CatappultPay"

.field private static activity:Landroid/app/Activity;

.field private static catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

.field private static catappultBillingStateListener:Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;

.field private static catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

.field private static purchasesUpdatedListener:Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/t4f/sdkpay/catappult/CatappultPay$1;

    invoke-direct {v0}, Lcom/t4f/sdkpay/catappult/CatappultPay$1;-><init>()V

    sput-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingStateListener:Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;

    .line 67
    new-instance v0, Lcom/t4f/sdkpay/catappult/CatappultPay$2;

    invoke-direct {v0}, Lcom/t4f/sdkpay/catappult/CatappultPay$2;-><init>()V

    sput-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->purchasesUpdatedListener:Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;
    .locals 1

    .line 23
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 23
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->checkPurchases()V

    return-void
.end method

.method static synthetic access$200()Lcom/appcoins/sdk/billing/AppcoinsBillingClient;
    .locals 1

    .line 23
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    return-object v0
.end method

.method public static buyItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 153
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "sdktgs.CatappultPay"

    if-nez v0, :cond_1

    const-string p0, "buyItem: billing client is null"

    .line 154
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    if-eqz p0, :cond_0

    const-string p1, "billing client is null"

    .line 156
    invoke-interface {p0, v2, p1, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onBuyItemCallback(ILjava/lang/String;Lcom/appcoins/sdk/billing/Purchase;)V

    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-interface {v0}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "buyItem: billing client is not ready"

    .line 163
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    if-eqz p0, :cond_2

    const-string p1, "billing client is not ready"

    .line 165
    invoke-interface {p0, v2, p1, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onBuyItemCallback(ILjava/lang/String;Lcom/appcoins/sdk/billing/Purchase;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "Launching purchase flow."

    .line 170
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/t4f/sdkpay/catappult/CatappultPay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/t4f/sdkpay/catappult/CatappultPay$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkPurchases()V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/t4f/sdkpay/catappult/CatappultPay$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/t4f/sdkpay/catappult/CatappultPay$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getProductList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "sdktgs.CatappultPay"

    if-nez v0, :cond_1

    const-string p0, "getProductList: billing client is null"

    .line 112
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    if-eqz p0, :cond_0

    const-string v0, "billing client is null"

    .line 114
    invoke-interface {p0, v2, v0, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onGetProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p0, :cond_3

    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lcom/appcoins/sdk/billing/SkuDetailsParams;

    invoke-direct {v0}, Lcom/appcoins/sdk/billing/SkuDetailsParams;-><init>()V

    .line 129
    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appcoins/sdk/billing/SkuDetailsParams;->setItemType(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p0}, Lcom/appcoins/sdk/billing/SkuDetailsParams;->setMoreItemSkus(Ljava/util/List;)V

    .line 132
    sget-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    new-instance v1, Lcom/t4f/sdkpay/catappult/CatappultPay$3;

    invoke-direct {v1}, Lcom/t4f/sdkpay/catappult/CatappultPay$3;-><init>()V

    invoke-interface {p0, v0, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->querySkuDetailsAsync(Lcom/appcoins/sdk/billing/SkuDetailsParams;Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "getProductList: product list is null or empty"

    .line 120
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    if-eqz p0, :cond_4

    const-string v0, "product list is null"

    .line 122
    invoke-interface {p0, v2, v0, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onGetProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/app/Activity;Lcom/t4f/sdkpay/catappult/CatappultPayListener;)V
    .locals 0

    .line 97
    sput-object p2, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    .line 98
    sput-object p1, Lcom/t4f/sdkpay/catappult/CatappultPay;->activity:Landroid/app/Activity;

    .line 100
    sget-object p2, Lcom/t4f/sdkpay/catappult/CatappultPay;->purchasesUpdatedListener:Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;

    invoke-static {p1, p0, p2}, Lcom/appcoins/sdk/billing/helpers/CatapultBillingAppCoinsFactory;->BuildAppcoinsBilling(Landroid/content/Context;Ljava/lang/String;Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;)Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    move-result-object p0

    sput-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    .line 106
    sget-object p1, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingStateListener:Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;

    invoke-interface {p0, p1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->startConnection(Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;)V

    return-void
.end method

.method static synthetic lambda$buyItem$0(I)V
    .locals 3

    .line 184
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-eq p0, v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buyItem: launchBillingFlow failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdktgs.CatappultPay"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    if-eqz v0, :cond_0

    const-string v1, "launchBillingFlow failed"

    const/4 v2, 0x0

    .line 187
    invoke-interface {v0, p0, v1, v2}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onBuyItemCallback(ILjava/lang/String;Lcom/appcoins/sdk/billing/Purchase;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$buyItem$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 172
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->activity:Landroid/app/Activity;

    .line 173
    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    new-instance v1, Lcom/appcoins/sdk/billing/BillingFlowParams;

    const/4 v5, 0x0

    const-string v7, "BDS"

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/appcoins/sdk/billing/BillingFlowParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object p0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    invoke-interface {p0, v0, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)I

    move-result p0

    .line 183
    new-instance p1, Lcom/t4f/sdkpay/catappult/CatappultPay$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/t4f/sdkpay/catappult/CatappultPay$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$checkPurchases$2()V
    .locals 5

    .line 198
    sget-object v0, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->queryPurchases(Ljava/lang/String;)Lcom/appcoins/sdk/billing/PurchasesResult;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/PurchasesResult;->getPurchases()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appcoins/sdk/billing/Purchase;

    .line 208
    sget-object v2, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultPayListener:Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const-string v4, "success"

    .line 209
    invoke-interface {v2, v3, v4, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onBuyItemCallback(ILjava/lang/String;Lcom/appcoins/sdk/billing/Purchase;)V

    .line 212
    :cond_0
    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/t4f/sdkpay/catappult/CatappultPay;->catappultBillingClient:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    new-instance v3, Lcom/t4f/sdkpay/catappult/CatappultPay$4;

    invoke-direct {v3}, Lcom/t4f/sdkpay/catappult/CatappultPay$4;-><init>()V

    invoke-interface {v2, v1, v3}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->consumeAsync(Ljava/lang/String;Lcom/appcoins/sdk/billing/listeners/ConsumeResponseListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
