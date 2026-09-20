.class Lcom/game/sdk/comon/game/GameSdk$5;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk;->saveCharactor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/comon/listener/ISaveCharactorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/GameSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$areaId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/game/sdk/comon/listener/ISaveCharactorListener;

.field final synthetic val$roleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk;Landroid/app/Activity;Lcom/game/sdk/comon/listener/ISaveCharactorListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$5;->this$0:Lcom/game/sdk/comon/game/GameSdk;

    iput-object p2, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$listener:Lcom/game/sdk/comon/listener/ISaveCharactorListener;

    iput-object p4, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$roleId:Ljava/lang/String;

    iput-object p5, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$areaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 325
    check-cast p1, Lcom/game/sdk/comon/object/BaseObj;

    .line 326
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/BaseObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/ToastUtils;->showErrToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 312
    instance-of p1, p1, Lcom/game/sdk/comon/object/BaseObj;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$listener:Lcom/game/sdk/comon/listener/ISaveCharactorListener;

    if-eqz p1, :cond_1

    .line 313
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getMobPopup()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 315
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->getQueuePopups()Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "pop_link"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->showPopup()V

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$listener:Lcom/game/sdk/comon/listener/ISaveCharactorListener;

    invoke-interface {p1}, Lcom/game/sdk/comon/listener/ISaveCharactorListener;->onSuccess()V

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "roleID: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$roleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \t areaID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$5;->val$areaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaveCharactor_Success "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
