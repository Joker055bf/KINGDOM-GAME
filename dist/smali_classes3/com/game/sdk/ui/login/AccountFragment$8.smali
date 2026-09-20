.class Lcom/game/sdk/ui/login/AccountFragment$8;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/login/AccountFragment;->error(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/login/AccountFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/AccountFragment;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$8;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$8;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    return-void
.end method
