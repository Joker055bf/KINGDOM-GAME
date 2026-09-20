.class public Lcom/game/sdk/ui/other/ForceLogoutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ForceLogoutActivity.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget p1, Lcom/mobgame/R$layout;->activity_force_logout:I

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/other/ForceLogoutActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/game/sdk/ui/other/ForceLogoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "key_force_logout"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    new-instance p1, Lcom/game/sdk/ui/other/ForceLogoutActivity$1;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/other/ForceLogoutActivity$1;-><init>(Lcom/game/sdk/ui/other/ForceLogoutActivity;)V

    iput-object p1, p0, Lcom/game/sdk/ui/other/ForceLogoutActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cancel_force_logout"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/ui/other/ForceLogoutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    new-instance p1, Lcom/game/sdk/ui/other/ForceLogoutActivity$2;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/other/ForceLogoutActivity$2;-><init>(Lcom/game/sdk/ui/other/ForceLogoutActivity;)V

    invoke-static {p0, p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showForceLogoutDialog(Landroid/app/Activity;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;)V

    return-void
.end method
