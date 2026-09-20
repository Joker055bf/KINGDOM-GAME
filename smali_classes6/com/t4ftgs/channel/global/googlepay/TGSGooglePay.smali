.class public Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;
.super Lcom/t4ftgs/channel/global/googlepay/GooglePay;
.source "TGSGooglePay.java"

# interfaces
.implements Lcom/t4f/activity/OnForegroundChange;


# static fields
.field private static final MAX_VERIFY_RETRY_COUNT:I = 0xa

.field private static final SAVE_ORDER_BACKUP_NAME:Ljava/lang/String; = "TGS_GCHANNELPLAY_BACKUP"

.field private static final SAVE_ORDER_NAME:Ljava/lang/String; = "TGS_GCHANNELPLAY_PATH"

.field private static final TIMER_DURATION:I = 0x3a98


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mHeartRunnable:Ljava/lang/Runnable;

.field private mIsForeground:Z

.field private mOrderSaveBackupFile:Ljava/io/File;

.field private mOrderSaveFile:Ljava/io/File;

.field private mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;


# direct methods
.method public static synthetic $r8$lambda$CGK0vIyokvsnor7xp5EZJHCI85M(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$checkVerifyLocalSaveOrder$7(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CNurpJ1zq-uv1zSkw9gc3tq5VP0(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;Ljava/lang/String;ILjava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$launchBillingFlow$1(Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;Ljava/lang/String;ILjava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MK3YhISpbQHBYDKKEwzXz2hoXb0(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$verifyPurchase$9(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$US1VkaDKFkEbWu31XZCpVq9cgyU(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$peekConsumingProducts$13(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYs2JghCIIawdXSTtJ1WTsq9vwM(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$verifyPurchase$8(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dmtpgLqcQ2EkMrZfjX51sW6CZk8(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;IZLjava/lang/String;Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$consumePurchase$4(IZLjava/lang/String;Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFKDEGaji4BP7z3KTFnW-is3SLg(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4f/sdk/core/OnSDKFinish;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$tgsQueryProductDetailsAsync$0(Lcom/t4f/sdk/core/OnSDKFinish;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHeartRunnable(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsForeground(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mIsForeground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHeartRunnable(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckVerifyLocalSaveOrder(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)Z
    .locals 0

    invoke-direct {p0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->checkVerifyLocalSaveOrder()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetTimer(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->resetTimer(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mIsForeground:Z

    return-void
.end method

.method private checkAndRemoveRetryOutCached(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;"
        }
    .end annotation

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->findConsumingProduct(Ljava/lang/Object;Ljava/util/List;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 650
    invoke-virtual {p1, v1}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getVerifyRetryCount(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 651
    invoke-virtual {p1, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    const-string v3, " limit=10 "

    const-string v4, "sdktgs.googlepay"

    if-le v1, v2, :cond_1

    .line 654
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Give up verify google pay consuming product while retry times more than limit.retryCount="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveBackupFile:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "To move save just give up verify google pay consuming product into second cached. retryCount="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveBackupFile:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->saveConsumingProduct(Ljava/io/File;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {p1, v1}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setVerifyRetryCount(I)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Check retry count for verify order google pay consuming product.retryCount="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method private checkVerifyLocalSaveOrder()Z
    .locals 1

    .line 543
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda10;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)V

    invoke-direct {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->getSavedConsumingProducts(Lcom/t4f/sdk/core/OnFinish;)Z

    move-result v0

    return v0
.end method

.method private consumePurchase(Ljava/lang/String;ZILjava/lang/String;Lcom/t4f/sdk/core/OnFinish;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Lcom/t4f/sdk/core/OnFinish<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v6, p0

    move-object v0, p1

    move v3, p2

    move/from16 v2, p3

    move-object/from16 v7, p4

    move-object/from16 v5, p5

    const/4 v1, -0x1

    const-string v4, " purchaseTokenLength="

    const-string v8, " purchaseState="

    const-string v9, " isAcknowledged="

    const-string v10, "sdktgs.googlepay"

    if-eqz v0, :cond_6

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_0

    goto/16 :goto_1

    .line 502
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "subscription"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "subs"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Google pay consume purchase as INAPP type.goodsType="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_2

    .line 517
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {v10, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/sdk/core/OnFinish;)V

    invoke-super {p0, v7, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->consumeAsync(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    const/4 v11, 0x1

    if-ne v2, v11, :cond_5

    if-nez v3, :cond_5

    .line 505
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Google pay consume purchase as SUBS type.goodsType="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_4

    .line 506
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v10, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda1;

    invoke-direct {v0, v5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/sdk/core/OnFinish;)V

    invoke-super {p0, v7, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    move-result v0

    return v0

    :cond_5
    const-string v0, "Not need consume as SUBS type"

    const/4 v1, 0x0

    const/16 v2, 0x7d1

    .line 514
    invoke-static {v2, v0, v1, v5}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    const/4 v0, 0x0

    return v0

    .line 481
    :cond_6
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Google pay consume purchase as ALL type.goodsType="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_7

    .line 482
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v10, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v8, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p3

    move v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;IZLjava/lang/String;Lcom/t4f/sdk/core/OnFinish;)V

    invoke-super {p0, v7, v8}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->consumeAsync(Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    move-result v0

    return v0
.end method

.method private deleteConsumingProduct(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p1, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 708
    :cond_1
    iget-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->peekConsumingProducts(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)Z

    move-result p1

    return p1

    .line 705
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail delete google pay consuming product while orderId invalid."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdktgs.googlepay"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private findConsumingProduct(Ljava/lang/Object;Ljava/util/List;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;)",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    .line 734
    invoke-direct {p0, p1, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->isSameConsumingOrder(Ljava/lang/Object;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getSavedConsumingProducts(Lcom/t4f/sdk/core/OnFinish;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/t4f/sdk/core/OnFinish<",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda4;-><init>(Lcom/t4f/sdk/core/OnFinish;)V

    invoke-direct {p0, v0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->peekConsumingProducts(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private handlePurchaseSucceed(Ljava/util/List;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 354
    iget-object v9, v7, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lock:Ljava/lang/Object;

    monitor-enter v9

    if-eqz v8, :cond_0

    .line 355
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v10, v0

    const/4 v11, 0x0

    if-gtz v10, :cond_1

    .line 357
    monitor-exit v9

    return v11

    .line 359
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v11

    :goto_1
    if-ge v13, v10, :cond_18

    .line 362
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    if-nez v1, :cond_2

    move/from16 v20, v10

    move-object v8, v12

    move v12, v11

    goto/16 :goto_14

    .line 365
    :cond_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 368
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "utf-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "sdktgs.googlepay"

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception encode purchase signature.e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v4

    .line 374
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 376
    :goto_3
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v14

    .line 377
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 378
    invoke-virtual {v15}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-eqz v15, :cond_6

    .line 379
    invoke-virtual {v15}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    if-eqz v11, :cond_8

    .line 380
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v19, v3

    move/from16 v20, v10

    move-object/from16 v18, v12

    goto :goto_7

    :cond_8
    :goto_6
    const-string v6, "channel_buy_result"

    const-string v8, ""

    move-object/from16 v18, v12

    .line 382
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    const-string v3, "GetObfuscatedProfileId is null. HandlePayResultSuccess. index="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " AccountId="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " obfuscatedOrderId="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " iap_data="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "gplay"

    move/from16 v20, v10

    const/4 v10, 0x0

    invoke-static {v6, v8, v3, v12, v10}, Lcom/t4ftgs/channel/global/GlobalSDK;->uploadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_7
    if-eqz v11, :cond_9

    const-string v3, "\\|"

    .line 386
    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    const-string v3, ""

    const-string v6, ""

    const-string v8, ""

    if-eqz v10, :cond_a

    .line 390
    array-length v12, v10

    const/4 v11, 0x2

    if-le v12, v11, :cond_a

    const/4 v12, 0x0

    .line 391
    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 392
    aget-object v8, v10, v6

    .line 393
    aget-object v6, v10, v11

    const/4 v10, 0x0

    move-object/from16 v21, v8

    move-object v8, v6

    move-object/from16 v6, v21

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 396
    :goto_9
    invoke-virtual {v7, v0, v10}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->findProductDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 397
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v10

    .line 399
    :cond_b
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v1

    .line 401
    new-instance v11, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    invoke-direct {v11}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;-><init>()V

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    const-string v0, ""

    .line 402
    :goto_a
    invoke-virtual {v11, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setProductId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v15, :cond_d

    goto :goto_b

    :cond_d
    const-string v15, ""

    .line 403
    :goto_b
    invoke-virtual {v11, v15}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setOrderId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    const-string v0, ""

    .line 404
    invoke-virtual {v11, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setReason(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v5, :cond_e

    move-object v0, v5

    goto :goto_c

    :cond_e
    const-string v0, ""

    .line 405
    :goto_c
    invoke-virtual {v11, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setPurchaseToken(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    .line 406
    invoke-virtual {v11, v4}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setPurchaseState(I)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v2, :cond_f

    goto :goto_d

    :cond_f
    const-string v2, ""

    .line 407
    :goto_d
    invoke-virtual {v11, v2}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setSignature(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v14, :cond_10

    goto :goto_e

    :cond_10
    const-string v14, ""

    .line 408
    :goto_e
    invoke-virtual {v11, v14}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setIapData(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v6, :cond_11

    goto :goto_f

    :cond_11
    const-string v6, ""

    .line 409
    :goto_f
    invoke-virtual {v11, v6}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setCharacterId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v3, :cond_12

    goto :goto_10

    :cond_12
    const-string v3, ""

    .line 410
    :goto_10
    invoke-virtual {v11, v3}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setAccountId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v8, :cond_13

    goto :goto_11

    :cond_13
    const-string v8, ""

    .line 411
    :goto_11
    invoke-virtual {v11, v8}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setServerId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v10, :cond_14

    move-object v0, v10

    goto :goto_12

    :cond_14
    const-string v0, ""

    .line 412
    :goto_12
    invoke-virtual {v11, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setGoodsType(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    move/from16 v3, v19

    .line 413
    invoke-virtual {v11, v3}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->setAcknowledged(Z)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    const/4 v0, 0x1

    if-ne v4, v0, :cond_16

    if-nez v3, :cond_16

    if-eqz v1, :cond_15

    goto :goto_13

    :cond_15
    const-string v0, "sdktgs.googlepay"

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add order into verify list. purchaseState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isAcknowledged="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isAutoRenewing="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v18

    .line 432
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, v7, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    invoke-direct {v7, v0, v11}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->saveConsumingProduct(Ljava/io/File;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    .line 436
    invoke-direct/range {v1 .. v6}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->consumePurchase(Ljava/lang/String;ZILjava/lang/String;Lcom/t4f/sdk/core/OnFinish;)Z

    goto :goto_14

    :cond_16
    :goto_13
    move-object/from16 v8, v18

    const-string v0, "sdktgs.googlepay"

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not need add subs order into verify list while order purchaseState not PURCHASED and isAcknowledged. purchaseState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isAcknowledged="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isAutoRenewing="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {v7, v11}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->deleteConsumingProduct(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    if-nez v3, :cond_17

    const/4 v0, 0x1

    if-ne v4, v0, :cond_17

    const-string v0, "sdktgs.googlepay"

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need Consume. purchaseState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isAcknowledged="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isAutoRenewing="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    .line 424
    invoke-direct/range {v1 .. v6}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->consumePurchase(Ljava/lang/String;ZILjava/lang/String;Lcom/t4f/sdk/core/OnFinish;)Z

    :cond_17
    :goto_14
    add-int/lit8 v13, v13, 0x1

    move v11, v12

    move/from16 v10, v20

    move-object v12, v8

    move-object/from16 v8, p1

    goto/16 :goto_1

    :cond_18
    move-object v8, v12

    .line 438
    invoke-direct {v7, v8}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->verifyPurchase(Ljava/util/List;)Z

    move-result v0

    monitor-exit v9

    return v0

    .line 439
    :goto_15
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isSameConsumingOrder(Ljava/lang/Object;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 751
    invoke-virtual {p2, v2}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 752
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 753
    :cond_2
    instance-of v1, p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-eqz v1, :cond_3

    .line 754
    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    invoke-virtual {p1, v2}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->isSameConsumingOrder(Ljava/lang/Object;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private isSubscriptionGoodsType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "subscription"

    .line 534
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "subs"

    .line 535
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private synthetic lambda$checkVerifyLocalSaveOrder$7(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 543
    invoke-direct {p0, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->verifyPurchase(Ljava/util/List;)Z

    return-void
.end method

.method static synthetic lambda$consumePurchase$3(Lcom/android/billingclient/api/BillingResult;Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-eqz p0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    :goto_1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v0

    .line 490
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish consume google pay purchase as ALL type.code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdktgs.googlepay"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    const/16 p2, 0x7d0

    goto :goto_3

    :cond_3
    const/16 p2, 0x7d7

    .line 491
    :goto_3
    invoke-static {p2, p0, v0, p1}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return-void
.end method

.method private synthetic lambda$consumePurchase$4(IZLjava/lang/String;Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    const/4 p6, 0x1

    if-ne p1, p6, :cond_0

    if-nez p2, :cond_0

    .line 485
    new-instance p1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;

    invoke-direct {p1, p5, p4}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;-><init>(Lcom/android/billingclient/api/BillingResult;Lcom/t4f/sdk/core/OnFinish;)V

    invoke-super {p0, p3, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->acknowledgePurchase(Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 496
    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    :goto_0
    const/4 p2, 0x0

    if-eqz p5, :cond_2

    .line 497
    invoke-virtual {p5}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p2

    .line 498
    :goto_1
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Finish consume google pay purchase as ALL type but inapp.code="

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " errorMessage="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "sdktgs.googlepay"

    invoke-static {p6, p5}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    const/16 p1, 0x7d0

    goto :goto_2

    :cond_3
    const/16 p1, 0x7d7

    .line 499
    :goto_2
    invoke-static {p1, p3, p2, p4}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return-void
.end method

.method static synthetic lambda$consumePurchase$5(Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 510
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finish consume google pay purchase as SUBS type.code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdktgs.googlepay"

    invoke-static {v3, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/16 v0, 0x7d0

    goto :goto_2

    :cond_2
    const/16 v0, 0x7d7

    .line 511
    :goto_2
    invoke-static {v0, p1, v1, p0}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return-void
.end method

.method static synthetic lambda$consumePurchase$6(Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 521
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finish consume google pay purchase as INAPP type.code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdktgs.googlepay"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    const/16 v0, 0x7d0

    goto :goto_2

    :cond_2
    const/16 v0, 0x7d7

    .line 522
    :goto_2
    invoke-static {v0, p1, p2, p0}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return-void
.end method

.method static synthetic lambda$consumePurchaseProduct$2(Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 461
    invoke-interface {p0, p1, p2, p3}, Lcom/t4f/sdk/core/OnSDKFinish;->onSdkFinish(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$deleteConsumingProduct$11(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-eqz p1, :cond_0

    .line 709
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 710
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    .line 713
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-nez v4, :cond_1

    goto :goto_2

    .line 715
    :cond_1
    invoke-virtual {v4, v3}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 716
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 719
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v3

    :goto_3
    return-object p1
.end method

.method static synthetic lambda$getSavedConsumingProducts$12(Lcom/t4f/sdk/core/OnFinish;Ljava/util/List;)Ljava/util/List;
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    .line 766
    invoke-interface {p0, v0, v1, p1}, Lcom/t4f/sdk/core/OnFinish;->onFinish(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private synthetic lambda$launchBillingFlow$1(Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;Ljava/lang/String;ILjava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 2

    .line 334
    iget-object p5, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    if-eqz p5, :cond_0

    if-ne p1, p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    .line 339
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google pay launch billing flow directly callback.isCurrentPurchasing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " code="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " errorMessage="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " productId="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "sdktgs.googlepay"

    invoke-static {p5, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1, p3, p4}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->notifyPurchaseFinish(ILjava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$peekConsumingProducts$13(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V
    .locals 0

    .line 784
    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->peekConsumingProducts(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)Z

    return-void
.end method

.method static synthetic lambda$peekConsumingProducts$14(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V
    .locals 7

    .line 787
    monitor-enter p0

    const/4 v0, 0x0

    .line 789
    :try_start_0
    invoke-static {p0, v0}, Lcom/t4f/utils/Utils;->readFileAsText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/json/Json;->jsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 793
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    .line 795
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 798
    :cond_1
    new-instance v6, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    invoke-direct {v6, v5}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "sdktgs.googlepay"

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load saved google pay orders."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 801
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-interface {p1, v2}, Lcom/t4f/sdk/core/Convector;->onConvert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 804
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 806
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_4

    .line 808
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-nez v4, :cond_3

    goto :goto_4

    .line 811
    :cond_3
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const-string p1, "sdktgs.googlepay"

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save google pay consuming orders."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v3}, Lcom/t4f/utils/Utils;->writeTextIntoFile(Ljava/lang/Object;Ljava/lang/String;ZZ)J

    .line 816
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$saveConsumingProduct$10(Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;
    .locals 4

    if-eqz p2, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p2, :cond_1

    .line 683
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 686
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    .line 688
    invoke-virtual {v2, v3}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v3

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 692
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private synthetic lambda$tgsQueryProductDetailsAsync$0(Lcom/t4f/sdk/core/OnSDKFinish;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz p2, :cond_0

    move-object/from16 v4, p0

    move-object/from16 v2, p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    const-string v3, "Unknown queryTgsProductDetailsAsync."

    move-object/from16 v4, p0

    .line 61
    invoke-virtual {v4, v2, v3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    .line 62
    :goto_0
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "sdktgs.googlepay"

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    const-string v1, "Canceled get Google product list."

    .line 65
    invoke-static {v6, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Canceled get Google product list.errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-static {v2, v1, v5, v0}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "Error get Google product list."

    .line 70
    invoke-static {v6, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error get Google product list.errorMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-static {v2, v1, v5, v0}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 76
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    .line 77
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Finish query Tgs product details async.count="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " responseCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    move v11, v7

    goto :goto_2

    :cond_4
    move v11, v10

    :goto_2
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_14

    .line 81
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/billingclient/api/ProductDetails;

    if-nez v12, :cond_5

    move v4, v10

    goto/16 :goto_f

    .line 84
    :cond_5
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v13

    .line 85
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v14

    .line 89
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    if-eqz v14, :cond_13

    const-string v5, "subs"

    .line 90
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 91
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 92
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_4

    :cond_6
    const/4 v12, -0x1

    .line 93
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v8, "lengthSubsOfferList size: lengthSubsOfferList="

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v12, :cond_7

    .line 94
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_8

    .line 95
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v5

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_9

    .line 96
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v5

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    const-string v8, ""

    if-eqz v5, :cond_12

    .line 98
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 99
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v10, "pricingPhasesList size="

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v12, :cond_b

    .line 102
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-nez v14, :cond_a

    goto :goto_9

    .line 106
    :cond_a
    new-instance v7, Lcom/t4f/json/Json;

    invoke-direct {v7}, Lcom/t4f/json/Json;-><init>()V

    .line 107
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "priceAmountMicros"

    invoke-virtual {v7, v4, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v1, "priceCurrencyCode"

    .line 108
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v1, "formattedPrice"

    .line 109
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v1, "billingPeriod"

    .line 110
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    .line 111
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "recurrenceMode"

    invoke-virtual {v7, v4, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    .line 112
    invoke-virtual {v14}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "billingCycleCount"

    invoke-virtual {v7, v4, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "pricingPhase: pricingPhaseDicStr="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v1, p3

    const/4 v7, 0x1

    goto :goto_8

    :cond_b
    move v1, v7

    if-ne v12, v1, :cond_c

    const/4 v1, 0x0

    .line 118
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 119
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_e

    :cond_c
    const/4 v1, 0x2

    if-ne v12, v1, :cond_11

    new-array v1, v1, [J

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v12, :cond_e

    .line 137
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    if-nez v7, :cond_d

    goto :goto_b

    .line 141
    :cond_d
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v16

    aput-wide v16, v1, v11

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    aget-wide v16, v1, v4

    const/4 v7, 0x1

    aget-wide v18, v1, v7

    cmp-long v1, v16, v18

    if-gez v1, :cond_f

    .line 145
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 146
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 148
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v1, v8

    move-object v8, v4

    const/4 v4, 0x0

    goto :goto_e

    :cond_f
    cmp-long v1, v16, v18

    if-lez v1, :cond_10

    .line 150
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 151
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 152
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 153
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    .line 155
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 156
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    :goto_c
    move-object/from16 v20, v5

    move-object v5, v1

    move-object v1, v8

    move-object/from16 v8, v20

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    move v4, v10

    :goto_d
    move-object v1, v8

    move-object v5, v1

    goto :goto_e

    :cond_13
    move v4, v10

    .line 162
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v8

    .line 164
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v5

    move-object v5, v1

    move-object/from16 v1, v20

    .line 167
    :goto_e
    new-instance v10, Lcom/t4f/json/Json;

    invoke-direct {v10}, Lcom/t4f/json/Json;-><init>()V

    const-string v12, "Google play response."

    .line 168
    invoke-static {v6, v12}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "product_id"

    .line 169
    invoke-virtual {v10, v12, v13}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v12, "formatted_price"

    .line 170
    invoke-virtual {v10, v12, v8}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v8, "price_country"

    .line 171
    invoke-virtual {v10, v8, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v1, "discount_price"

    .line 172
    invoke-virtual {v10, v1, v5}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    const-string v1, "original_data"

    .line 173
    invoke-virtual {v10, v1, v15}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    .line 174
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p3

    move v10, v4

    const/4 v5, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_3

    .line 176
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "queryProductDetailsAsync array.toString: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d0

    .line 177
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v0}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method private synthetic lambda$verifyPurchase$8(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->checkAndRemoveRetryOutCached(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$verifyPurchase$9(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 619
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "C# verify google pay order invoke callback."

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "sdktgs.googlepay"

    invoke-static {p4, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x7d0

    if-eq p2, p3, :cond_0

    const/16 p3, 0x7d8

    if-eq p2, p3, :cond_0

    .line 626
    iget-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    new-instance p3, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda5;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)V

    invoke-direct {p0, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->peekConsumingProducts(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)Z

    :cond_0
    return-void
.end method

.method private launchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;)Z
    .locals 10

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Query google pay unconsumed pay inApp and subs item before launch new billing flow."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdktgs.googlepay"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inapp"

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, v0, v2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    const-string v0, "subs"

    .line 312
    invoke-virtual {p0, v0, v2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->findProductDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v5

    if-nez v5, :cond_1

    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fail launch google pay billing flow while productId NOT FOUND."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    .line 324
    iput-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    if-eqz v3, :cond_2

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "To cancel current google pay before launch new billing flow."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7d3

    const-string v4, "Cancel last while launch new purchase."

    .line 327
    invoke-virtual {v3, v2, v4}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->notifyPurchaseFinish(ILjava/lang/String;)Z

    .line 329
    :cond_2
    new-instance v2, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    invoke-direct {v2, v5}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;-><init>(Lcom/android/billingclient/api/ProductDetails;)V

    invoke-virtual {v2, p4}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->setCallback(Lcom/t4f/sdk/core/OnSDKFinish;)Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    move-result-object v2

    .line 330
    invoke-virtual {v2, p2}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    move-result-object v2

    iput-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "To launch google pay billing flow."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v9, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;

    invoke-direct {v9, p0, v2, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;Ljava/lang/String;)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    invoke-super/range {v4 .. v9}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->launchBillingFlow(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/t4f/sdk/core/OnFinish;)Z

    move-result p1

    return p1

    .line 315
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fail launch google pay billing flow while productId invalid."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private peekConsumingProducts(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/t4f/sdk/core/Convector<",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "sdktgs.googlepay"

    if-nez p2, :cond_0

    const-string p1, "Fail peek google pay consuming product list while convector invalid."

    .line 778
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Fail get google pay consuming product list while orderSavePath invalid."

    .line 781
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 783
    :cond_1
    invoke-static {}, Lcom/t4f/utils/Utils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda6;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 786
    :cond_2
    invoke-static {}, Lcom/t4f/utils/ThreadPoolUtils;->getInstance()Lcom/t4f/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda7;-><init>(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)V

    invoke-virtual {v0, v1}, Lcom/t4f/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method private resetTimer(I)Z
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 558
    iput-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    .line 559
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 561
    :cond_1
    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;

    invoke-direct {v1, p0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$1;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;)V

    iput-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method private saveConsumingProduct(Ljava/io/File;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 676
    invoke-virtual {p2, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 681
    :cond_1
    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)V

    invoke-direct {p0, p1, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->peekConsumingProducts(Ljava/io/File;Lcom/t4f/sdk/core/Convector;)Z

    move-result p1

    return p1

    .line 678
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail save google pay consuming product while orderId invalid."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdktgs.googlepay"

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private verifyPurchase(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 592
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 593
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start verify google pay purchases.count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdktgs.googlepay"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 597
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 603
    invoke-virtual {v1, v3}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getIapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 604
    invoke-static {v4}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_4

    .line 605
    new-instance v5, Lcom/t4ftgs/channel/global/googlepay/IapData;

    invoke-direct {v5, v4}, Lcom/t4ftgs/channel/global/googlepay/IapData;-><init>(Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_4
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_5

    .line 607
    invoke-virtual {v5, v3}, Lcom/t4ftgs/channel/global/googlepay/IapData;->getOrderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v3

    :goto_4
    if-eqz v5, :cond_6

    .line 608
    invoke-virtual {v5, v3}, Lcom/t4ftgs/channel/global/googlepay/IapData;->getObfuscatedProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v3

    :goto_5
    if-eqz v4, :cond_9

    const-string v6, "GPA."

    .line 610
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 612
    invoke-static {}, Lcom/t4ftgs/channel/global/GlobalSDK;->getInstance()Lcom/t4ftgs/channel/global/GlobalSDK;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 613
    invoke-virtual {v4}, Lcom/t4ftgs/channel/global/GlobalSDK;->getGlobalCSharpInvoker()Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    const-string v1, "Can\'t verify google pay order while cSharpInvoker is NULL."

    .line 615
    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v4, "To invoke c# verify google pay order."

    .line 617
    invoke-static {v2, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda3;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)V

    invoke-interface {v3, v4, v5}, Lcom/t4ftgs/channel/global/PayCSharpInvoker;->verifyPurchaseOrder(Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    goto :goto_1

    .line 631
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "To delete invalid consuming product.orderId="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " obfuscatedProfileId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->deleteConsumingProduct(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    goto/16 :goto_1

    .line 635
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Finish verify google pay purchases.count="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public OnForegroundChanged(ZLandroid/app/Activity;)V
    .locals 0

    .line 824
    iput-boolean p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mIsForeground:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 827
    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->resetTimer(I)Z

    goto :goto_0

    .line 829
    :cond_0
    iget-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 830
    iget-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 831
    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mHeartRunnable:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method public consumePurchaseProduct(Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 13

    .line 449
    invoke-static {p1}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 450
    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    invoke-direct {v1, p1}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 p1, 0x0

    if-nez v1, :cond_1

    return p1

    .line 454
    :cond_1
    invoke-virtual {v1, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getPurchaseToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-virtual {v1, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getGoodsType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x1

    .line 456
    invoke-virtual {v1, v2}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getPurchaseStateInteger(I)I

    move-result v9

    .line 457
    invoke-virtual {v1, p1}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->isAcknowledgedBoolean(Z)Z

    move-result p1

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConsumePurchaseProduct goodsType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", purchase_state="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", isAcknowledged="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "sdktgs.googlepay"

    invoke-static {v12, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    .line 459
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz p2, :cond_2

    .line 461
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda11;-><init>(Lcom/t4f/sdk/core/OnSDKFinish;)V

    :cond_2
    move-object v7, v0

    move-object v2, p0

    move-object v3, v8

    move v4, p1

    move v5, v9

    .line 460
    invoke-direct/range {v2 .. v7}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->consumePurchase(Ljava/lang/String;ZILjava/lang/String;Lcom/t4f/sdk/core/OnFinish;)Z

    .line 463
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "To delete consume purchase product while call consumePurchaseProduct. goodsType="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->deleteConsumingProduct(Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;)Z

    move-result p1

    return p1
.end method

.method public initial(Landroid/app/Activity;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 189
    new-instance v2, Ljava/io/File;

    const-string v3, "TGS_GCHANNELPLAY_PATH"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    :goto_2
    iput-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    if-eqz v2, :cond_3

    .line 191
    new-instance v1, Ljava/io/File;

    const-string v3, "TGS_GCHANNELPLAY_BACKUP"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveBackupFile:Ljava/io/File;

    :goto_4
    iput-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveBackupFile:Ljava/io/File;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google pay order save path."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mOrderSaveBackupFile:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdktgs.googlepay"

    invoke-static {v2, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-super {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->initial(Landroid/app/Activity;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Succeed init google pay native."

    .line 196
    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "To auto start google pay billing client after init succeed."

    .line 202
    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)Z

    return v3

    :cond_6
    const-string p1, "Fail init google pay native."

    .line 206
    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method protected onGoogleBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 216
    invoke-super {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->onGoogleBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "sdktgs.googlepay"

    const-string v0, "To reset google pay timer and query all types purchase async after billing setup finished."

    .line 218
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->resetTimer(I)Z

    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->queryAllTypesPurchasesAsync(Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    .line 223
    invoke-static {}, Lcom/t4f/activity/ActivityLifecycle;->getInstance()Lcom/t4f/activity/ActivityLifecycle;

    move-result-object p1

    const-string v0, "TgsGoolePay"

    invoke-virtual {p1, v0, p0}, Lcom/t4f/activity/ActivityLifecycle;->put(Ljava/lang/Object;Lcom/t4f/activity/Listener;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-super {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    const-string v0, "Unknown error purchase updated."

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->createBillingResult(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 239
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 240
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 242
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "Google responseCode:%d, debugMessage:%s"

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 243
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 244
    :goto_1
    iget-object v5, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 245
    invoke-virtual {v5, v6}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->getProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v6

    :goto_2
    if-eqz v5, :cond_3

    .line 246
    invoke-virtual {v5}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->getCallback()Lcom/t4f/sdk/core/OnSDKFinish;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v6

    .line 247
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "On google pay purchase updated.responseCode="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " errorMessage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " size="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " purchasingProduct="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_4

    move v12, v3

    goto :goto_4

    :cond_4
    move v12, v4

    :goto_4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " existCallback="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " productId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sdktgs.googlepay"

    invoke-static {v9, v8}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_6

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed purchase Google pay item. productId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_b

    .line 286
    iput-object v6, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v4

    const-string p2, "Failed purchase Google pay item, %s"

    .line 287
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d1

    invoke-virtual {v5, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->notifyPurchaseFinish(ILjava/lang/String;)Z

    goto/16 :goto_8

    :cond_6
    if-eqz v5, :cond_7

    if-eqz p1, :cond_7

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "billing dialog closed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "To query purchase async after cancel response Code with billing dialog closed."

    .line 272
    invoke-static {v9, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, v6}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->queryAllTypesPurchasesAsync(Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    return-void

    .line 277
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Canceled purchase Google pay item. productId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_b

    .line 279
    iput-object v6, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v4

    const-string p2, "Canceled purchase Google pay item, %s"

    .line 280
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {v5, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->notifyPurchaseFinish(ILjava/lang/String;)Z

    goto :goto_8

    .line 251
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Succeed purchase Google pay item. productId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->handlePurchaseSucceed(Ljava/util/List;)Z

    if-eqz v5, :cond_9

    .line 253
    invoke-virtual {v5, v6}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->getObfuscatedProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v6

    :goto_6
    if-eqz p1, :cond_a

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->findPurchaseByTgsOrderId(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/Purchase;

    move-result-object p1

    goto :goto_7

    :cond_a
    move-object p1, v6

    :goto_7
    if-eqz p1, :cond_b

    if-eqz v5, :cond_b

    const-string p1, "Current purchase google pay item succeed."

    .line 256
    invoke-static {v9, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iput-object v6, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->mPurchasingProduct:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v4

    const-string p2, "Google purchase succeed, %s"

    .line 258
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d0

    invoke-virtual {v5, p2, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->notifyPurchaseFinish(ILjava/lang/String;)Z

    :cond_b
    :goto_8
    return-void
.end method

.method public final tgsLaunchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;)Z
    .locals 0

    .line 304
    invoke-direct/range {p0 .. p5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->launchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public final tgsQueryProductDetailsAsync([Ljava/lang/String;[Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 1

    .line 59
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;-><init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-super {p0, p1, p2, v0}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->queryProductDetailsAsync([Ljava/lang/String;[Ljava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)Z

    move-result p1

    return p1
.end method
