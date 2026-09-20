.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$13;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 920
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$13;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 923
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$13;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$000(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 924
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$13;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dismiss()V

    :cond_0
    return-void
.end method
