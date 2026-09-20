.class Lcom/t4f/sdkpay/flexion/FlexionSDK$FlexionPurchaseListener;
.super Ljava/lang/Object;
.source "FlexionSDK.java"

# interfaces
.implements Lcom/flexionmobile/fdk/PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdkpay/flexion/FlexionSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlexionPurchaseListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/t4f/sdkpay/flexion/FlexionSDK$1;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$FlexionPurchaseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public processPurchase(Lcom/flexionmobile/fdk/PurchaseResult;)V
    .locals 6

    const/4 v0, 0x0

    .line 334
    invoke-static {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->access$102(Z)Z

    .line 335
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->finishTransaction()V

    .line 336
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v1

    sget-object v2, Lcom/flexionmobile/fdk/PurchaseResultCode;->SUCCESS:Lcom/flexionmobile/fdk/PurchaseResultCode;

    const-string v3, "T4F.FlexionSDK"

    if-ne v1, v2, :cond_0

    const-string v1, "onPending: \u652f\u4ed8\u56de\u8c03, \u652f\u4ed8\u6210\u529f..."

    .line 337
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Flexion buyItem success"

    .line 338
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getPurchase()Lcom/flexionmobile/fdk/Purchase;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->access$200(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v1

    sget-object v2, Lcom/flexionmobile/fdk/PurchaseResultCode;->PENDING:Lcom/flexionmobile/fdk/PurchaseResultCode;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    const-string p1, "onPending: \u652f\u4ed8\u56de\u8c03, \u652f\u4ed8\u8fdb\u884c\u4e2d..."

    .line 340
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Flexion purchase pending"

    .line 341
    invoke-static {v4, p1, v5}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->access$200(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v1

    sget-object v2, Lcom/flexionmobile/fdk/PurchaseResultCode;->USER_CANCELLED:Lcom/flexionmobile/fdk/PurchaseResultCode;

    if-ne v1, v2, :cond_2

    const-string p1, "onUserCanceled: \u652f\u4ed8\u56de\u8c03, \u7528\u6237\u53d6\u6d88"

    .line 343
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string v0, "Flexion purchase cancel"

    .line 344
    invoke-static {p1, v0, v5}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->access$200(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v1

    sget-object v2, Lcom/flexionmobile/fdk/PurchaseResultCode;->INCOMPLETE:Lcom/flexionmobile/fdk/PurchaseResultCode;

    if-ne v1, v2, :cond_3

    const-string v1, "onUserCanceled: \u652f\u4ed8\u56de\u8c03, INCOMPLETE"

    .line 347
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Flexion buyItem success,but status is INCOMPLETE"

    .line 348
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getPurchase()Lcom/flexionmobile/fdk/Purchase;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->access$200(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    goto :goto_0

    :cond_3
    const-string v0, "onUserCanceled: \u652f\u4ed8\u56de\u8c03, \u652f\u4ed8\u9519\u8bef"

    .line 350
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flexion purchase error,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseResult;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v5}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->access$200(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    :goto_0
    return-void
.end method
