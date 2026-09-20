.class public Lcom/unity/udp/huawei/extension/games/ScopeAdapter;
.super Ljava/lang/Object;
.source "ScopeAdapter.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/EntityAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity/udp/extension/sdk/EntityAdapter<",
        "Lcom/huawei/hms/support/api/entity/auth/Scope;",
        "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
        ">;"
    }
.end annotation


# static fields
.field private static adapter:Lcom/unity/udp/huawei/extension/games/ScopeAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity/udp/huawei/extension/games/ScopeAdapter;
    .locals 1

    .line 21
    sget-object v0, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;-><init>()V

    sput-object v0, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    .line 24
    :cond_0
    sget-object v0, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->adapter:Lcom/unity/udp/huawei/extension/games/ScopeAdapter;

    return-object v0
.end method


# virtual methods
.method public adapt(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/unity/udp/extension/sdk/games/entity/UdpScope;
    .locals 1

    .line 29
    new-instance v0, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/huawei/hms/support/api/entity/auth/Scope;

    invoke-virtual {p0, p1}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->adapt(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    move-result-object p1

    return-object p1
.end method

.method public reverseAdapt(Lcom/unity/udp/extension/sdk/games/entity/UdpScope;)Lcom/huawei/hms/support/api/entity/auth/Scope;
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    invoke-virtual {p1}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->getScopeUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public reverseAdapt(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    .line 43
    new-instance v2, Lcom/huawei/hms/support/api/entity/auth/Scope;

    invoke-virtual {v1}, Lcom/unity/udp/extension/sdk/games/entity/UdpScope;->getScopeUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setAdapt(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/unity/udp/extension/sdk/games/entity/UdpScope;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 54
    invoke-virtual {p0, v1}, Lcom/unity/udp/huawei/extension/games/ScopeAdapter;->adapt(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/unity/udp/extension/sdk/games/entity/UdpScope;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
