.class Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;
.super Ljava/lang/Object;
.source "MobGameConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialog;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialog;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialog;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;

    invoke-interface {v0, p1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;->onCancelClick(Landroid/view/View;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialog$1;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialog;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;->dismiss()V

    return-void
.end method
