.class Lcom/mobgame/gui/DialogInGameFragment$4;
.super Ljava/lang/Object;
.source "DialogInGameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/DialogInGameFragment;->hideProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/DialogInGameFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/DialogInGameFragment;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/mobgame/gui/DialogInGameFragment$4;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/mobgame/gui/DialogInGameFragment$4;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-static {v0}, Lcom/mobgame/gui/DialogInGameFragment;->access$500(Lcom/mobgame/gui/DialogInGameFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/DialogInGameFragment$4$1;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/DialogInGameFragment$4$1;-><init>(Lcom/mobgame/gui/DialogInGameFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
