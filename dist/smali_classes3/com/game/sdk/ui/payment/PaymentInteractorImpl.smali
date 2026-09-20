.class public Lcom/game/sdk/ui/payment/PaymentInteractorImpl;
.super Ljava/lang/Object;
.source "PaymentInteractorImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/payment/IPaymentInteractor;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.game.sdk.ui.payment.PaymentInteractorImpl"


# instance fields
.field private callbackGetListItem:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/ItemPayResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackRetryPayment:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private callbackVerifyPurchase:Lcom/game/sdk/comon/api/MyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game/sdk/comon/api/MyCallback<",
            "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field initialPurchaseResponseObjCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field itemPayResponseObjCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/ItemPayResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

.field mRetryPaymentResponseObj:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;",
            ">;"
        }
    .end annotation
.end field

.field mVerifyPurchaseResponseObj:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/game/sdk/comon/presenter/InteractorCallback;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$2;-><init>(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->callbackVerifyPurchase:Lcom/game/sdk/comon/api/MyCallback;

    .line 120
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$3;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$3;-><init>(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->callbackRetryPayment:Lcom/game/sdk/comon/api/MyCallback;

    .line 138
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$4;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$4;-><init>(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)V

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->callbackGetListItem:Lcom/game/sdk/comon/api/MyCallback;

    .line 38
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mCallback:Lcom/game/sdk/comon/presenter/InteractorCallback;

    return-object p0
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mVerifyPurchaseResponseObj:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mRetryPaymentResponseObj:Lretrofit2/Call;

    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p1}, Lretrofit2/Call;->cancel()V

    :cond_1
    return-void
.end method

.method public getItemList()V
    .locals 5

    .line 61
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getPaymentRequest()Lcom/game/sdk/comon/api/request/PaymentRequest;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    .line 66
    invoke-interface {v0, v4, v2, v1, v3}, Lcom/game/sdk/comon/api/request/PaymentRequest;->getListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->itemPayResponseObjCall:Lretrofit2/Call;

    .line 67
    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->callbackGetListItem:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getPaymentRequest()Lcom/game/sdk/comon/api/request/PaymentRequest;

    move-result-object v0

    .line 73
    invoke-interface {v0, p1}, Lcom/game/sdk/comon/api/request/PaymentRequest;->initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->initialPurchaseResponseObjCall:Lretrofit2/Call;

    .line 74
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$1;-><init>(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    .line 53
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getPaymentRequest()Lcom/game/sdk/comon/api/request/PaymentRequest;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 55
    invoke-interface/range {v1 .. v9}, Lcom/game/sdk/comon/api/request/PaymentRequest;->retryPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mRetryPaymentResponseObj:Lretrofit2/Call;

    .line 56
    iget-object v2, v0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->callbackRetryPayment:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V
    .locals 2

    .line 44
    invoke-static {}, Lcom/game/sdk/comon/api/ApiUtils;->getPaymentRequest()Lcom/game/sdk/comon/api/request/PaymentRequest;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/game/sdk/comon/api/request/PaymentRequest;->verifyPurchase(Ljava/lang/String;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mVerifyPurchaseResponseObj:Lretrofit2/Call;

    .line 47
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RECEIPT"

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->mVerifyPurchaseResponseObj:Lretrofit2/Call;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->callbackVerifyPurchase:Lcom/game/sdk/comon/api/MyCallback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
