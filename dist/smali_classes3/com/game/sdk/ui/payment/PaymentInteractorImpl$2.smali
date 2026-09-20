.class Lcom/game/sdk/ui/payment/PaymentInteractorImpl$2;
.super Lcom/game/sdk/comon/api/MyCallback;
.source "PaymentInteractorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/payment/PaymentInteractorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/comon/api/MyCallback<",
        "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentInteractorImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$2;->this$0:Lcom/game/sdk/ui/payment/PaymentInteractorImpl;

    invoke-direct {p0}, Lcom/game/sdk/comon/api/MyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lretrofit2/Call;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 112
    check-cast p2, Lcom/game/sdk/comon/object/BaseObj;

    .line 113
    new-instance p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    invoke-direct {p1}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;-><init>()V

    .line 114
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->setMessage(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;->setStatus(I)V

    .line 116
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$2;->this$0:Lcom/game/sdk/ui/payment/PaymentInteractorImpl;

    invoke-static {p2}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->access$000(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/game/sdk/comon/presenter/InteractorCallback;->error(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentInteractorImpl$2;->this$0:Lcom/game/sdk/ui/payment/PaymentInteractorImpl;

    invoke-static {p1}, Lcom/game/sdk/ui/payment/PaymentInteractorImpl;->access$000(Lcom/game/sdk/ui/payment/PaymentInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/presenter/InteractorCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
