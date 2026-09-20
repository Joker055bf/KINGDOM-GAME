.class public Lcom/tgs/aics/utils/SystemInfoUtil;
.super Ljava/lang/Object;
.source "SystemInfoUtil.java"


# static fields
.field private static sGooglePlayVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/SystemInfoUtil;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGooglePlayStoreVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcom/tgs/aics/utils/SystemInfoUtil;->sGooglePlayVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "com.android.vending"

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 72
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/tgs/aics/utils/SystemInfoUtil;->sGooglePlayVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    .line 76
    sput-object p0, Lcom/tgs/aics/utils/SystemInfoUtil;->sGooglePlayVersionName:Ljava/lang/String;

    .line 78
    :goto_0
    sget-object p0, Lcom/tgs/aics/utils/SystemInfoUtil;->sGooglePlayVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public static getSystemLanguage()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/utils/SystemInfoUtil;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tgs/aics/utils/SystemInfoUtil;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    const-string v2, "_"

    .line 89
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
