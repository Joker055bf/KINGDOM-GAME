.class public Lcom/openmediation/sdk/core/OmCacheManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/OmCacheManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OmCacheManager: "

.field private static final UTF:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInitKey(Lcom/openmediation/sdk/InitConfiguration;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/openmediation/sdk/InitConfiguration;->getInitHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://s.openmediation.com/init"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/InitConfiguration;->getAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildInitUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cache_init_config_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/openmediation/sdk/core/OmCacheManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/core/OmCacheManager$Holder;->access$000()Lcom/openmediation/sdk/core/OmCacheManager;

    move-result-object v0

    return-object v0
.end method

.method private getWaterfallKey()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "Config"

    const-class v2, Lcom/openmediation/sdk/utils/model/Configurations;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openmediation/sdk/utils/model/Configurations;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getWf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Configurations;->getApi()Lcom/openmediation/sdk/utils/model/ApiConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/ApiConfigurations;->getWf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildWfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cache_waterfall_config_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "cache_init_config"

    return-object v0
.end method


# virtual methods
.method public getInitData(Lcom/openmediation/sdk/InitConfiguration;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmCacheManager;->needCacheInitData()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmCacheManager;->getInitKey(Lcom/openmediation/sdk/InitConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OmCacheManager: get init cache error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWaterfallData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/core/OmCacheManager;->needCacheWfData(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmCacheManager;->getWaterfallKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object p2

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "OmCacheManager: get waterfall cache error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object v0
.end method

.method public needCacheInitData()Z
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "cache_ad_type"

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public needCacheWfData(I)Z
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    const-string v1, "cache_ad_type"

    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/OmAds$CACHE_TYPE;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/openmediation/sdk/OmAds$CACHE_TYPE;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public saveInitData(Lcom/openmediation/sdk/InitConfiguration;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/core/OmCacheManager;->needCacheInitData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/OmCacheManager;->getInitKey(Lcom/openmediation/sdk/InitConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "save init cache error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public saveWaterfallData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/openmediation/sdk/core/OmCacheManager;->needCacheWfData(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "OmCacheManager: save wf data to local"

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/openmediation/sdk/core/OmCacheManager;->getWaterfallKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p3, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "save waterfall cache error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
