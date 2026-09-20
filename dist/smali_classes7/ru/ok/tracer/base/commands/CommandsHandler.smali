.class public final Lru/ok/tracer/base/commands/CommandsHandler;
.super Ljava/lang/Object;
.source "CommandsHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/base/commands/CommandsHandler$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandsHandler.kt\nru/ok/tracer/base/commands/CommandsHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/ok/tracer/base/commands/CommandsHandler;",
        "",
        "builder",
        "Lru/ok/tracer/base/commands/CommandsHandler$Builder;",
        "(Lru/ok/tracer/base/commands/CommandsHandler$Builder;)V",
        "featureName",
        "",
        "limits",
        "Lru/ok/tracer/base/limits/TracerFeatureLimits;",
        "tag",
        "handleResponse",
        "",
        "responseContentType",
        "responseContent",
        "responseObject",
        "Lorg/json/JSONObject;",
        "Builder",
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
.field private final featureName:Ljava/lang/String;

.field private final limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lru/ok/tracer/base/commands/CommandsHandler$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->getFeatureName$tracer_base_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/base/commands/CommandsHandler;->featureName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->getTag$tracer_base_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/base/commands/CommandsHandler;->tag:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->getLimits$tracer_base_release()Lru/ok/tracer/base/limits/TracerFeatureLimits;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/base/commands/CommandsHandler;->limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

    return-void
.end method

.method public synthetic constructor <init>(Lru/ok/tracer/base/commands/CommandsHandler$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/ok/tracer/base/commands/CommandsHandler;-><init>(Lru/ok/tracer/base/commands/CommandsHandler$Builder;)V

    return-void
.end method


# virtual methods
.method public final handleResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 20
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-virtual {p0, v0}, Lru/ok/tracer/base/commands/CommandsHandler;->handleResponse(Lorg/json/JSONObject;)V

    return-void

    .line 22
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot parse content with Content-Type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tracer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleResponse(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "responseObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commands"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/base/commands/CommandsHandler;->limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

    if-eqz v0, :cond_5

    const-string v0, "globalShutdownMs"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "featureShutdownMs"

    .line 39
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    iget-object v3, p0, Lru/ok/tracer/base/commands/CommandsHandler;->featureName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_2

    move-object v10, v2

    goto :goto_1

    :cond_2
    move-object v10, v6

    :goto_1
    const-string v2, "tagShutdownMs"

    .line 40
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    iget-object v2, p0, Lru/ok/tracer/base/commands/CommandsHandler;->featureName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lru/ok/tracer/base/commands/CommandsHandler;->tag:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v4, :cond_4

    move-object v12, p1

    goto :goto_3

    :cond_4
    move-object v12, v6

    .line 42
    :goto_3
    iget-object v7, p0, Lru/ok/tracer/base/commands/CommandsHandler;->limits:Lru/ok/tracer/base/limits/TracerFeatureLimits;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lru/ok/tracer/base/commands/CommandsHandler;->featureName:Ljava/lang/String;

    iget-object v11, p0, Lru/ok/tracer/base/commands/CommandsHandler;->tag:Ljava/lang/String;

    invoke-interface/range {v7 .. v12}, Lru/ok/tracer/base/limits/TracerFeatureLimits;->setShutdownMs(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    return-void
.end method
