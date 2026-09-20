.class Lcom/game/sdk/comon/game/GameSdk$2;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk;->loginNative(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/GameSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/game/sdk/comon/listener/ILoginListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$2;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iput-object p2, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$2;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showLoginForm(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V

    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/sdk/comon/game/GameSdk$2$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/GameSdk$2$2;-><init>(Lcom/game/sdk/comon/game/GameSdk$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/game/sdk/comon/game/GameSdk$2$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/comon/game/GameSdk$2$1;-><init>(Lcom/game/sdk/comon/game/GameSdk$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 145
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;->getData()Lcom/game/sdk/comon/object/AuthenConfigObj;

    move-result-object p1

    .line 147
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game/sdk/comon/config/AuthenConfigs;->setAuthenConfigObj(Lcom/game/sdk/comon/object/AuthenConfigObj;)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$2;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/game/sdk/comon/game/GameSdk$2$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/comon/game/GameSdk$2$3;-><init>(Lcom/game/sdk/comon/game/GameSdk$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showLoginForm(Landroid/app/Activity;Lcom/game/sdk/comon/listener/ILoginListener;)V

    return-void
.end method
