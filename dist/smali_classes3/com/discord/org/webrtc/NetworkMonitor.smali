.class public Lcom/discord/org/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/NetworkMonitor$InstanceHolder;,
        Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"


# instance fields
.field private volatile currentConnectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

.field private networkChangeDetectorFactory:Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;

.field private final networkChangeDetectorLock:Ljava/lang/Object;

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field

.field private numObservers:I


# direct methods
.method static bridge synthetic -$$Nest$mnotifyObserversOfNetworkConnect(Lcom/discord/org/webrtc/NetworkMonitor;Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyObserversOfNetworkDisconnect(Lcom/discord/org/webrtc/NetworkMonitor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyObserversOfNetworkPreference(Lcom/discord/org/webrtc/NetworkMonitor;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->notifyObserversOfNetworkPreference(Ljava/util/List;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentConnectionType(Lcom/discord/org/webrtc/NetworkMonitor;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/NetworkMonitor$1;-><init>(Lcom/discord/org/webrtc/NetworkMonitor;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorFactory:Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    .line 73
    sget-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    iput-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->currentConnectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/NetworkMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/NetworkMonitor;-><init>()V

    return-void
.end method

.method public static addNetworkObserver(Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {}, Lcom/discord/org/webrtc/NetworkMonitor;->getInstance()Lcom/discord/org/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discord/org/webrtc/NetworkMonitor;->addObserver(Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;)V

    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method static createAndSetAutoDetectForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;
    .locals 1

    .line 364
    invoke-static {}, Lcom/discord/org/webrtc/NetworkMonitor;->getInstance()Lcom/discord/org/webrtc/NetworkMonitor;

    move-result-object v0

    .line 366
    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/discord/org/webrtc/NetworkChangeDetector;

    move-result-object p0

    .line 367
    iput-object p0, v0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    .line 368
    check-cast p0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;

    return-object p0
.end method

.method private createNetworkChangeDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/discord/org/webrtc/NetworkChangeDetector;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorFactory:Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;

    new-instance v1, Lcom/discord/org/webrtc/NetworkMonitor$2;

    invoke-direct {v1, p0, p2}, Lcom/discord/org/webrtc/NetworkMonitor$2;-><init>(Lcom/discord/org/webrtc/NetworkMonitor;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;->create(Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)Lcom/discord/org/webrtc/NetworkChangeDetector;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentConnectionType()Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->currentConnectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object v0
.end method

.method public static getInstance()Lcom/discord/org/webrtc/NetworkMonitor;
    .locals 1

    .line 92
    sget-object v0, Lcom/discord/org/webrtc/NetworkMonitor$InstanceHolder;->instance:Lcom/discord/org/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .line 327
    invoke-static {}, Lcom/discord/org/webrtc/NetworkMonitor;->getInstance()Lcom/discord/org/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0}, Lcom/discord/org/webrtc/NetworkMonitor;->getCurrentConnectionType()Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private native nativeNotifyOfNetworkPreference(JLcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;I)V
.end method

.method private networkBindingSupported()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/discord/org/webrtc/NetworkChangeDetector;->supportNetworkCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyObserversOfConnectionTypeChange(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 235
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    .line 237
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 242
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;

    .line 245
    invoke-interface {v1, p1}, Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 243
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 237
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private notifyObserversOfNetworkConnect(Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 253
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V

    goto :goto_0

    .line 255
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 261
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    .line 263
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyObserversOfNetworkPreference(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 270
    iget-object v2, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 271
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNotifyOfNetworkPreference(JLcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;I)V

    goto :goto_0

    .line 274
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static removeNetworkObserver(Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-static {}, Lcom/discord/org/webrtc/NetworkMonitor;->getInstance()Lcom/discord/org/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/discord/org/webrtc/NetworkMonitor;->removeObserver(Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;)V

    return-void
.end method

.method private startMonitoring(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    const-string v0, "NetworkMonitor"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start monitoring with native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fieldTrialsString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Lcom/discord/org/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 140
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/discord/org/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter p1

    .line 145
    :try_start_0
    iget-object p4, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-direct {p0, p2, p3}, Lcom/discord/org/webrtc/NetworkMonitor;->updateObserverActiveNetworkList(J)V

    .line 151
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->currentConnectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void

    :catchall_0
    move-exception p2

    .line 146
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private stopMonitoring(J)V
    .locals 3

    const-string v0, "NetworkMonitor"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop monitoring with native observer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/discord/org/webrtc/NetworkMonitor;->stopMonitoring()V

    .line 171
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateCurrentConnectionType(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->currentConnectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 226
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method private updateObserverActiveNetworkList(J)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/discord/org/webrtc/NetworkChangeDetector;->getActiveNetworkList()Ljava/util/List;

    move-result-object v1

    .line 282
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 288
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 289
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;

    .line 290
    invoke-direct {p0, p1, p2, v0}, Lcom/discord/org/webrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V

    return-void

    :catchall_0
    move-exception p1

    .line 282
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addObserver(Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getNetworkChangeDetector()Lcom/discord/org/webrtc/NetworkChangeDetector;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 350
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNumObservers()I
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(Lcom/discord/org/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNetworkChangeDetectorFactory(Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;)V
    .locals 1

    .line 81
    iget v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/discord/org/webrtc/NetworkMonitor;->assertIsTrue(Z)V

    .line 82
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorFactory:Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;

    return-void
.end method

.method public startMonitoring()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {}, Lcom/discord/org/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/discord/org/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/discord/org/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    .line 109
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/discord/org/webrtc/NetworkChangeDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    invoke-interface {p1}, Lcom/discord/org/webrtc/NetworkChangeDetector;->getCurrentConnectionType()Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->currentConnectionType:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopMonitoring()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetectorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->numObservers:I

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    invoke-interface {v1}, Lcom/discord/org/webrtc/NetworkChangeDetector;->destroy()V

    const/4 v1, 0x0

    .line 162
    iput-object v1, p0, Lcom/discord/org/webrtc/NetworkMonitor;->networkChangeDetector:Lcom/discord/org/webrtc/NetworkChangeDetector;

    .line 164
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
