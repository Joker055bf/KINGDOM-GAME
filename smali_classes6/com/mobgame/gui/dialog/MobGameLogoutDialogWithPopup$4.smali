.class Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;
.super Ljava/lang/Object;
.source "MobGameLogoutDialogWithPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    invoke-interface {v0, p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;->onLogoutClick(Landroid/view/View;)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$4;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->dismiss()V

    return-void
.end method
