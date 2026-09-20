.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2$1;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->onReceiveValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfirmClick(Landroid/view/View;)V
    .locals 0

    .line 284
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2$1;->this$1:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;

    iget-object p1, p1, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dismiss()V

    return-void
.end method
