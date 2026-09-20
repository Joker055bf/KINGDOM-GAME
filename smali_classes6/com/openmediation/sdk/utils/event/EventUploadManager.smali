.class public Lcom/openmediation/sdk/utils/event/EventUploadManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;,
        Lcom/openmediation/sdk/utils/event/EventUploadManager$EventRunnable;,
        Lcom/openmediation/sdk/utils/event/EventUploadManager$DataBaseUtilHolder;
    }
.end annotation


# instance fields
.field private isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAllowedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/openmediation/sdk/utils/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

.field private mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/openmediation/sdk/utils/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

.field private mMaxReportEventsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/openmediation/sdk/utils/event/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mMaxReportEventsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/event/EventUploadManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->loadEvents()V

    return-void
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/utils/event/EventUploadManager;ILorg/json/JSONObject;)Lcom/openmediation/sdk/utils/event/Event;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->buildEvent(ILorg/json/JSONObject;)Lcom/openmediation/sdk/utils/event/Event;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/utils/event/EventUploadManager;Lcom/openmediation/sdk/utils/event/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(Lcom/openmediation/sdk/utils/event/Event;)V

    return-void
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mDelayEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvents()V

    return-void
.end method

.method static synthetic access$900(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    return-object p0
.end method

.method private buildEvent(ILorg/json/JSONObject;)Lcom/openmediation/sdk/utils/event/Event;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/event/Event;

    invoke-direct {v0, p2}, Lcom/openmediation/sdk/utils/event/Event;-><init>(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/event/Event;->setEid(I)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/openmediation/sdk/utils/event/Event;->setTs(J)V

    return-object v0
.end method

.method private clearEvents()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->clearEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    :cond_2
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private flushEvents(Lcom/openmediation/sdk/utils/event/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/event/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->addEvent(Lcom/openmediation/sdk/utils/event/Event;)V

    :cond_1
    const-string p1, "update events by reached max events count"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvents()V

    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager$DataBaseUtilHolder;->access$100()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    return-object v0
.end method

.method private internalUpload([B)V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Events;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildEventUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;

    invoke-direct {v1, p1}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([B)V

    invoke-static {}, Lcom/openmediation/sdk/utils/request/HeaderUtils;->getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/AdRequest;->post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->url(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->body(Lcom/openmediation/sdk/utils/request/network/RequestBody;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->headers(Lcom/openmediation/sdk/utils/request/network/Headers;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p1

    const v0, 0xc350

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->connectTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p1

    const v0, 0x186a0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->readTimeout(I)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->callback(Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->performRequest(Landroid/content/Context;)V

    return-void
.end method

.method private loadEvents()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->loadEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private uploadEvent(Lcom/openmediation/sdk/utils/event/Event;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Events;->getFids()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Events;->getFids()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/event/Event;->getEid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->flushEvents(Lcom/openmediation/sdk/utils/event/Event;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mAllowedEvents:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mDelayEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mDelayEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mAllowedEvents:Ljava/util/List;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/event/Event;->getEid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/event/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->addEvent(Lcom/openmediation/sdk/utils/event/Event;)V

    :cond_6
    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mMaxReportEventsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_7

    const-string p1, "update events by reached max events count"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvents()V

    :cond_7
    return-void
.end method

.method private uploadEventDelay()V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;-><init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uploadEvents()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Events;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mMaxReportEventsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openmediation/sdk/utils/event/Event;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildEventRequestBody(Ljava/util/concurrent/ConcurrentLinkedQueue;)[B

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "build events request data error"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->internalUpload([B)V

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->clearEvents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "update events exception : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mDelayEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mReportEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    if-nez v0, :cond_0

    const-string v0, "omDB.db"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventDataBase:Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/event/DataBaseEventsStorage;->createTable()V

    :cond_0
    new-instance p1, Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager$LastStayEvent;-><init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;Lcom/openmediation/sdk/utils/event/EventUploadManager$1;)V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/event/EventExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadEvent error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onRequestSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
    .locals 1

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->isReporting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mMaxReportEventsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string p1, "update events after upload success"

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvents()V

    :cond_0
    return-void
.end method

.method public declared-synchronized updateReportSettings(Lcom/openmediation/sdk/utils/model/Configurations;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mAllowedEvents:Ljava/util/List;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Configurations;->getEvents()Lcom/openmediation/sdk/utils/model/Events;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Configurations;->getEvents()Lcom/openmediation/sdk/utils/model/Events;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mMaxReportEventsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Events;->getMn()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Events;->getIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mAllowedEvents:Ljava/util/List;

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Events;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Events;->getCi()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/openmediation/sdk/utils/event/EventUploadManager$EventRunnable;

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager$EventRunnable;-><init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;Lcom/openmediation/sdk/utils/event/EventUploadManager$1;)V

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Events;->getCi()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mEventsSettings:Lcom/openmediation/sdk/utils/model/Events;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Events;->getCi()I

    move-result p1

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {v0 .. v5}, Lcom/openmediation/sdk/utils/event/EventExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    iget-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager;->mAllowedEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEventDelay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public uploadEvent(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method

.method public uploadEvent(ILorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/openmediation/sdk/utils/event/EventUploadManager$1;-><init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;ILorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadEvent(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    return-void
.end method
