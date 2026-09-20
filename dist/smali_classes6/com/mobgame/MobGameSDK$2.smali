.class Lcom/mobgame/MobGameSDK$2;
.super Landroid/os/CountDownTimer;
.source "MobGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->checkTimeText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;JJ)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$2;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 242
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->isMessageInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/mobgame/MobGameSDK$2$1;

    invoke-direct {v2, p0}, Lcom/mobgame/MobGameSDK$2$1;-><init>(Lcom/mobgame/MobGameSDK$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->getMessInGame(Landroid/app/Activity;Lcom/game/sdk/comon/listener/IMesssageListener;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$2;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$300(Lcom/mobgame/MobGameSDK;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
