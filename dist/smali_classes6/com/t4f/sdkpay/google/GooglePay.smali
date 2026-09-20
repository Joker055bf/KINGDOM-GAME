.class public Lcom/t4f/sdkpay/google/GooglePay;
.super Ljava/lang/Object;
.source "GooglePay.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "sdktgs.googlepay"


# instance fields
.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .line 339
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 340
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method private final notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Lcom/t4f/sdkpay/google/OnProductDetailsList;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 380
    invoke-interface {p3, p1, p2}, Lcom/t4f/sdkpay/google/OnProductDetailsList;->onResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lcom/android/billingclient/api/PurchasesResponseListener;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 365
    invoke-interface {p3, p1, p2}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final notifyPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 351
    invoke-interface {p3, p1, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z
    .locals 5

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v3, :cond_1

    const-string p1, "Fail acknowledge purchase google pay while billingClient invalid.Not initialed?"

    .line 247
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 250
    invoke-direct {p0, v1, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 249
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :cond_0
    return v2

    .line 254
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    const-string v4, "Acknowledge purchase google pay."

    .line 255
    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3, p1, p2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception acknowledgePurchase google pay.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Exception acknowledgePurchase.e="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-direct {p0, v1, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 261
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :cond_2
    return v2
.end method

.method public consumeAsync(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z
    .locals 6

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 214
    :try_start_0
    iget-object v4, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v4, :cond_1

    const-string p1, "Fail consume async google pay while billingClient invalid.Not initialed?"

    .line 216
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 219
    invoke-direct {p0, v2, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 218
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :cond_0
    return v3

    .line 223
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    const-string v5, "Consume async google pay."

    .line 224
    invoke-static {v0, v5}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4, p1, p2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception consumeAsync google pay.e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Exception consumeAsync.e="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-direct {p0, v2, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 230
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method public endConnection()Z
    .locals 5

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x0

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v2, :cond_0

    const-string v2, "Fail end connection google pay while billingClient invalid.Not initialed?"

    .line 276
    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v3, "End connection google pay."

    .line 279
    invoke-static {v0, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception End connection google pay.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public initial(Landroid/app/Activity;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "sdktgs.googlepay"

    if-nez p1, :cond_0

    const-string p1, "Fail initial google pay while context invalid."

    .line 36
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 42
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string p1, "Succeed initial google pay."

    .line 46
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Exception initial google pay. e="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 4

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x6

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v2, :cond_0

    const-string p1, "Fail check google pay isFeatureSupported while billingClient invalid.Not initialed?"

    .line 166
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 167
    invoke-direct {p0, v1, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception check google pay isFeatureSupported. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception check google pay isFeatureSupported.e="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method public isProductListFeatureSupported()Z
    .locals 1

    const-string v0, "fff"

    .line 153
    invoke-virtual {p0, v0}, Lcom/t4f/sdkpay/google/GooglePay;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$queryProductDetailsAsync$0$com-t4f-sdkpay-google-GooglePay(Lcom/t4f/sdkpay/google/OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    :goto_1
    invoke-direct {p0, p2, p3, p1}, Lcom/t4f/sdkpay/google/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z

    return-void
.end method

.method public launchBillingFlow(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v1, 0x0

    const-string v2, "sdktgs.googlepay"

    if-nez v0, :cond_0

    const-string p1, "Fail launchBillingFlow google pay while billingClient invalid.Not initialed?"

    .line 66
    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 71
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "subs"

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    goto :goto_0

    :cond_1
    move-object p1, v5

    :goto_0
    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 83
    :cond_3
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    const-string p2, "Launch google pay billing flow."

    .line 87
    invoke-static {v2, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception launch google pay billing flow.e="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public queryProductDetailsAsync([Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z
    .locals 12

    const-string v0, "Fail queryProductDetailsAsync google pay while productType invalid.length="

    const-string v1, "Fail queryProductDetailsAsync google pay while billingClient invalid.Not initialed? length="

    if-eqz p1, :cond_0

    .line 104
    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const-string v3, " productType="

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v7, "sdktgs.googlepay"

    if-gtz v2, :cond_1

    :try_start_0
    const-string p1, "Fail queryProductDetailsAsync google pay while product list empty."

    .line 107
    invoke-static {v7, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Product list empty"

    .line 108
    invoke-direct {p0, v5, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v4, p3}, Lcom/t4f/sdkpay/google/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z

    return v6

    .line 111
    :cond_1
    iget-object v8, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v8, :cond_2

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 114
    invoke-direct {p0, v5, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v4, p3}, Lcom/t4f/sdkpay/google/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z

    return v6

    :cond_2
    if-eqz p2, :cond_6

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_3

    .line 120
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    array-length v1, p1

    move v9, v6

    :goto_1
    if-ge v9, v1, :cond_5

    aget-object v10, p1, v9

    if-nez v10, :cond_4

    goto :goto_2

    .line 125
    :cond_4
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v10

    .line 126
    invoke-virtual {v10, p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v10

    .line 125
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 128
    :cond_5
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query google pay product details async."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " length="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/t4f/sdkpay/google/GooglePay$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/sdkpay/google/GooglePay;Lcom/t4f/sdkpay/google/OnProductDetailsList;)V

    invoke-virtual {v8, p1, v0}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    const/4 p1, 0x1

    return p1

    .line 117
    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ProductType invalid."

    .line 118
    invoke-direct {p0, v5, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v4, p3}, Lcom/t4f/sdkpay/google/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception query google pay product details async.e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception query.e="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v4, p3}, Lcom/t4f/sdkpay/google/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4f/sdkpay/google/OnProductDetailsList;)Z

    return v6
.end method

.method public queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z
    .locals 13

    const-string v0, "Query params invalid. "

    const-string v1, "BillingClient invalid.Not initialed? "

    const-string v2, "Fail query google pay purchases async while query params invalid. "

    const-string v3, "Query google pay purchases async.productType="

    const-string v4, "ProductType invalid."

    const-string v5, "Fail query google pay purchases async while billingClient invalid.Not initialed? "

    const-string v6, "Fail query google pay purchases async while productType invalid."

    const-string v7, " "

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v11, "sdktgs.googlepay"

    if-eqz p1, :cond_4

    .line 296
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_0

    goto/16 :goto_1

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v4, :cond_1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p0, v0, v10, p2}, Lcom/t4f/sdkpay/google/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return v8

    .line 309
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 313
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v10

    :goto_0
    if-nez v5, :cond_3

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p0, v0, v10, p2}, Lcom/t4f/sdkpay/google/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return v8

    .line 321
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v4, v5, p2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 297
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p0, v0, v10, p2}, Lcom/t4f/sdkpay/google/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    .line 325
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception query google pay purchases async.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v9, p1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v10, p2}, Lcom/t4f/sdkpay/google/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return v8
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z
    .locals 6

    const-string v0, "sdktgs.googlepay"

    const-string v1, "Start connection google pay."

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 184
    :try_start_0
    iget-object v4, p0, Lcom/t4f/sdkpay/google/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v4, :cond_1

    const-string v1, "Fail start connection google pay while billingClient invalid.Not initialed?"

    .line 186
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "BillingClient invalid.Not initialed?"

    .line 188
    invoke-direct {p0, v2, v1}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_0
    return v3

    .line 193
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v1

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception start connection google pay.e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Exception.e="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/t4f/sdkpay/google/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_2
    return v3
.end method
