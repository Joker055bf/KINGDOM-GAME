.class Lcom/mobgame/gui/DialogInGameFragment$4$1;
.super Ljava/lang/Object;
.source "DialogInGameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/DialogInGameFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/DialogInGameFragment$4;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/DialogInGameFragment$4;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/mobgame/gui/DialogInGameFragment$4$1;->this$1:Lcom/mobgame/gui/DialogInGameFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/mobgame/gui/DialogInGameFragment$4$1;->this$1:Lcom/mobgame/gui/DialogInGameFragment$4;

    iget-object v0, v0, Lcom/mobgame/gui/DialogInGameFragment$4;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-static {v0}, Lcom/mobgame/gui/DialogInGameFragment;->access$000(Lcom/mobgame/gui/DialogInGameFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
