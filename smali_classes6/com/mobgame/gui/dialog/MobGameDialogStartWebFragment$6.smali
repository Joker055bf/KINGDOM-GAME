.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$6;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->handlerBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p3, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 487
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 488
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getMobPopup()Lcom/game/sdk/comon/object/SdkConfigObj$Pop;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "btnc=1"

    .line 490
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 491
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlerBackButton: url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$000(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
