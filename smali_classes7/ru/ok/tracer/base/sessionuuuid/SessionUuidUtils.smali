.class public final Lru/ok/tracer/base/sessionuuuid/SessionUuidUtils;
.super Ljava/lang/Object;
.source "SessionUuidUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "createSessionUuid",
        "",
        "getCurrentSessionUuid",
        "tracer-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createSessionUuid()Ljava/lang/String;
    .locals 2

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getCurrentSessionUuid()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;->INSTANCE:Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;

    invoke-virtual {v0}, Lru/ok/tracer/base/sessionuuuid/SessionUuidHolder;->getSessionUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
