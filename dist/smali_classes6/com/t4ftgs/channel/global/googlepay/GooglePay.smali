.class public Lcom/t4ftgs/channel/global/googlepay/GooglePay;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;
    }
.end annotation


# static fields
.field private static final BILLING_CONNECTION_CONNECTED:I = 0x2

.field private static final BILLING_CONNECTION_CONNECTING:I = 0x1

.field private static final BILLING_CONNECTION_DISCONNECTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "sdktgs.googlepay"


# instance fields
.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private final mBillingConnectionLock:Ljava/lang/Object;

.field private volatile mBillingConnectionState:I

.field private final mPendingBillingConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/BillingClientStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProductDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3lSusvK73HIk4B_2dfx7uAR_zjs(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryAllTypesPurchasesAsync$7(Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6e8PbwQDDgLwvMHH_1H9cx-SPEw(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryProductDetailsAsync$2(Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6sFjQG2vk4imP1zMu3jL1V9hi0M(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$consumeAsync$5(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CLGh9cQAlKKrJXdSWP2fiYMMqMk(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryProductDetailsAsync$4(Ljava/lang/String;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H4Gb89Z4sLy9L2ugdfeEn2-W_Dg(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryAllTypesPurchasesAsync$8(Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UgPRDROnTQ91weVSawaH35CIME8(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryPurchasesAsync$9(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VVQzRF2pTfJZ226_ihwHaBMQILc(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryProductDetailsAsync$1(ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSy5rhzALXTTiEgK-ESmdaxkJkM(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$acknowledgePurchase$6(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sLToFvRc0bMq9D9yVBkTFtZXtAo(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$queryProductDetailsAsync$3(ILjava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wdYPDvblBiduM2oQ7sWYnAgb7ks(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->lambda$initial$0(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishBillingConnectionAttempt(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->finishBillingConnectionAttempt(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyBillingServiceDisconnected(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyBillingServiceDisconnected(Lcom/android/billingclient/api/BillingClient;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    return-void
.end method

.method private finishBillingConnectionAttempt(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    const-string v0, "Ignore stale google pay billing setup callback."

    .line 425
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-ne p1, v2, :cond_6

    iget p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p2, :cond_1

    .line 432
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 433
    :goto_0
    iput p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    .line 434
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 436
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "sdktgs.googlepay"

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Billing service setup finished."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 438
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_3

    .line 439
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->onGoogleBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingClientStateListener;

    if-eqz v0, :cond_4

    .line 444
    invoke-interface {v0, p2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    :goto_4
    :try_start_1
    const-string p1, "sdktgs.googlepay"

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 436
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic lambda$acknowledgePurchase$6(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V
    .locals 2

    const-string v0, "Finish connect billing client before acknowledge acknowledge google pay."

    const-string v1, "sdktgs.googlepay"

    .line 523
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isBillingClientReady()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "To acknowledge acknowledge google pay AGAIN after start billing client connection."

    .line 529
    invoke-static {v1, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    return-void

    :cond_1
    :goto_0
    const-string p2, "Fail acknowledge acknowledge google pay while billing client connect failed."

    .line 525
    invoke-static {v1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0, p4, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyAcknowledgePurchaseResponseListener(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    return-void
.end method

.method private synthetic lambda$consumeAsync$5(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V
    .locals 2

    const-string v0, "Finish connect billing client before consume async google pay."

    const-string v1, "sdktgs.googlepay"

    .line 484
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isBillingClientReady()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "To consume async google pay AGAIN after start billing client connection."

    .line 490
    invoke-static {v1, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->consumeAsync(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    return-void

    :cond_1
    :goto_0
    const-string p2, "Fail consume async google pay while billing client connect failed."

    .line 486
    invoke-static {v1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 487
    invoke-direct {p0, p4, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyConsumeResponseListener(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    return-void
.end method

.method private synthetic lambda$initial$0(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 92
    invoke-direct {p0, p2, p3, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z

    return-void
.end method

.method private synthetic lambda$queryAllTypesPurchasesAsync$7(Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 594
    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Finish query all types purchase async:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "sdktgs.googlepay"

    invoke-static {v0, p4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, p3, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return-void
.end method

.method private synthetic lambda$queryAllTypesPurchasesAsync$8(Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 586
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 588
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 592
    :cond_0
    new-instance p3, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda7;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const-string p1, "subs"

    invoke-virtual {p0, p1, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return-void
.end method

.method private synthetic lambda$queryProductDetailsAsync$1(ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    if-eqz p5, :cond_0

    .line 187
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 188
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish query google play in app sku details async.count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    if-lez v0, :cond_1

    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    .line 191
    invoke-interface {p2, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    :cond_1
    invoke-direct {p0, p4, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void
.end method

.method private synthetic lambda$queryProductDetailsAsync$2(Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x6

    const-string v0, "Unknown query subs error."

    .line 165
    invoke-virtual {p0, p4, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p4

    .line 166
    :goto_0
    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Fail query google play subscription sku details async.code="

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " message="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p4, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eqz p5, :cond_2

    .line 172
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 173
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Succeed query google play subscription sku details async.count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    if-lez v1, :cond_3

    if-eqz p5, :cond_3

    if-eqz p1, :cond_3

    .line 176
    invoke-interface {p1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 178
    array-length v0, p3

    .line 180
    :cond_4
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "Continue to query google play in app sku details async.count="

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    if-gtz v0, :cond_5

    .line 183
    invoke-direct {p0, p4, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void

    .line 186
    :cond_5
    new-instance p4, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, v0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)V

    const-string p1, "inapp"

    invoke-direct {p0, p3, p1, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->queryProductDetailsAsync([Ljava/lang/String;Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void
.end method

.method private synthetic lambda$queryProductDetailsAsync$3(ILjava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V
    .locals 5

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish start billing client connection before queryProductDetailsAsync google pay.connected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " productType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sdktgs.googlepay"

    invoke-static {v4, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isBillingClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "To queryProductDetailsAsync google pay again after start billing client connection. result="

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p4, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->queryProductDetailsAsync([Ljava/lang/String;Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void

    .line 238
    :cond_1
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Fail queryProductDetailsAsync google pay while billing client connect failed.connected="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 240
    invoke-direct {p0, p6, p1, p3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void
.end method

.method private synthetic lambda$queryProductDetailsAsync$4(Ljava/lang/String;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 4

    if-eqz p6, :cond_0

    .line 264
    invoke-virtual {p6}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    if-eqz p6, :cond_1

    goto :goto_1

    .line 265
    :cond_1
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :goto_1
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mProductDetails:Ljava/util/List;

    .line 267
    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_2

    goto :goto_2

    .line 269
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mProductDetails:Ljava/util/List;

    :goto_2
    move-object v1, v0

    monitor-enter v1

    .line 270
    :try_start_0
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v2, :cond_3

    .line 271
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 275
    :cond_4
    monitor-exit v1

    move-object v0, v1

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_4
    const-string v1, "sdktgs.googlepay"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finish query google pay product list details async."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " length="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 278
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_5

    :cond_6
    const/4 p2, -0x1

    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p5, p6, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return-void
.end method

.method private synthetic lambda$queryPurchasesAsync$9(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish query google pay purchases async.productType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdktgs.googlepay"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 639
    invoke-direct {p0, p3, p4, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return-void
.end method

.method private final notifyAcknowledgePurchaseResponseListener(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 738
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private notifyBillingServiceDisconnected(Lcom/android/billingclient/api/BillingClient;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eq p1, v1, :cond_0

    .line 453
    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 455
    iput p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    .line 456
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 458
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "sdktgs.googlepay"

    const-string v1, "Billing service disconnected."

    .line 459
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingClientStateListener;

    if-eqz v0, :cond_1

    .line 462
    invoke-interface {v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 458
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final notifyConsumeResponseListener(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 753
    invoke-interface {p3, p1, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 724
    invoke-interface {p3, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;->onResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

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

    .line 709
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

    .line 695
    invoke-interface {p3, p1, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private queryProductDetailsAsync([Ljava/lang/String;Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "To start billing client connection before queryProductDetailsAsync google pay while not ready.length="

    const-string v2, "Fail queryProductDetailsAsync google pay while productType invalid.length="

    const-string v3, "Fail queryProductDetailsAsync google pay while billingClient invalid.Not initialed? length="

    if-eqz v0, :cond_0

    .line 217
    array-length v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x6

    const-string v12, " productType="

    const/4 v13, 0x0

    const-string v14, "sdktgs.googlepay"

    if-gtz v5, :cond_1

    :try_start_0
    const-string v0, "Fail queryProductDetailsAsync google pay while product list empty."

    .line 220
    invoke-static {v14, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Product list empty"

    .line 221
    invoke-virtual {v7, v11, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {v7, v0, v10, v9}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return v13

    .line 224
    :cond_1
    iget-object v15, v7, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v15, :cond_2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BillingClient invalid.Not initialed?"

    .line 227
    invoke-virtual {v7, v11, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {v7, v0, v10, v9}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    return v13

    :cond_2
    if-eqz v8, :cond_9

    .line 229
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    goto/16 :goto_5

    .line 232
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isBillingClientReady()Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v15, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;

    new-instance v6, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;

    move-object v1, v6

    move-object/from16 v2, p0

    move v3, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v13, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;)V

    invoke-direct {v15, v13}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;-><init>(Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;)V

    invoke-virtual {v7, v15}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z

    move-result v0

    return v0

    .line 248
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    if-eqz v3, :cond_6

    .line 250
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_5

    goto :goto_2

    .line 254
    :cond_5
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    .line 255
    invoke-virtual {v3, v8}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v3

    .line 254
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 251
    :cond_6
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip query one item google pay product which product id invalid."

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :cond_7
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    :cond_8
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query google pay product list details async."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v13, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)V

    invoke-virtual {v15, v0, v13}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    const/4 v0, 0x1

    return v0

    .line 230
    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProductType invalid."

    .line 231
    invoke-virtual {v7, v11, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {v7, v0, v10, v9}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception query google pay product list details async.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception query.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {v7, v0, v10, v9}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z
    .locals 5

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 514
    :try_start_0
    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v3, :cond_0

    const-string p1, "Fail acknowledge purchase google pay while billingClient invalid.Not initialed?"

    .line 516
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 518
    invoke-virtual {p0, v2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyAcknowledgePurchaseResponseListener(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    return v1

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isBillingClientReady()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "To connect billing client before acknowledge acknowledge google pay."

    .line 521
    invoke-static {v0, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v3, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;

    new-instance v4, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda2;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;-><init>(Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;)V

    invoke-virtual {p0, v3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z

    move-result p1

    return p1

    .line 533
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    const-string v4, "Acknowledge purchase google pay."

    .line 534
    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v3, p1, p2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception acknowledgePurchase google pay.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Exception acknowledgePurchase.e="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p0, v2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyAcknowledgePurchaseResponseListener(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    return v1
.end method

.method public consumeAsync(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z
    .locals 6

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 475
    :try_start_0
    iget-object v4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v4, :cond_0

    const-string p1, "Fail consume async google pay while billingClient invalid.Not initialed?"

    .line 477
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 478
    invoke-virtual {p0, v3, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v2, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyConsumeResponseListener(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    return v1

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isBillingClientReady()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "To connect billing client before consume async google pay."

    .line 482
    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v4, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;

    new-instance v5, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;-><init>(Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;)V

    invoke-virtual {p0, v4}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z

    move-result p1

    return p1

    .line 494
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    const-string v5, "Consume async google pay."

    .line 495
    invoke-static {v0, v5}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v4, p1, p2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception consumeAsync google pay.e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Exception consumeAsync.e="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p0, v3, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 500
    invoke-direct {p0, p1, v2, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyConsumeResponseListener(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    return v1
.end method

.method protected final createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .line 683
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    .line 684
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method public deInitial()Z
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->endConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Succeed deInitial google pay billingClient."

    .line 548
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Failed deInitial google pay billingClient."

    .line 552
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public endConnection()Z
    .locals 5

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x0

    .line 562
    :try_start_0
    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v2, :cond_0

    const-string v2, "Fail end connection google pay while billingClient invalid.Not initialed?"

    .line 564
    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v3, "End connection google pay."

    .line 567
    invoke-static {v0, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, v2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyBillingServiceDisconnected(Lcom/android/billingclient/api/BillingClient;)V

    .line 569
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    .line 572
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

.method public final findProductDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mProductDetails:Ljava/util/List;

    if-nez v1, :cond_1

    const-string p2, "sdktgs.googlepay"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail find google pay product id details while product details list empty?NOT query product list?."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v2, "sdktgs.googlepay"

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Find google pay product id details.productId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " productType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-static {v2, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    monitor-enter v1

    .line 303
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails;

    if-eqz v3, :cond_4

    .line 304
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    if-eqz v3, :cond_5

    .line 305
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    move-object v5, v0

    :goto_3
    const-string v6, "sdktgs.googlepay"

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " childProductId ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " productId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " childProductType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " productType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 308
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 310
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    if-eqz v5, :cond_3

    .line 311
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    :cond_7
    monitor-exit v1

    return-object v3

    .line 315
    :cond_8
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_4
    const-string p2, "sdktgs.googlepay"

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail find google pay product id details while product id invalid."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final findPurchaseByTgsOrderId(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/Purchase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Lcom/android/billingclient/api/Purchase;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 662
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 665
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    if-nez v2, :cond_1

    goto :goto_2

    .line 667
    :cond_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 668
    invoke-virtual {v3}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 669
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public initial(Landroid/app/Activity;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "sdktgs.googlepay"

    const-string p2, "Fail initial global google pay while context invalid."

    .line 78
    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 84
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_1

    const-string v1, "sdktgs.googlepay"

    const-string v2, "To deInitial google pay billing client before initial again."

    .line 85
    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->deInitial()Z

    .line 88
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    .line 89
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    new-instance v2, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    .line 90
    invoke-virtual {p1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enableAutoServiceReconnection()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 98
    iput v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    .line 99
    iget-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 100
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "sdktgs.googlepay"

    const-string p2, "Succeed initial global google pay."

    .line 101
    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 100
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "sdktgs.googlepay"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception initial global google pay. e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final isBillingClientReady()Z
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 4

    const-string v0, "sdktgs.googlepay"

    const/4 v1, 0x6

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v2, :cond_0

    const-string p1, "Fail check google pay isFeatureSupported while billingClient invalid.Not initialed?"

    .line 337
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BillingClient invalid.Not initialed?"

    .line 338
    invoke-virtual {p0, v1, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    .line 340
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception check google pay isFeatureSupported. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exception check google pay isFeatureSupported.e="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method public isProductListFeatureSupported()Z
    .locals 1

    const-string v0, "fff"

    .line 324
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
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

.method public launchBillingFlow(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/t4f/sdk/core/OnFinish;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/ProductDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/t4f/sdk/core/OnFinish<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Launch google pay billing flow.productType="

    .line 119
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const/16 v2, 0x7d5

    const/4 v3, 0x0

    const-string v4, "sdktgs.googlepay"

    if-nez v1, :cond_0

    const-string p2, "Fail launchBillingFlow google pay while billingClient invalid.Not initialed?"

    .line 121
    invoke-static {v4, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "BillingClient invalid.Not initialed?"

    .line 122
    invoke-static {v2, p2, p1, p5}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return v3

    :cond_0
    if-nez p1, :cond_1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fail launchBillingFlow google pay while productDetails invalid."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ProductDetails invalid."

    .line 126
    invoke-static {v2, p2, p1, p5}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return v3

    .line 131
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v5

    .line 134
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    const-string v8, "subs"

    .line 136
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 140
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    goto :goto_0

    :cond_2
    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_3

    .line 141
    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v7

    :goto_1
    invoke-virtual {v5, v8}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 143
    :cond_4
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v5

    .line 145
    invoke-virtual {v5, v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 146
    invoke-virtual {v2, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    .line 147
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " productId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v7

    :cond_5
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    invoke-virtual {v1, p4, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Exception launch google pay billing flow.e="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x7d7

    invoke-static {p3, p2, p1, p5}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return v3
.end method

.method protected onGoogleBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public queryAllTypesPurchasesAsync(Lcom/android/billingclient/api/PurchasesResponseListener;)Z
    .locals 1

    .line 584
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda3;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const-string p1, "inapp"

    invoke-virtual {p0, p1, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    move-result p1

    return p1
.end method

.method public queryProductDetailsAsync([Ljava/lang/String;[Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z
    .locals 2

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda0;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 196
    array-length p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 197
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "To query google play subscription sku details async at first.count="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    if-lez p1, :cond_1

    const-string p1, "subs"

    .line 200
    invoke-direct {p0, p2, p1, v1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->queryProductDetailsAsync([Ljava/lang/String;Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    const-string p2, "Not need query subs product list."

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v1, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;->onResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
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

    .line 610
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_0

    goto/16 :goto_1

    .line 616
    :cond_0
    iget-object v4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v4, :cond_1

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p0, v0, v10, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return v8

    .line 623
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 627
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v10

    :goto_0
    if-nez v5, :cond_3

    .line 630
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

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p0, v0, v10, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return v8

    .line 635
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    invoke-virtual {v4, v5, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 611
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-direct {p0, v0, v10, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    .line 643
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

    .line 644
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

    invoke-virtual {p0, v9, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1, v10, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->notifyPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return v8
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z
    .locals 8

    const-string v0, "Start connection google pay."

    const-string v1, "Wait current google pay billing connection."

    .line 364
    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget v6, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const-string v1, "BillingClient already connected."

    .line 369
    invoke-virtual {p0, v4, v1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    goto :goto_1

    .line 371
    :cond_1
    iget v6, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    if-ne v6, v5, :cond_3

    if-eqz p1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "sdktgs.googlepay"

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    monitor-exit v2

    return v5

    .line 378
    :cond_3
    iput v5, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mBillingConnectionState:I

    if-eqz p1, :cond_4

    .line 380
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->mPendingBillingConnectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 383
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x6

    if-nez v3, :cond_6

    const-string v0, "sdktgs.googlepay"

    const-string v1, "Fail start connection google pay while billingClient invalid.Not initialed?"

    .line 386
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, "BillingClient invalid.Not initialed?"

    .line 388
    invoke-virtual {p0, v2, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_5
    return v4

    :cond_6
    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    .line 396
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_7
    return v5

    :cond_8
    :try_start_1
    const-string v1, "sdktgs.googlepay"

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance p1, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;

    invoke-direct {p1, p0, v3}, Lcom/t4ftgs/channel/global/googlepay/GooglePay$1;-><init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/BillingClient;)V

    invoke-virtual {v3, p1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    move-exception p1

    const-string v0, "sdktgs.googlepay"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Exception start connection google pay.e="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception.e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->finishBillingConnectionAttempt(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/BillingResult;)V

    return v4

    :catchall_0
    move-exception p1

    .line 383
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
