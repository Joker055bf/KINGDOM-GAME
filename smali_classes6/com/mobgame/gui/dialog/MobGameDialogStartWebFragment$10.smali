.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$10;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 775
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$10;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 778
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$10;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 779
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$10;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dismiss()V

    :cond_0
    return-void
.end method
