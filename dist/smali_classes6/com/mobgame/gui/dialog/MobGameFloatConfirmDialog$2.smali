.class Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;
.super Ljava/lang/Object;
.source "MobGameFloatConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;->this$0:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;->this$0:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;->this$0:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;

    invoke-interface {v0, p1}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$EventListener;->onConfirmClick(Landroid/view/View;)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog$2;->this$0:Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameFloatConfirmDialog;->dismiss()V

    return-void
.end method
