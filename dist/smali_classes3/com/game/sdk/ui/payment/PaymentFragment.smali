.class public Lcom/game/sdk/ui/payment/PaymentFragment;
.super Lcom/game/sdk/comon/game/BaseDialogWebFragment;
.source "PaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "PaymentFragment"


# instance fields
.field account_id:Ljava/lang/String;

.field current:I

.field currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

.field iPaymentPresenter:Lcom/game/sdk/ui/payment/IPaymentPresenter;

.field listPresenter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/ui/payment/IPaymentPresenter;",
            ">;"
        }
    .end annotation
.end field

.field paymentGGSuccess:Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;

.field productObj:Lcom/game/sdk/comon/object/ProductObj;

.field purchase:Lcom/android/billingclient/api/Purchase;

.field sendHistory:Z

.field skuDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;-><init>()V

    .line 365
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentFragment$6;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentFragment$6;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/payment/PaymentFragment;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/payment/PaymentFragment;->processPurchases(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/game/sdk/ui/payment/PaymentFragment;)Lcom/android/billingclient/api/SkuDetailsResponseListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    return-object p0
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 312
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePurchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string v1, "PURCHASE IS PURCHASED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->purchase:Lcom/android/billingclient/api/Purchase;

    .line 317
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/payment/PaymentFragment$5;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, p1, v1}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->consumeAsyncPurchase(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 360
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string v0, "PURCHASE IS PENDING "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;)Lcom/game/sdk/ui/payment/PaymentFragment;
    .locals 3

    .line 71
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/payment/PaymentFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    sget-object v2, Lcom/game/sdk/ui/payment/PaymentFragment;->URL_WEBVIEW:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/payment/PaymentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/game/sdk/ui/payment/PaymentFragment;->setPaymentGGSuccess(Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;)V

    return-object v0
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

    .line 295
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

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

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 297
    invoke-direct {p0, v0}, Lcom/game/sdk/ui/payment/PaymentFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    .line 301
    :cond_0
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string v0, "processPurchases: with no purchases"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string v0, "onPurchasesUpdated: null purchase list"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public checkPurchaseHistory()V
    .locals 3

    .line 232
    iget v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    .line 233
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->account_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getHistoryPurchase(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;

    move-result-object v0

    .line 234
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

    iget v2, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    if-gt v1, v2, :cond_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    .line 237
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/payment/PaymentFragment;->sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getJsHandler()Lcom/game/sdk/comon/js/JsBase;
    .locals 2

    .line 260
    new-instance v0, Lcom/game/sdk/comon/js/JsPayment;

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentFragment$4;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/payment/PaymentFragment$4;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/comon/js/JsPayment;-><init>(Lcom/game/sdk/comon/js/JsPayment$Listener;)V

    return-object v0
.end method

.method protected getWebListener()Lcom/game/sdk/comon/listener/IWebViewClientListener;
    .locals 1

    .line 406
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentFragment$7;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentFragment$7;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentFragment$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/payment/PaymentFragment$1;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V

    new-instance v2, Lcom/game/sdk/ui/payment/PaymentFragment$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/payment/PaymentFragment$2;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->initIABv3(Landroid/content/Context;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->onDestroy()V

    .line 186
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingEndConnection()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->onResume()V

    .line 177
    iget-boolean v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->sendHistory:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->sendHistory:Z

    .line 179
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentFragment;->checkPurchaseHistory()V

    :cond_0
    return-void
.end method

.method public onVerifyPurchase(Lcom/game/sdk/ui/payment/IPaymentPresenter;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;Ljava/lang/String;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;-><init>()V

    .line 243
    invoke-virtual {v0, p3}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setOrder_no(Ljava/lang/String;)V

    const-string p3, "2"

    .line 244
    invoke-virtual {v0, p3}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V

    .line 246
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setLocale(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 255
    invoke-interface {p1, v0}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    :try_start_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/UserObj;->getAccount()Lcom/game/sdk/comon/object/UserObj$Account;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/UserObj$Account;->getAccountId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->account_id:Ljava/lang/String;

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->listPresenter:Ljava/util/ArrayList;

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->skuDetails:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, -0x1

    .line 169
    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->current:I

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->sendHistory:Z

    return-void
.end method

.method public retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V
    .locals 10

    .line 429
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->isPurchaseTokenRequested(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

    const-string v0, "check History : t\u1ea5t c\u1ea3 giao d\u1ecbch \u0111\u00e3 \u0111\u01b0\u1ee3c x\u1eed l\u00fd"

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentFragment;->TAG:Ljava/lang/String;

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

    .line 433
    new-instance v2, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v0, Lcom/game/sdk/ui/payment/PaymentFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/payment/PaymentFragment$8;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    invoke-direct {v2, v0}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 466
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/UserObj;->getId()I

    move-result v0

    .line 468
    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "MOB_ROLE_ID"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    iget-object v4, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    const-string v6, "MOB_AREA_ID"

    invoke-static {v4, v6, v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v8

    .line 471
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    move-object v5, v1

    .line 470
    invoke-interface/range {v2 .. v9}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
    .locals 2

    .line 190
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/payment/PaymentFragment$3;-><init>(Lcom/game/sdk/ui/payment/PaymentFragment;Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 227
    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->listPresenter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/game/sdk/ui/payment/PaymentFragment;->onVerifyPurchase(Lcom/game/sdk/ui/payment/IPaymentPresenter;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;Ljava/lang/String;)V

    return-void
.end method

.method public setPaymentGGSuccess(Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentFragment;->paymentGGSuccess:Lcom/game/sdk/ui/payment/PaymentFragment$PaymentGGSuccess;

    return-void
.end method
