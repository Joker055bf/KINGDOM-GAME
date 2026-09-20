.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showDialog()V
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

    .line 745
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 748
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 749
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    .line 765
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 760
    :cond_1
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    .line 761
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$700(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    goto :goto_0

    .line 754
    :cond_3
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->goForward()V

    goto :goto_0

    .line 751
    :cond_4
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->goBack()V

    .line 769
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 771
    :cond_5
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->showDialog()V

    :goto_1
    return-void
.end method
