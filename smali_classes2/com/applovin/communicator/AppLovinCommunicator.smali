.class public final Lcom/applovin/communicator/AppLovinCommunicator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/applovin/communicator/AppLovinCommunicator;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcom/applovin/impl/sdk/p;

.field private d:Lcom/applovin/impl/sdk/y;

.field private final e:Lcom/applovin/impl/communicator/a;

.field private final f:Lcom/applovin/impl/communicator/MessagingServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/communicator/AppLovinCommunicator;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/applovin/impl/communicator/a;

    invoke-direct {v0, p1}, Lcom/applovin/impl/communicator/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->e:Lcom/applovin/impl/communicator/a;

    .line 50
    new-instance v0, Lcom/applovin/impl/communicator/MessagingServiceImpl;

    invoke-direct {v0, p1}, Lcom/applovin/impl/communicator/MessagingServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->f:Lcom/applovin/impl/communicator/MessagingServiceImpl;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->d:Lcom/applovin/impl/sdk/y;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->d:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinCommunicator"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;
    .locals 2

    .line 36
    sget-object v0, Lcom/applovin/communicator/AppLovinCommunicator;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/applovin/communicator/AppLovinCommunicator;->a:Lcom/applovin/communicator/AppLovinCommunicator;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/applovin/communicator/AppLovinCommunicator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/applovin/communicator/AppLovinCommunicator;->a:Lcom/applovin/communicator/AppLovinCommunicator;

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object p0, Lcom/applovin/communicator/AppLovinCommunicator;->a:Lcom/applovin/communicator/AppLovinCommunicator;

    return-object p0

    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/applovin/communicator/AppLovinCommunicator;->c:Lcom/applovin/impl/sdk/p;

    .line 126
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->d:Lcom/applovin/impl/sdk/y;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attached SDK instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/communicator/AppLovinCommunicator;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getMessagingService()Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->f:Lcom/applovin/impl/communicator/MessagingServiceImpl;

    return-object v0
.end method

.method public hasSubscriber(Ljava/lang/String;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->e:Lcom/applovin/impl/communicator/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/communicator/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public respondsToTopic(Ljava/lang/String;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/applovin/communicator/AppLovinCommunicator;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    return-void
.end method

.method public subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/applovin/communicator/AppLovinCommunicator;->e:Lcom/applovin/impl/communicator/a;

    invoke-virtual {v1, p1, v0}, Lcom/applovin/impl/communicator/a;->a(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to subscribe "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/communicator/AppLovinCommunicator;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppLovinCommunicator{sdk="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/communicator/AppLovinCommunicator;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    return-void
.end method

.method public unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsubscribing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from topic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->a(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/applovin/communicator/AppLovinCommunicator;->e:Lcom/applovin/impl/communicator/a;

    invoke-virtual {v1, p1, v0}, Lcom/applovin/impl/communicator/a;->b(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
