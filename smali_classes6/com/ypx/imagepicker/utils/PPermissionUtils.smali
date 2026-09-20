.class public Lcom/ypx/imagepicker/utils/PPermissionUtils;
.super Ljava/lang/Object;
.source "PPermissionUtils.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/utils/PPermissionUtils;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/ypx/imagepicker/utils/PPermissionUtils;
    .locals 1

    .line 59
    new-instance v0, Lcom/ypx/imagepicker/utils/PPermissionUtils;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getAppDetailSettingIntent()Landroid/content/Intent;
    .locals 4

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private gotoHuaweiPermission()V
    .locals 4

    .line 146
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.systemmanager"

    const-string v3, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->getAppDetailSettingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private gotoMeizuPermission()V
    .locals 3

    .line 131
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    const-string v2, "BuildConfig.APPLICATION_ID"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->getAppDetailSettingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private gotoMiuiPermission()V
    .locals 5

    const-string v0, "extra_pkgname"

    const-string v1, "com.miui.securitycenter"

    const-string v2, "miui.intent.action.APP_PERM_EDITOR"

    .line 110
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    .line 111
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v4, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 117
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->getAppDetailSettingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static hasCameraPermissions(Landroid/app/Activity;)Z
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 32
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x597

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static hasStoragePermissions(Landroid/app/Activity;)Z
    .locals 3

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v2
.end method


# virtual methods
.method public gotoPermissionSet()V
    .locals 3

    .line 93
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redmi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xiaomi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meizu"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->gotoMeizuPermission()V

    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "honor"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->getAppDetailSettingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 99
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->gotoHuaweiPermission()V

    goto :goto_2

    .line 95
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->gotoMiuiPermission()V

    :goto_2
    return-void
.end method

.method public showSetPermissionDialog(Ljava/lang/String;)V
    .locals 3

    .line 67
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    sget v2, Lcom/ypx/imagepicker/R$string;->picker_str_permission_refuse_setting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;-><init>(Lcom/ypx/imagepicker/utils/PPermissionUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    iget-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils;->context:Landroid/content/Context;

    sget v1, Lcom/ypx/imagepicker/R$string;->picker_str_permission_go_setting:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ypx/imagepicker/utils/PPermissionUtils$2;

    invoke-direct {v1, p0}, Lcom/ypx/imagepicker/utils/PPermissionUtils$2;-><init>(Lcom/ypx/imagepicker/utils/PPermissionUtils;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
