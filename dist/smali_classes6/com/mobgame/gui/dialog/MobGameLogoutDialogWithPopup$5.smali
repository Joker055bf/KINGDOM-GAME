.class Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;
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

    .line 98
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    iget-object p1, p1, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    iget-object p1, p1, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    invoke-interface {p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;->onDismiss()V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$5;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->dismiss()V

    return-void
.end method
