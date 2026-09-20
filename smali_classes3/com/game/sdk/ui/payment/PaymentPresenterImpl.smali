.class public Lcom/game/sdk/ui/payment/PaymentPresenterImpl;
.super Ljava/lang/Object;
.source "PaymentPresenterImpl.java"

# interfaces
.implements Lcom/game/sdk/ui/payment/IPaymentPresenter;


# instance fields
.field private final mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

.field private final mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/presenter/BaseView;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    .line 15
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;-><init>(Lcom/game/sdk/ui/payment/PaymentPresenterImpl;Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 32
    new-instance p1, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;

    invoke-direct {p1, v0}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;-><init>(Lcom/game/sdk/comon/presenter/InteractorCallback;)V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    return-void
.end method


# virtual methods
.method public varargs cancelRequest([Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->cancelRequest([Ljava/lang/String;)V

    return-void
.end method

.method public getItemList()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    invoke-interface {v0}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->getItemList()V

    .line 60
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 61
    invoke-interface {v0, v1}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    invoke-interface {v0, p1}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)V

    .line 69
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 70
    invoke-interface {p1, v0}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 52
    iget-object v1, v0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 53
    iget-object v3, v0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->cancelRequest([Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mInteractor:Lcom/game/sdk/ui/payment/IPaymentInteractor;

    invoke-interface {v0, p1}, Lcom/game/sdk/ui/payment/IPaymentInteractor;->verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V

    .line 45
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 46
    invoke-interface {p1, v0}, Lcom/game/sdk/comon/presenter/BaseView;->showProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
