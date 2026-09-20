.class Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;
.super Lcom/game/sdk/comon/presenter/InteractorCallback;
.source "PaymentPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/comon/presenter/InteractorCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

.field final synthetic val$mBaseView:Lcom/game/sdk/comon/presenter/BaseView;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/payment/PaymentPresenterImpl;Lcom/game/sdk/comon/presenter/BaseView;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;->this$0:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;->val$mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    invoke-direct {p0}, Lcom/game/sdk/comon/presenter/InteractorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;->val$mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 28
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;->val$mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;->val$mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 20
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl$1;->val$mBaseView:Lcom/game/sdk/comon/presenter/BaseView;

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
