.class Lcom/mobgame/MobGameSDK$2$1;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/IMesssageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK$2;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/MobGameSDK$2;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK$2;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$2$1;->this$1:Lcom/mobgame/MobGameSDK$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$2$1;->this$1:Lcom/mobgame/MobGameSDK$2;

    iget-object v0, v0, Lcom/mobgame/MobGameSDK$2;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-virtual {v0, p1}, Lcom/mobgame/MobGameSDK;->showTextScroll(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
