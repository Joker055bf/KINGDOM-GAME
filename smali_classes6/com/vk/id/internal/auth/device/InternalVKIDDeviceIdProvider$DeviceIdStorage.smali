.class public interface abstract Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;
.super Ljava/lang/Object;
.source "InternalVKIDDeviceIdProvider.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceIdStorage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;",
        "",
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


# virtual methods
.method public abstract clearDeviceToken(J)V
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceToken(J)Ljava/lang/String;
.end method

.method public abstract getSystemDeviceId()Ljava/lang/String;
.end method

.method public abstract setDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setDeviceToken(JLjava/lang/String;)V
.end method

.method public abstract setSystemDeviceId(Ljava/lang/String;)V
.end method
