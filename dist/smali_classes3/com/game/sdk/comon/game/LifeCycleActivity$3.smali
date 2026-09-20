.class Lcom/game/sdk/comon/game/LifeCycleActivity$3;
.super Ljava/lang/Object;
.source "LifeCycleActivity.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/LifeCycleActivity;->error(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/LifeCycleActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/LifeCycleActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity$3;->this$0:Lcom/game/sdk/comon/game/LifeCycleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 2

    .line 161
    new-instance v0, Lcom/game/sdk/ui/login/LoginPresenterImpl;

    iget-object v1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity$3;->this$0:Lcom/game/sdk/comon/game/LifeCycleActivity;

    invoke-direct {v0, v1}, Lcom/game/sdk/ui/login/LoginPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 162
    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    return-void
.end method
