.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 217
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$002(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I

    .line 221
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showDialog()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->goBack()V

    :goto_0
    return-void
.end method
