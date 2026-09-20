.class Lcom/game/sdk/ui/login/LoginInteractorImpl$1;
.super Lcom/game/sdk/comon/api/MyCallback;
.source "LoginInteractorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/login/LoginInteractorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/comon/api/MyCallback<",
        "Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/login/LoginInteractorImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/LoginInteractorImpl;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginInteractorImpl;

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
            "Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 178
    check-cast p2, Lcom/game/sdk/comon/object/BaseObj;

    .line 179
    new-instance p1, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;

    invoke-direct {p1}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;-><init>()V

    .line 180
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;->setMessage(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;->setStatus(I)V

    .line 182
    iget-object p2, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginInteractorImpl;

    invoke-static {p2}, Lcom/game/sdk/ui/login/LoginInteractorImpl;->access$000(Lcom/game/sdk/ui/login/LoginInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;

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
            "Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/game/sdk/ui/login/LoginInteractorImpl$1;->this$0:Lcom/game/sdk/ui/login/LoginInteractorImpl;

    invoke-static {p1}, Lcom/game/sdk/ui/login/LoginInteractorImpl;->access$000(Lcom/game/sdk/ui/login/LoginInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/presenter/InteractorCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
