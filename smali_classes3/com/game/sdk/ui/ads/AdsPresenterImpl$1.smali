.class Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;
.super Lcom/game/sdk/comon/presenter/InteractorCallback;
.source "AdsPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ads/AdsPresenterImpl;
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
.field final synthetic this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-direct {p0}, Lcom/game/sdk/comon/presenter/InteractorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 32
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/comon/presenter/BaseView;->hideProgress()V

    .line 24
    iget-object v0, p0, Lcom/game/sdk/ui/ads/AdsPresenterImpl$1;->this$0:Lcom/game/sdk/ui/ads/AdsPresenterImpl;

    invoke-static {v0}, Lcom/game/sdk/ui/ads/AdsPresenterImpl;->access$000(Lcom/game/sdk/ui/ads/AdsPresenterImpl;)Lcom/game/sdk/comon/presenter/BaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/presenter/BaseView;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
