.class public final Lru/ok/tracer/base/commands/CommandsHandler$Builder;
.super Ljava/lang/Object;
.source "CommandsHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/base/commands/CommandsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lru/ok/tracer/base/commands/CommandsHandler$Builder;",
        "",
        "()V",
        "featureName",
        "",
        "getFeatureName$tracer_base_release",
        "()Ljava/lang/String;",
        "setFeatureName$tracer_base_release",
        "(Ljava/lang/String;)V",
        "limits",
        "Lru/ok/tracer/base/limits/TracerFeatureLimits;",
        "getLimits$tracer_base_release",
        "()Lru/ok/tracer/base/limits/TracerFeatureLimits;",
        "setLimits$tracer_base_release",
        "(Lru/ok/tracer/base/limits/TracerFeatureLimits;)V",
        "tag",
        "getTag$tracer_base_release",
        "setTag$tracer_base_release",
        "build",
        "Lru/ok/tracer/base/commands/CommandsHandler;",
        "setFeatureName",
        "setLimitsHandler",
        "setTag",
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


# instance fields
.field private featureName:Ljava/lang/String;

.field private limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lru/ok/tracer/base/commands/CommandsHandler;
    .locals 2

    .line 63
    new-instance v0, Lru/ok/tracer/base/commands/CommandsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/ok/tracer/base/commands/CommandsHandler;-><init>(Lru/ok/tracer/base/commands/CommandsHandler$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getFeatureName$tracer_base_release()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->featureName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimits$tracer_base_release()Lru/ok/tracer/base/limits/TracerFeatureLimits;
    .locals 1

    .line 49
    iget-object v0, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

    return-object v0
.end method

.method public final getTag$tracer_base_release()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final setFeatureName(Ljava/lang/String;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;
    .locals 1

    const-string v0, "featureName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    .line 52
    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->featureName:Ljava/lang/String;

    return-object p0
.end method

.method public final setFeatureName$tracer_base_release(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->featureName:Ljava/lang/String;

    return-void
.end method

.method public final setLimits$tracer_base_release(Lru/ok/tracer/base/limits/TracerFeatureLimits;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

    return-void
.end method

.method public final setLimitsHandler(Lru/ok/tracer/base/limits/TracerFeatureLimits;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;
    .locals 1

    const-string v0, "limits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    move-object v0, p0

    check-cast v0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    .line 60
    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

    return-object p0
.end method

.method public final setTag(Ljava/lang/String;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    check-cast v0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    .line 56
    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final setTag$tracer_base_release(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->tag:Ljava/lang/String;

    return-void
.end method
