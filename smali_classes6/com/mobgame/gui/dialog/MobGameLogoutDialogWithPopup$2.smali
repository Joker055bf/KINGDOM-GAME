.class Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$2;
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

    .line 72
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$2;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$2;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$2;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->eventListener:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;

    invoke-interface {v0, p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$EventListener;->onFanpageClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
