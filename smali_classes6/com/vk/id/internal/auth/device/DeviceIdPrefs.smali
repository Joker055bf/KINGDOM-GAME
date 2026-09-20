.class public final Lcom/vk/id/internal/auth/device/DeviceIdPrefs;
.super Ljava/lang/Object;
.source "DeviceIdPrefs.kt"

# interfaces
.implements Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/device/DeviceIdPrefs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/device/DeviceIdPrefs;",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getDeviceId",
        "",
        "setDeviceId",
        "",
        "deviceId",
        "getSystemDeviceId",
        "setSystemDeviceId",
        "systemDeviceId",
        "getDeviceToken",
        "memberId",
        "",
        "setDeviceToken",
        "deviceToken",
        "clearDeviceToken",
        "getPrefs",
        "Landroid/content/SharedPreferences;",
        "deviceTokenPreferenceKey",
        "Companion",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final Companion:Lcom/vk/id/internal/auth/device/DeviceIdPrefs$Companion;

.field private static final DEVICE_ID:Ljava/lang/String; = "__vk_device_id__"

.field private static final DEVICE_TOKEN_PREFIX:Ljava/lang/String; = "__vk__device_token__"

.field private static final SYSTEM_DEVICE_ID:Ljava/lang/String; = "__vk_system_device_id__"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->Companion:Lcom/vk/id/internal/auth/device/DeviceIdPrefs$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    return-void
.end method

.method private final deviceTokenPreferenceKey(J)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__vk__device_token__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 63
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getDefaultSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public clearDeviceToken(J)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->deviceTokenPreferenceKey(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "__vk_device_id__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public getDeviceToken(J)Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->deviceTokenPreferenceKey(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getSystemDeviceId()Ljava/lang/String;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "__vk_system_device_id__"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "__vk_device_id__"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDeviceToken(JLjava/lang/String;)V
    .locals 1

    const-string v0, "deviceToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->deviceTokenPreferenceKey(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSystemDeviceId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "systemDeviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vk/id/internal/auth/device/DeviceIdPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "__vk_system_device_id__"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
