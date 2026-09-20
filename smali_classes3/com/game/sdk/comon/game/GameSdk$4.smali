.class Lcom/game/sdk/comon/game/GameSdk$4;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk;->getMessInGame(Landroid/app/Activity;Lcom/game/sdk/comon/listener/IMesssageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/GameSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$messsageListener:Lcom/game/sdk/comon/listener/IMesssageListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/IMesssageListener;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$4;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iput-object p2, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$messsageListener:Lcom/game/sdk/comon/listener/IMesssageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 281
    check-cast p1, Lcom/game/sdk/comon/object/BaseObj;

    .line 282
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/BaseObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 271
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/MessInGameResponseObj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$messsageListener:Lcom/game/sdk/comon/listener/IMesssageListener;

    if-eqz v0, :cond_0

    .line 272
    check-cast p1, Lcom/game/sdk/comon/object/response/MessInGameResponseObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/MessInGameResponseObj;->getData()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$4;->val$messsageListener:Lcom/game/sdk/comon/listener/IMesssageListener;

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/listener/IMesssageListener;->onSuccess(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
