.class Lcom/game/sdk/ui/other/GamePresenterImpl$1;
.super Lcom/game/sdk/comon/presenter/InteractorCallback;
.source "GamePresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/other/GamePresenterImpl;
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
.field final synthetic this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/other/GamePresenterImpl;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-direct {p0}, Lcom/game/sdk/comon/presenter/InteractorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/other/GamePresenterImpl;->access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/other/GamePresenterImpl;->access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 34
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/other/GamePresenterImpl;->access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/other/GamePresenterImpl;->access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/other/GamePresenterImpl;->access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 26
    iget-object v0, p0, Lcom/game/sdk/ui/other/GamePresenterImpl$1;->this$0:Lcom/game/sdk/ui/other/GamePresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/other/GamePresenterImpl;->access$000(Lcom/game/sdk/ui/other/GamePresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
