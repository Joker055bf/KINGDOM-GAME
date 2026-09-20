.class Lcom/mobgame/MobGameSDK$13;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->showDialogRequestOverlayPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$13;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1092
    iget-object p2, p0, Lcom/mobgame/MobGameSDK$13;->this$0:Lcom/mobgame/MobGameSDK;

    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/mobgame/MobGameSDK;->access$2102(Lcom/mobgame/MobGameSDK;Z)Z

    .line 1093
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    .line 1094
    sget-object p2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "appops"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    .line 1095
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$13;->this$0:Lcom/mobgame/MobGameSDK;

    new-instance v1, Lcom/mobgame/MobGameSDK$13$1;

    invoke-direct {v1, p0}, Lcom/mobgame/MobGameSDK$13$1;-><init>(Lcom/mobgame/MobGameSDK$13;)V

    invoke-static {v0, v1}, Lcom/mobgame/MobGameSDK;->access$2202(Lcom/mobgame/MobGameSDK;Landroid/app/AppOpsManager$OnOpChangedListener;)Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 1105
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$13;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$2200(Lcom/mobgame/MobGameSDK;)Landroid/app/AppOpsManager$OnOpChangedListener;

    move-result-object v0

    const-string v1, "android:system_alert_window"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1109
    :cond_0
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 1110
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1113
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const/16 v0, 0x3e7

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
