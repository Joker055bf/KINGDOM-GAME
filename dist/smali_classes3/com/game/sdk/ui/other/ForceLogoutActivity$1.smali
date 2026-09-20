.class Lcom/game/sdk/ui/other/ForceLogoutActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ForceLogoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/other/ForceLogoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/other/ForceLogoutActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/other/ForceLogoutActivity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/game/sdk/ui/other/ForceLogoutActivity$1;->this$0:Lcom/game/sdk/ui/other/ForceLogoutActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cancel_force_logout"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    invoke-static {}, Lcom/game/sdk/comon/utils/DialogUtils;->closeDialog()V

    .line 33
    iget-object p1, p0, Lcom/game/sdk/ui/other/ForceLogoutActivity$1;->this$0:Lcom/game/sdk/ui/other/ForceLogoutActivity;

    invoke-virtual {p1}, Lcom/game/sdk/ui/other/ForceLogoutActivity;->finish()V

    :cond_0
    return-void
.end method
