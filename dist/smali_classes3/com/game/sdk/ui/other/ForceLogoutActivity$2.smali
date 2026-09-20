.class Lcom/game/sdk/ui/other/ForceLogoutActivity$2;
.super Ljava/lang/Object;
.source "ForceLogoutActivity.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;


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

    .line 40
    iput-object p1, p0, Lcom/game/sdk/ui/other/ForceLogoutActivity$2;->this$0:Lcom/game/sdk/ui/other/ForceLogoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->getInstance()Lcom/game/sdk/comon/forcelogout/ForceLogout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->exitGame()V

    return-void
.end method
