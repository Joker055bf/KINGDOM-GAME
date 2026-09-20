.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 893
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 894
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I

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

    .line 909
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    .line 910
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1200(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 905
    :cond_1
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    .line 906
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1200(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 902
    :cond_2
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    goto :goto_0

    .line 899
    :cond_3
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->goForward()V

    goto :goto_0

    .line 896
    :cond_4
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobgame/gui/MobGameWebViewDetail;->goBack()V

    .line 914
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 916
    :cond_5
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$12;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showDialog()V

    :goto_1
    return-void
.end method
