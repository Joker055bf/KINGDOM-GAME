.class public final Lru/ok/tracer/lite/limits/TracerLiteLimits;
.super Ljava/lang/Object;
.source "TracerLiteLimits.kt"

# interfaces
.implements Lru/ok/tracer/base/limits/TracerFeatureLimits;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0016J?\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "Lru/ok/tracer/base/limits/TracerFeatureLimits;",
        "context",
        "Landroid/content/Context;",
        "libraryPackageName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "getPrefs",
        "()Landroid/content/SharedPreferences;",
        "prefsRead",
        "",
        "isLimited",
        "featureName",
        "tag",
        "setShutdownMs",
        "",
        "globalShutdownMs",
        "",
        "featureShutdownMs",
        "tagShutdownMs",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V",
        "Companion",
        "tracer-lite-commons_release"
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
.field public static final Companion:Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final libraryPackageName:Ljava/lang/String;

.field private prefsRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->Companion:Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->context:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->libraryPackageName:Ljava/lang/String;

    return-void
.end method

.method private final getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->prefsRead:Z

    .line 17
    iget-object v0, p0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tracer-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->libraryPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "context.getSharedPrefere\u2026e\", Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isLimited(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 48
    iget-boolean p2, p0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->prefsRead:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 53
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 55
    invoke-direct {p0}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v3, "system.shutdown.until.ts"

    const-wide/high16 v4, -0x8000000000000000L

    invoke-interface {p2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p2, v1, v6

    const/4 v3, 0x1

    if-gez p2, :cond_1

    return v3

    :cond_1
    if-eqz p1, :cond_2

    .line 60
    invoke-direct {p0}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "system."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, ".shutdown.until.ts"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-gez p1, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public setShutdownMs(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .line 28
    invoke-direct {p0}, Lru/ok/tracer/lite/limits/TracerLiteLimits;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const/4 p5, 0x1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-string p1, "system.shutdown.until.ts"

    .line 32
    invoke-interface {p4, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move p1, p5

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 36
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "system."

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".shutdown.until.ts"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    move p5, p1

    :goto_1
    if-eqz p5, :cond_2

    .line 43
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method
