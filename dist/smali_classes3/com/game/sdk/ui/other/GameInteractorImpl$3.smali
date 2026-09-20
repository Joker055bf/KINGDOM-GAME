.class Lcom/game/sdk/ui/other/GameInteractorImpl$3;
.super Lcom/game/sdk/comon/api/MyCallback;
.source "GameInteractorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/other/GameInteractorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/comon/api/MyCallback<",
        "Lcom/game/sdk/comon/object/response/MessInGameResponseObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/other/GameInteractorImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/other/GameInteractorImpl;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl$3;->this$0:Lcom/game/sdk/ui/other/GameInteractorImpl;

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
            "Lcom/game/sdk/comon/object/response/MessInGameResponseObj;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 133
    check-cast p2, Lcom/game/sdk/comon/object/BaseObj;

    .line 134
    new-instance p1, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;

    invoke-direct {p1}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;-><init>()V

    .line 135
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;->setMessage(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;->setStatus(I)V

    .line 137
    iget-object p2, p0, Lcom/game/sdk/ui/other/GameInteractorImpl$3;->this$0:Lcom/game/sdk/ui/other/GameInteractorImpl;

    invoke-static {p2}, Lcom/game/sdk/ui/other/GameInteractorImpl;->access$000(Lcom/game/sdk/ui/other/GameInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;

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
            "Lcom/game/sdk/comon/object/response/MessInGameResponseObj;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/game/sdk/comon/object/response/MessInGameResponseObj;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/game/sdk/ui/other/GameInteractorImpl$3;->this$0:Lcom/game/sdk/ui/other/GameInteractorImpl;

    invoke-static {p1}, Lcom/game/sdk/ui/other/GameInteractorImpl;->access$000(Lcom/game/sdk/ui/other/GameInteractorImpl;)Lcom/game/sdk/comon/presenter/InteractorCallback;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/presenter/InteractorCallback;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
