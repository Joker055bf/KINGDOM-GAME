.class public interface abstract Lru/ok/tracer/base/limits/TracerFeatureLimits;
.super Ljava/lang/Object;
.source "TracerFeatureLimits.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008f\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eJ\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J?\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lru/ok/tracer/base/limits/TracerFeatureLimits;",
        "",
        "isLimited",
        "",
        "featureName",
        "",
        "tag",
        "setShutdownMs",
        "",
        "globalShutdownMs",
        "",
        "featureShutdownMs",
        "tagShutdownMs",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V",
        "Companion",
        "tracer-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;->$$INSTANCE:Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;

    sput-object v0, Lru/ok/tracer/base/limits/TracerFeatureLimits;->Companion:Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;

    return-void
.end method

.method public static unlimited()Lru/ok/tracer/base/limits/TracerFeatureLimits;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lru/ok/tracer/base/limits/TracerFeatureLimits;->Companion:Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;

    invoke-virtual {v0}, Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;->unlimited()Lru/ok/tracer/base/limits/TracerFeatureLimits;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isLimited(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setShutdownMs(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
.end method
