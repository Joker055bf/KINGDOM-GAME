.class public Lcom/unity/AndroidUtil/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAndroidVersion()I
    .locals 1

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static GetAndroidVersionCodeP()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public static GetId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GetPMPermissionGranted()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
