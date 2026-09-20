.class public Lcom/game/sdk/comon/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static final BLOCKED_OR_NEVER_ASKED:I = 0x2

.field public static final DENIED:I = 0x1

.field public static final GRANTED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 2

    .line 26
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {v0}, Lcom/game/sdk/comon/utils/PermissionUtils;->isSystemAlertPermissionGranted(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemAlertPermissionGranted(Landroid/content/Context;)Z
    .locals 0

    .line 60
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string/jumbo v1, "tag_fragment_permission"

    const-string v2, "mobSelectImage2:"

    if-ne p1, v0, :cond_0

    const-string p1, "PermissionUtils"

    .line 42
    invoke-static {p1, v2}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 44
    invoke-static {}, Lcom/mobgame/gui/DrawOverAppsFragment;->newInstance()Lcom/mobgame/gui/DrawOverAppsFragment;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    const-string v0, "123543543"

    .line 49
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 51
    invoke-static {v0}, Lcom/game/sdk/ui/comon/PermissionFragment;->newInstance([Ljava/lang/String;)Lcom/game/sdk/ui/comon/PermissionFragment;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
