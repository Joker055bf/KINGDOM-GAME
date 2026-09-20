.class public Lcom/tgs/aics/diagnose/DiagnoseManager;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"


# static fields
.field public static final LABEL_DATA:Ljava/lang/String; = "data"

.field public static final LABEL_DIAGNOSE:Ljava/lang/String; = "diagnose"

.field public static final LABEL_DURATION:Ljava/lang/String; = "duration"

.field public static final LABEL_HEADER:Ljava/lang/String; = "header"

.field public static final LABEL_HTTP_CODE:Ljava/lang/String; = "httpCode"

.field public static final LABEL_ID:Ljava/lang/String; = "id"

.field public static final LABEL_KEY:Ljava/lang/String; = "key"

.field public static final LABEL_MESSAGE:Ljava/lang/String; = "message"

.field public static final LABEL_METHOD:Ljava/lang/String; = "method"

.field public static final LABEL_SIZE:Ljava/lang/String; = "size"

.field public static final LABEL_SORT:Ljava/lang/String; = "sort"

.field public static final LABEL_SOURCE:Ljava/lang/String; = "source"

.field public static final LABEL_START_TIME:Ljava/lang/String; = "startTime"

.field public static final LABEL_SUCCEED:Ljava/lang/String; = "succeed"

.field public static final LABEL_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final LABEL_TITLE:Ljava/lang/String; = "title"

.field public static final LABEL_TYPE:Ljava/lang/String; = "type"

.field public static final LABEL_UI:Ljava/lang/String; = "ui"

.field public static final LABEL_URLS:Ljava/lang/String; = "urls"

.field private static final TAG:Ljava/lang/String; = "aics.NetworkDiagnoseSDK"

.field public static final TYPE_APP_BASE:Ljava/lang/String; = "appBase"

.field public static final TYPE_NET_DNS:Ljava/lang/String; = "netDNS"

.field public static final TYPE_NET_PUBLIC_IPS:Ljava/lang/String; = "netPublicIPs"

.field public static final TYPE_NET_TEST:Ljava/lang/String; = "netTest"

.field public static final TYPE_NET_TRACEROUTE:Ljava/lang/String; = "netTraceRoute"

.field public static final TYPE_PARSE_DOMAIN:Ljava/lang/String; = "parseDomain"

.field public static final TYPE_PING_DOMAIN:Ljava/lang/String; = "pingDomain"

.field public static final TYPE_PING_URL:Ljava/lang/String; = "pingUrl"

.field public static final TYPE_TCP_CONNECT:Ljava/lang/String; = "tcpConnect"

.field private static final mDiagnoseManager:Lcom/tgs/aics/diagnose/DiagnoseManager;


# instance fields
.field private mConfig:Lcom/tgs/aics/diagnose/Config;

.field private final mDiagnoseComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnoses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;"
        }
    .end annotation
.end field

.field private mInvoker:Lcom/tgs/aics/diagnose/Invoker;

.field private mLatestResult:Lcom/tgs/aics/diagnose/Result;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/tgs/aics/diagnose/DiagnoseManager;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;-><init>()V

    sput-object v0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoseManager:Lcom/tgs/aics/diagnose/DiagnoseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 60
    iput v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mListeners:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoseComparator:Ljava/util/Comparator;

    return-void
.end method

.method private countTotal(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/diagnose/IDiagnose;

    if-eqz v2, :cond_0

    .line 263
    invoke-interface {v2}, Lcom/tgs/aics/diagnose/IDiagnose;->getTotal()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private execute(Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;I",
            "Lcom/tgs/aics/diagnose/Config;",
            "Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;",
            "Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;",
            ")Z"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v10, p3

    move-object/from16 v7, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-gez v10, :cond_0

    goto/16 :goto_0

    .line 279
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v10, v2, :cond_1

    .line 280
    invoke-interface {v7, v1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    return v1

    .line 283
    :cond_1
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/tgs/aics/diagnose/IDiagnose;

    if-nez v13, :cond_2

    .line 285
    invoke-interface {v7, v1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    return v1

    .line 288
    :cond_2
    invoke-interface {v13}, Lcom/tgs/aics/diagnose/IDiagnose;->getTotal()I

    move-result v5

    const-string v2, " "

    const-string v3, "/"

    const/4 v14, 0x1

    if-gtz v5, :cond_3

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Not need execute diagnose while total empty."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 291
    invoke-interface {v7, v1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    return v14

    .line 293
    :cond_3
    invoke-virtual {v12, v13}, Lcom/tgs/aics/diagnose/DiagnoseManager;->isExist(Lcom/tgs/aics/diagnose/IDiagnose;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Diagnose canceled while not exist."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 295
    invoke-interface {v7, v1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    return v1

    :cond_4
    new-array v3, v14, [I

    aput v1, v3, v1

    const/16 v0, 0x2711

    .line 299
    invoke-interface {v13, v0}, Lcom/tgs/aics/diagnose/IDiagnose;->setStatus(I)Z

    .line 300
    invoke-direct {v12, v13}, Lcom/tgs/aics/diagnose/DiagnoseManager;->notifyDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V

    new-array v4, v14, [Z

    aput-boolean v14, v4, v1

    .line 302
    new-instance v15, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/IDiagnose;[I[ZILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v13, v0, v1, v12, v15}, Lcom/tgs/aics/diagnose/IDiagnose;->execute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    return v14

    .line 277
    :cond_5
    :goto_0
    invoke-interface {v7, v1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    return v1
.end method

.method public static getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;
    .locals 1

    .line 73
    sget-object v0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoseManager:Lcom/tgs/aics/diagnose/DiagnoseManager;

    return-object v0
.end method

.method private isObjectSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$new$0(Lcom/tgs/aics/diagnose/IDiagnose;Lcom/tgs/aics/diagnose/IDiagnose;)I
    .locals 0

    .line 66
    invoke-interface {p0}, Lcom/tgs/aics/diagnose/IDiagnose;->getExecuteOrder()I

    move-result p0

    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->getExecuteOrder()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$startDiagnose$1(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 192
    instance-of v0, p1, Lcom/tgs/aics/diagnose/IDiagnose;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    check-cast p1, Lcom/tgs/aics/diagnose/IDiagnose;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 328
    monitor-enter v0

    .line 329
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;

    .line 330
    invoke-interface {v2, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;->onDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V

    goto :goto_0

    .line 332
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addDiagnose(Lcom/tgs/aics/diagnose/AICSDiagnose;)Z
    .locals 5

    const-string v0, "Add android diagnose."

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 122
    iget-object v2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    .line 123
    monitor-enter v2

    :try_start_0
    const-string v3, "aics.NetworkDiagnoseSDK"

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    .line 126
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v1
.end method

.method public addListener(Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 84
    monitor-enter v0

    .line 85
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancelAll()Z
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 391
    monitor-enter v0

    .line 392
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/diagnose/IDiagnose;

    if-eqz v3, :cond_0

    .line 394
    invoke-interface {v3, v1}, Lcom/tgs/aics/diagnose/IDiagnose;->cancel(Z)Z

    goto :goto_0

    .line 397
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return v1
.end method

.method public final execute(Ljava/lang/Runnable;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public findDiagnose(Lcom/tgs/aics/diagnose/Matcher;)Lcom/tgs/aics/diagnose/IDiagnose;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 96
    monitor-enter v0

    .line 97
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/diagnose/IDiagnose;

    .line 98
    invoke-interface {p1, v2}, Lcom/tgs/aics/diagnose/Matcher;->onMatch(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_0

    .line 102
    monitor-exit v0

    return-object v2

    .line 105
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAllDiagnoses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getConfig()Lcom/tgs/aics/diagnose/Config;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mConfig:Lcom/tgs/aics/diagnose/Config;

    return-object v0
.end method

.method public getLatestResult()Lcom/tgs/aics/diagnose/Result;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mLatestResult:Lcom/tgs/aics/diagnose/Result;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    return v0
.end method

.method public isAllSucceed()Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 405
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/diagnose/IDiagnose;

    if-eqz v1, :cond_1

    .line 406
    invoke-interface {v1}, Lcom/tgs/aics/diagnose/IDiagnose;->getStatus()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x2710

    :goto_1
    const/16 v2, 0x2712

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x2713

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isExist(Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 381
    monitor-enter v1

    .line 382
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 383
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return v0
.end method

.method synthetic lambda$execute$4$com-tgs-aics-diagnose-DiagnoseManager(Lcom/tgs/aics/diagnose/IDiagnose;[I[ZILcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/Result;)V
    .locals 12

    move-object v1, p1

    move-object/from16 v0, p11

    .line 304
    monitor-enter p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    aget v4, p2, v3

    add-int/2addr v4, v2

    aput v4, p2, v3

    .line 307
    aget-boolean v4, p3, v3

    invoke-virtual/range {p11 .. p11}, Lcom/tgs/aics/diagnose/Result;->isSucceed()Z

    move-result v5

    and-int/2addr v4, v5

    aput-boolean v4, p3, v3

    .line 309
    :cond_0
    aget v4, p2, v3

    move/from16 v5, p4

    if-ne v5, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 310
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v10, p5

    .line 311
    invoke-interface {v10, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    if-eqz v4, :cond_4

    .line 313
    aget-boolean v3, p3, v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2712

    goto :goto_1

    :cond_2
    const/16 v3, 0x2713

    :goto_1
    invoke-interface {p1, v3}, Lcom/tgs/aics/diagnose/IDiagnose;->setStatus(I)Z

    .line 314
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->notifyDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V

    .line 315
    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v1, p6

    .line 316
    invoke-interface {v1, v2, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    goto :goto_2

    :cond_3
    move-object/from16 v1, p6

    add-int/lit8 v8, p9, 0x1

    move-object v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 318
    invoke-direct/range {v5 .. v11}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 310
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$startDiagnose$2$com-tgs-aics-diagnose-DiagnoseManager(Ljava/util/List;Lorg/json/JSONArray;[ILcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;ILcom/tgs/aics/diagnose/Result;)V
    .locals 1

    if-eqz p6, :cond_1

    .line 211
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->isObjectSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    monitor-enter p2

    .line 213
    :try_start_0
    invoke-virtual {p2, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 p1, 0x0

    .line 214
    aget v0, p3, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, p1

    if-eqz p4, :cond_0

    .line 216
    invoke-interface {p4, v0, p5, p6}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;->onDiagnoseProgressChanged(IILcom/tgs/aics/diagnose/Result;)V

    .line 218
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startDiagnose$3$com-tgs-aics-diagnose-DiagnoseManager(Ljava/util/List;Lcom/tgs/aics/diagnose/Result;JLorg/json/JSONArray;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;ZLcom/tgs/aics/diagnose/Result;)V
    .locals 2

    .line 221
    iget-object p8, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    invoke-direct {p0, p8, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->isObjectSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 222
    invoke-virtual {p2, p1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/tgs/aics/diagnose/Result;->setDuration(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    .line 223
    iput-object p2, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mLatestResult:Lcom/tgs/aics/diagnose/Result;

    .line 224
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->isAllSucceed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2712

    goto :goto_0

    :cond_0
    const/16 p1, 0x2713

    :goto_0
    iput p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Finish diagnose."

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "aics.NetworkDiagnoseSDK"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p6, :cond_1

    .line 227
    invoke-interface {p6, p7, p2}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    :cond_1
    const/4 p1, 0x0

    .line 229
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->notifyDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V

    :cond_2
    return-void
.end method

.method public removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 4

    const-string v0, "Remove one diagnose."

    .line 132
    iget-object v1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "aics.NetworkDiagnoseSDK"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "aics.NetworkDiagnoseSDK"

    const-string v0, "Remove all diagnoses."

    .line 141
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2710

    .line 142
    iput p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    .line 143
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 145
    :goto_0
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 113
    monitor-enter v0

    .line 114
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mInvoker:Lcom/tgs/aics/diagnose/Invoker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p1, p2}, Lcom/tgs/aics/diagnose/Invoker;->invokeNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Use diagnose network invoker to request."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    return-object v0

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/DiagnoseManager;->requestHttp(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/RequestResponse;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public requestHttp(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/RequestResponse;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    const-string v1, "://"

    .line 348
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 352
    :cond_0
    new-instance v1, Lcom/tgs/aics/http/HttpConnect$Builder;

    invoke-direct {v1}, Lcom/tgs/aics/http/HttpConnect$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tgs/aics/http/HttpConnect$Builder;->method(Ljava/lang/String;)Lcom/tgs/aics/http/HttpConnect$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/HttpConnect$Builder;->url(Ljava/lang/String;)Lcom/tgs/aics/http/HttpConnect$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpConnect$Builder;->build()Lcom/tgs/aics/http/HttpConnect;

    move-result-object p1

    if-nez p1, :cond_1

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Fail diagnose request http while android connect null."

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 355
    new-instance p1, Lcom/tgs/aics/diagnose/RequestResponse;

    invoke-direct {p1}, Lcom/tgs/aics/diagnose/RequestResponse;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/RequestResponse;->setSucceed(Z)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    const-string p2, "Android connect null."

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/RequestResponse;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    return-object p1

    .line 358
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpConnect;->doConnect()Lcom/tgs/aics/http/HttpResponse;

    move-result-object p1

    .line 359
    new-instance p2, Lcom/tgs/aics/diagnose/RequestResponse;

    invoke-direct {p2}, Lcom/tgs/aics/diagnose/RequestResponse;-><init>()V

    if-eqz p1, :cond_2

    .line 360
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 361
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->getResponseCode()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 362
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    if-eqz p1, :cond_5

    .line 363
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpResponse;->getHeaders()Lcom/tgs/aics/http/HttpHeaders;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_6

    .line 364
    invoke-virtual {p1}, Lcom/tgs/aics/http/HttpHeaders;->getHeaderMaps()Ljava/util/HashMap;

    move-result-object v3

    .line 365
    :cond_6
    invoke-virtual {p2, v1}, Lcom/tgs/aics/diagnose/RequestResponse;->setSucceed(Z)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/tgs/aics/diagnose/RequestResponse;->putHeaders(Ljava/util/Map;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/diagnose/RequestResponse;->setHttpCode(I)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tgs/aics/diagnose/RequestResponse;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception diagnose request http.e="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 371
    new-instance p2, Lcom/tgs/aics/diagnose/RequestResponse;

    invoke-direct {p2}, Lcom/tgs/aics/diagnose/RequestResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/tgs/aics/diagnose/RequestResponse;->setSucceed(Z)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/diagnose/RequestResponse;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    return-object p1

    .line 349
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Fail diagnose request http while url invalid."

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 350
    new-instance p1, Lcom/tgs/aics/diagnose/RequestResponse;

    invoke-direct {p1}, Lcom/tgs/aics/diagnose/RequestResponse;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/RequestResponse;->setSucceed(Z)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    const-string p2, "Url invalid"

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/RequestResponse;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/RequestResponse;

    move-result-object p1

    return-object p1
.end method

.method public setConfig(Lcom/tgs/aics/diagnose/Config;)Z
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mConfig:Lcom/tgs/aics/diagnose/Config;

    const/4 p1, 0x1

    return p1
.end method

.method public setInvoker(Lcom/tgs/aics/diagnose/Invoker;)Z
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/tgs/aics/diagnose/DiagnoseManager;->mInvoker:Lcom/tgs/aics/diagnose/Invoker;

    const/4 p1, 0x1

    return p1
.end method

.method public startDiagnose(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    const-string v1, "Collect tgs server check url."

    .line 163
    iget v2, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    const-string v11, "aics.NetworkDiagnoseSDK"

    const/4 v12, 0x0

    const/16 v3, 0x2711

    if-ne v2, v3, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not need start diagnose while already executing diagnose."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_0
    if-nez v0, :cond_1

    .line 167
    iget-object v0, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mConfig:Lcom/tgs/aics/diagnose/Config;

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 168
    :cond_2
    new-instance v0, Lcom/tgs/aics/diagnose/Config;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Config;-><init>()V

    :goto_0
    iput-object v0, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mConfig:Lcom/tgs/aics/diagnose/Config;

    .line 169
    iput v3, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    .line 170
    new-instance v2, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v2}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    invoke-virtual {v2, v12}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v13

    const-string v2, "Start diagnose."

    .line 171
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 173
    iget-object v2, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v8, v3

    .line 176
    :try_start_0
    invoke-virtual {v13, v14, v15}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    .line 177
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 179
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/Config;->getTGSServerUrls()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    .line 181
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    if-lez v3, :cond_5

    .line 183
    new-instance v1, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;

    invoke-direct {v1, v2}, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;-><init>(Ljava/util/List;)V

    const v2, 0x7fffffff

    .line 184
    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;->setExecuteOrder(I)Lcom/tgs/aics/diagnose/AICSDiagnose;

    move-result-object v2

    const-string v3, "tgs_aics_diagnose_tgs_servers"

    move-object/from16 v7, p1

    invoke-static {v7, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/AICSDiagnose;->setName(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/AICSDiagnose;

    .line 185
    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 187
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v7, p1

    .line 191
    :cond_6
    :goto_3
    new-instance v1, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Config;->loadConfigDiagnose(Lcom/tgs/aics/diagnose/Matcher;)V

    .line 198
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/diagnose/IDiagnose;

    if-eqz v2, :cond_7

    .line 199
    instance-of v3, v2, Lcom/tgs/aics/diagnose/AICSDiagnose;

    if-eqz v3, :cond_7

    .line 200
    move-object v3, v2

    check-cast v3, Lcom/tgs/aics/diagnose/AICSDiagnose;

    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/AICSDiagnose;->cleanResults()Z

    .line 201
    check-cast v2, Lcom/tgs/aics/diagnose/AICSDiagnose;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/AICSDiagnose;->setStatus(I)Z

    goto :goto_4

    .line 205
    :cond_8
    iget-object v1, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoseComparator:Ljava/util/Comparator;

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    iput-object v8, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort diagnoses list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 208
    invoke-direct {v9, v8}, Lcom/tgs/aics/diagnose/DiagnoseManager;->countTotal(Ljava/util/List;)I

    move-result v17

    const/4 v1, 0x1

    new-array v5, v1, [I

    aput v12, v5, v12

    const/16 v18, 0x0

    .line 210
    new-instance v19, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v4, v16

    move-object/from16 v6, p3

    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/util/List;Lorg/json/JSONArray;[ILcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;I)V

    new-instance v17, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v4, v13

    move-wide v5, v14

    move-object/from16 v7, v16

    move-object/from16 p2, v8

    move-object/from16 v8, p4

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/tgs/aics/diagnose/DiagnoseManager$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/util/List;Lcom/tgs/aics/diagnose/Result;JLorg/json/JSONArray;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v18

    move-object v5, v0

    move-object/from16 v6, v19

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Landroid/content/Context;Ljava/util/List;ILcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 p2, v8

    .line 233
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object v1, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mDiagnoses:Ljava/util/List;

    move-object/from16 v3, p2

    invoke-direct {v9, v1, v3}, Lcom/tgs/aics/diagnose/DiagnoseManager;->isObjectSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception diagnose.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2713

    .line 236
    iput v1, v9, Lcom/tgs/aics/diagnose/DiagnoseManager;->mStatus:I

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v14

    invoke-virtual {v13, v3, v4}, Lcom/tgs/aics/diagnose/Result;->setDuration(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    if-eqz v10, :cond_9

    .line 240
    invoke-interface {v10, v12, v13}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;->onDiagnoseFinish(ZLcom/tgs/aics/diagnose/Result;)V

    :cond_9
    const/4 v0, 0x0

    .line 242
    invoke-direct {v9, v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->notifyDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V

    :cond_a
    return v12
.end method
