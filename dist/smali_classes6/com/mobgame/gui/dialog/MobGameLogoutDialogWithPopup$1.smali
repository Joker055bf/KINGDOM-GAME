.class Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;
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

    .line 63
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->access$000(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->access$000(Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup$1;->this$0:Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/dialog/MobGameLogoutDialogWithPopup;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
