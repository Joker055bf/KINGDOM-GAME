.class public Lcom/openmediation/sdk/bid/BidManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/bid/BidManager$BidHolder;
    }
.end annotation


# instance fields
.field private final mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/bid/BidManager;->mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/bid/BidManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/bid/BidManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/bid/BidManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/bid/BidManager$BidHolder;->access$100()Lcom/openmediation/sdk/bid/BidManager;

    move-result-object v0

    return-object v0
.end method

.method private makeNotifyMap(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "notify_reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public c2sBid(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/bid/BidResponseCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/openmediation/sdk/banner/AdSize;",
            "Lcom/openmediation/sdk/bid/BidResponseCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/bid/BidC2SManager;->getInstance()Lcom/openmediation/sdk/bid/BidC2SManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/openmediation/sdk/bid/BidC2SManager;->bid(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/bid/BidResponseCallback;)V

    return-void
.end method

.method public getBidInstances()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidManager;->mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public initBid(Landroid/content/Context;Lcom/openmediation/sdk/utils/model/Configurations;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/Configurations;->getPls()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/Placement;->getInsMap()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHb()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v7

    invoke-static {v7}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v7

    if-eqz v7, :cond_6

    :try_start_0
    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v8

    invoke-static {p2, v8}, Lcom/openmediation/sdk/bid/BidUtil;->makeBidInitInfo(Lcom/openmediation/sdk/utils/model/Configurations;I)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->initBid(Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "initBid error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/openmediation/sdk/bid/BidManager;->mBidInstances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public notifyLose(Lcom/openmediation/sdk/utils/model/BaseInstance;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/openmediation/sdk/bid/BidManager;->makeNotifyMap(I)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->notifyLose(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p2

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0x112

    invoke-virtual {p2, v0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method notifyLose(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->get()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p1

    invoke-static {p2}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p2

    const/16 v0, 0x112

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public notifyWin(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 3

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->notifyWin(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v1, 0x111

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method notifyWin(Ljava/lang/String;Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->get()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object p1

    invoke-static {p2}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object p2

    const/16 v0, 0x111

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public s2sBid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/bid/BidResponseCallback;)V
    .locals 6

    invoke-static {}, Lcom/openmediation/sdk/bid/BidS2SManager;->getInstance()Lcom/openmediation/sdk/bid/BidS2SManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/openmediation/sdk/bid/BidS2SManager;->bid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/bid/BidResponseCallback;)V

    return-void
.end method
