.class public final Lcom/vk/id/tracking/tracer/TracerLibraryManifest;
.super Ljava/lang/Object;
.source "TracerLibraryManifest.java"

# interfaces
.implements Lru/ok/tracer/manifest/TracerLiteManifest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appToken()Ljava/lang/String;
    .locals 1

    const-string v0, "hsFbaWxvAeBeSITAnrieT9uNtfuTSWgYQysSTP9hKiv1"

    return-object v0
.end method

.method public buildUuid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public environment()Ljava/lang/String;
    .locals 1

    const-string v0, "release"

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    const-string v0, "com.vk.id.tracking.tracer"

    return-object v0
.end method

.method public versionName()Ljava/lang/String;
    .locals 1

    const-string v0, "2.7.1"

    return-object v0
.end method
