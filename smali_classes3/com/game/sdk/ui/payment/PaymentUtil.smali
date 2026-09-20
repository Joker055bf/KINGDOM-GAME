.class public Lcom/game/sdk/ui/payment/PaymentUtil;
.super Ljava/lang/Object;
.source "PaymentUtil.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/payment/PaymentUtil$PaymentResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentUtil"

.field private static paymentUtil:Lcom/game/sdk/ui/payment/PaymentUtil;


# instance fields
.field accountId:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field current:I

.field currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

.field initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

.field listPresenter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/ui/payment/IPaymentPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private paymentPresenter:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

.field paymentResponse:Lcom/game/sdk/ui/payment/PaymentUtil$PaymentResponse;

.field productId:Ljava/lang/String;

.field skuDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentUtil$5;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentUtil$5;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;)V

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/game/sdk/ui/payment/PaymentUtil;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/payment/PaymentUtil;->processPurchases(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/game/sdk/ui/payment/PaymentUtil;)Landroid/app/Activity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static getInstance()Lcom/game/sdk/ui/payment/PaymentUtil;
    .locals 1

    .line 70
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->paymentUtil:Lcom/game/sdk/ui/payment/PaymentUtil;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentUtil;

    invoke-direct {v0}, Lcom/game/sdk/ui/payment/PaymentUtil;-><init>()V

    sput-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->paymentUtil:Lcom/game/sdk/ui/payment/PaymentUtil;

    .line 74
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->paymentUtil:Lcom/game/sdk/ui/payment/PaymentUtil;

    return-object v0
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 345
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePurchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "PURCHASE IS PURCHASED "

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentUtil$6;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/payment/PaymentUtil$6;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, p1, v1}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->consumeAsyncPurchase(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string p1, "PURCHASE IS PENDING "

    .line 394
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private initIAP(Ljava/lang/String;)V
    .locals 5

    .line 177
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/game/sdk/ui/payment/PaymentUtil$1;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/payment/PaymentUtil$1;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;)V

    new-instance v3, Lcom/game/sdk/ui/payment/PaymentUtil$2;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/payment/PaymentUtil$2;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;)V

    new-instance v4, Lcom/game/sdk/ui/payment/PaymentUtil$3;

    invoke-direct {v4, p0, p1}, Lcom/game/sdk/ui/payment/PaymentUtil$3;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->initIABv3(Landroid/content/Context;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method

.method private initialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 93
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPaymentStartIAP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "MOB_ROLE_ID"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v4, "MOB_AREA_ID"

    invoke-static {v1, v4, v3}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 97
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object p3, v3

    .line 100
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .line 105
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 111
    :cond_3
    new-instance v4, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;

    invoke-direct {v4}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;-><init>()V

    .line 113
    iget-object v5, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setRequest(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/game/sdk/comon/utils/DeviceUtils;->getUniqueDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setDevice_id(Ljava/lang/String;)V

    const-string v5, "2"

    .line 115
    invoke-virtual {v4, v5}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, v3}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setCharacter_name(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4, v0}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setCharacter_id(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setArea_id(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4, v3}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setArea_name(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4, p2}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setItem_no(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setProduct_id(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4, p3}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setPayload(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4, v2}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setInvoice_no(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string p2, "APP_LANG"

    const-string p3, "en"

    invoke-static {p1, p2, p3}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setLocale(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->paymentPresenter:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)V

    :cond_4
    return-void

    .line 106
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showWarmToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showWarmToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private processPurchases(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 328
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processPurchases: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " purchase(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 330
    invoke-direct {p0, v0}, Lcom/game/sdk/ui/payment/PaymentUtil;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    .line 334
    :cond_0
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    const-string v0, "processPurchases: with no purchases"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onPurchasesUpdated: null purchase list"

    .line 335
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public checkPurchaseHistory(Ljava/lang/String;)V
    .locals 3

    .line 400
    iget v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    .line 401
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->accountId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getHistoryPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    .line 405
    invoke-virtual {p0, v0, p1}, Lcom/game/sdk/ui/payment/PaymentUtil;->sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 3

    .line 164
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/GetListPurchaseErrObj;

    if-eqz v0, :cond_0

    .line 166
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/InitialPurchaseErrObj;

    if-eqz v0, :cond_1

    .line 169
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    instance-of p1, p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public initialPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentUtil$PaymentResponse;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    .line 80
    iput-object p5, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->paymentResponse:Lcom/game/sdk/ui/payment/PaymentUtil$PaymentResponse;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->skuDetails:Ljava/util/List;

    .line 82
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/UserObj;->getAccount()Lcom/game/sdk/comon/object/UserObj$Account;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/UserObj$Account;->getAccountId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->accountId:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->productId:Ljava/lang/String;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->listPresenter:Ljava/util/ArrayList;

    .line 85
    new-instance p1, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->paymentPresenter:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->current:I

    .line 87
    invoke-direct {p0, p2}, Lcom/game/sdk/ui/payment/PaymentUtil;->initIAP(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/game/sdk/ui/payment/PaymentUtil;->checkPurchaseHistory(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p2, p3, p4}, Lcom/game/sdk/ui/payment/PaymentUtil;->initialPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V
    .locals 10

    .line 244
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->isPurchaseTokenRequested(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    const-string v0, "check History : t\u1ea5t c\u1ea3 giao d\u1ecbch \u0111\u00e3 \u0111\u01b0\u1ee3c x\u1eed l\u00fd"

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchaseToken"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v2, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v0, Lcom/game/sdk/ui/payment/PaymentUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/payment/PaymentUtil$4;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    invoke-direct {v2, v0}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 280
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/UserObj;->getId()I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    const-string v4, "MOB_ROLE_ID"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v4, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    const-string v6, "MOB_AREA_ID"

    invoke-static {v4, v6, v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    move-object v5, v1

    invoke-interface/range {v2 .. v9}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;)V
    .locals 2

    .line 409
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentUtil$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/game/sdk/ui/payment/PaymentUtil$7;-><init>(Lcom/game/sdk/ui/payment/PaymentUtil;Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 447
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->listPresenter:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    move-result-object p2

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/game/sdk/ui/payment/PaymentUtil;->verifyPurchase(Lcom/game/sdk/ui/payment/IPaymentPresenter;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;Ljava/lang/String;)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 147
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;

    if-eqz v0, :cond_1

    .line 148
    check-cast p1, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;

    .line 149
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    .line 151
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPaymentStartIAP response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getProduct_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getOrder_no()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getProduct_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->querySkuDetails(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    :cond_1
    return-void
.end method

.method public verifyPurchase(Lcom/game/sdk/ui/payment/IPaymentPresenter;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;Ljava/lang/String;)V
    .locals 1

    .line 452
    new-instance v0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;-><init>()V

    .line 453
    invoke-virtual {v0, p3}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setOrder_no(Ljava/lang/String;)V

    const-string p3, "2"

    .line 454
    invoke-virtual {v0, p3}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V

    .line 456
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 457
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 460
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 461
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 462
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentUtil;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setLocale(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 465
    invoke-interface {p1, v0}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V

    :cond_0
    return-void
.end method
