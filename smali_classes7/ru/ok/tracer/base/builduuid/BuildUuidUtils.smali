.class public final Lru/ok/tracer/base/builduuid/BuildUuidUtils;
.super Ljava/lang/Object;
.source "BuildUuidUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "RESOURCE_NAME_ENVIRONMENT",
        "",
        "RESOURCE_NAME_MAPPING_UUID",
        "getBuildEnvironment",
        "context",
        "Landroid/content/Context;",
        "getBuildUuid",
        "getHostBuildUuid",
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


# static fields
.field private static final RESOURCE_NAME_ENVIRONMENT:Ljava/lang/String; = "tracer_environment"

.field private static final RESOURCE_NAME_MAPPING_UUID:Ljava/lang/String; = "tracer_mapping_uuid"


# direct methods
.method public static final getBuildEnvironment(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "tracer_environment"

    .line 30
    invoke-static {p0, v2, v0, v1, v0}, Lru/ok/tracer/base/apptoken/AppTokenUtils;->getStringOrNull$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBuildUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Do not use"
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "tracer_mapping_uuid"

    const/4 v2, 0x0

    .line 36
    invoke-static {p0, v1, v2, v0, v2}, Lru/ok/tracer/base/apptoken/AppTokenUtils;->getStringOrNull$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 38
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    return-object v2

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not find build UUID. Is Tracer plugin configured properly?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getHostBuildUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lru/ok/tracer/base/manifest/TracerManifestUtils;->findTracerManifest(Ljava/lang/String;)Lru/ok/tracer/manifest/TracerManifest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lru/ok/tracer/manifest/TracerManifest;->buildUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "tracer_mapping_uuid"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 22
    invoke-static {p0, v0, v2, v1, v2}, Lru/ok/tracer/base/apptoken/AppTokenUtils;->getStringOrNull$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 24
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    return-object v2
.end method
