.class Lcom/game/sdk/ui/login/LoginPresenterImpl$1;
.super Lcom/game/sdk/comon/presenter/InteractorCallback;
.source "LoginPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/login/LoginPresenterImpl;
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
.field final synthetic this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/LoginPresenterImpl;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-direct {p0}, Lcom/game/sdk/comon/presenter/InteractorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;->access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;->access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;->access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;->access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;->access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/ui/login/LoginPresenterImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;->access$000(Lcom/game/sdk/ui/login/LoginPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->success(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
