.class public Lcom/applovin/impl/sdk/array/ArrayDataCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArrayService"


# instance fields
.field private final logger:Lcom/applovin/impl/sdk/y;

.field private final sdk:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->sdk:Lcom/applovin/impl/sdk/p;

    .line 26
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->logger:Lcom/applovin/impl/sdk/y;

    return-void
.end method


# virtual methods
.method public maybeCollectAppHubVersionCode(Lcom/applovin/array/apphub/aidl/IAppHubService;)J
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/applovin/array/apphub/aidl/IAppHubService;->getAppHubVersionCode()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 42
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->logger:Lcom/applovin/impl/sdk/y;

    const-string v3, "ArrayService"

    const-string v4, "Failed to collect App Hub version code"

    invoke-virtual {v0, v3, v4, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-wide v1
.end method

.method public maybeCollectDirectDownloadEnabled(Lcom/applovin/array/apphub/aidl/IAppHubService;)Z
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aB:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/applovin/array/apphub/aidl/IAppHubService;->getEnabledFeatures()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DIRECT_DOWNLOAD"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 62
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->logger:Lcom/applovin/impl/sdk/y;

    const-string v2, "ArrayService"

    const-string v3, "Failed to collect App Hub version code"

    invoke-virtual {v0, v2, v3, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method public maybeCollectRandomUserToken(Lcom/applovin/array/apphub/aidl/IAppHubService;)Ljava/lang/String;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aC:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 78
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/applovin/array/apphub/aidl/IAppHubService;->getRandomUserToken()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 82
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->logger:Lcom/applovin/impl/sdk/y;

    const-string v2, "ArrayService"

    const-string v3, "Failed to collect random user token"

    invoke-virtual {v0, v2, v3, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method
