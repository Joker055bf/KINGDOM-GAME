.class Lcom/game/sdk/ui/login/AccountFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "AccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/login/AccountFragment;
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

    .line 565
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$9;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 568
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAuthenConfigObj()Lcom/game/sdk/comon/object/AuthenConfigObj;

    move-result-object p1

    if-nez p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$9;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {p1}, Lcom/game/sdk/ui/login/ILoginPresenter;->getAuthenConfig()V

    :cond_0
    return-void
.end method
