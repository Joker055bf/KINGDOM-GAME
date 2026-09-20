.class public Lcom/google/firebase/database/connection/PersistentConnectionImpl;
.super Ljava/lang/Object;
.source "PersistentConnectionImpl.java"

# interfaces
.implements Lcom/google/firebase/database/connection/Connection$Delegate;
.implements Lcom/google/firebase/database/connection/PersistentConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;,
        Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;
    }
.end annotation


# static fields
.field private static final GET_CONNECT_TIMEOUT:J = 0xbb8L

.field private static final IDLE_INTERRUPT_REASON:Ljava/lang/String; = "connection_idle"

.field private static final IDLE_TIMEOUT:J = 0xea60L

.field private static final INVALID_AUTH_TOKEN_THRESHOLD:J = 0x3L

.field private static final REQUEST_ACTION:Ljava/lang/String; = "a"

.field private static final REQUEST_ACTION_AUTH:Ljava/lang/String; = "auth"

.field private static final REQUEST_ACTION_GAUTH:Ljava/lang/String; = "gauth"

.field private static final REQUEST_ACTION_GET:Ljava/lang/String; = "g"

.field private static final REQUEST_ACTION_MERGE:Ljava/lang/String; = "m"

.field private static final REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String; = "oc"

.field private static final REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String; = "om"

.field private static final REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String; = "o"

.field private static final REQUEST_ACTION_PUT:Ljava/lang/String; = "p"

.field private static final REQUEST_ACTION_QUERY:Ljava/lang/String; = "q"

.field private static final REQUEST_ACTION_QUERY_UNLISTEN:Ljava/lang/String; = "n"

.field private static final REQUEST_ACTION_STATS:Ljava/lang/String; = "s"

.field private static final REQUEST_ACTION_UNAUTH:Ljava/lang/String; = "unauth"

.field private static final REQUEST_AUTHVAR:Ljava/lang/String; = "authvar"

.field private static final REQUEST_COMPOUND_HASH:Ljava/lang/String; = "ch"

.field private static final REQUEST_COMPOUND_HASH_HASHES:Ljava/lang/String; = "hs"

.field private static final REQUEST_COMPOUND_HASH_PATHS:Ljava/lang/String; = "ps"

.field private static final REQUEST_COUNTERS:Ljava/lang/String; = "c"

.field private static final REQUEST_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final REQUEST_DATA_HASH:Ljava/lang/String; = "h"

.field private static final REQUEST_DATA_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_ERROR:Ljava/lang/String; = "error"

.field private static final REQUEST_NUMBER:Ljava/lang/String; = "r"

.field private static final REQUEST_PATH:Ljava/lang/String; = "p"

.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "b"

.field private static final REQUEST_QUERIES:Ljava/lang/String; = "q"

.field private static final REQUEST_STATUS:Ljava/lang/String; = "s"

.field private static final REQUEST_TAG:Ljava/lang/String; = "t"

.field private static final RESPONSE_FOR_REQUEST:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_ACTION:Ljava/lang/String; = "a"

.field private static final SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String; = "ac"

.field private static final SERVER_ASYNC_DATA_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_ASYNC_DATA_RANGE_MERGE:Ljava/lang/String; = "rm"

.field private static final SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String; = "d"

.field private static final SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String; = "c"

.field private static final SERVER_ASYNC_PAYLOAD:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String; = "sd"

.field private static final SERVER_DATA_END_PATH:Ljava/lang/String; = "e"

.field private static final SERVER_DATA_RANGE_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_DATA_START_PATH:Ljava/lang/String; = "s"

.field private static final SERVER_DATA_TAG:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_UPDATE_BODY:Ljava/lang/String; = "d"

.field private static final SERVER_DATA_UPDATE_PATH:Ljava/lang/String; = "p"

.field private static final SERVER_DATA_WARNINGS:Ljava/lang/String; = "w"

.field private static final SERVER_KILL_INTERRUPT_REASON:Ljava/lang/String; = "server_kill"

.field private static final SERVER_RESPONSE_DATA:Ljava/lang/String; = "d"

.field private static final SUCCESSFUL_CONNECTION_ESTABLISHED_DELAY:J = 0x7530L

.field private static final TOKEN_REFRESH_INTERRUPT_REASON:Ljava/lang/String; = "token_refresh"

.field private static connectionIds:J


# instance fields
.field private authToken:Ljava/lang/String;

.field private final authTokenProvider:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

.field private cachedHost:Ljava/lang/String;

.field private connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

.field private final context:Lcom/google/firebase/database/connection/ConnectionContext;

.field private currentGetTokenAttempt:J

.field private final delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private firstConnection:Z

.field private forceAuthTokenRefresh:Z

.field private hasOnDisconnects:Z

.field private final hostInfo:Lcom/google/firebase/database/connection/HostInfo;

.field private inactivityTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private interruptReasons:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invalidAuthTokenCount:I

.field private lastConnectionEstablishedTime:J

.field private lastSessionId:Ljava/lang/String;

.field private lastWriteTimestamp:J

.field private listens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private onDisconnectRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingGets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingPuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;",
            ">;"
        }
    .end annotation
.end field

.field private readCounter:J

.field private realtime:Lcom/google/firebase/database/connection/Connection;

.field private requestCBHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private requestCounter:J

.field private final retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

.field private writeCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)V
    .locals 4

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    .line 290
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const-wide/16 v0, 0x0

    .line 291
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    .line 292
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->readCounter:J

    .line 293
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    .line 310
    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 320
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    .line 321
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    .line 322
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 323
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getAuthTokenProvider()Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    .line 324
    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    .line 325
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    .line 326
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    .line 327
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    .line 328
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    .line 329
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    .line 330
    new-instance p2, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    .line 331
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v1

    const-string v2, "ConnectionRetryHelper"

    invoke-direct {p2, p3, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 332
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withMinDelayAfterFailure(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    .line 333
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withRetryExponent(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    const-wide/16 v1, 0x7530

    .line 334
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withMaxDelay(J)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    const-wide v1, 0x3fe6666666666666L    # 0.7

    .line 335
    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->withJitterFactor(D)Lcom/google/firebase/database/connection/util/RetryHelper$Builder;

    move-result-object p2

    .line 336
    invoke-virtual {p2}, Lcom/google/firebase/database/connection/util/RetryHelper$Builder;->build()Lcom/google/firebase/database/connection/util/RetryHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    .line 338
    sget-wide p2, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    sput-wide v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionIds:J

    .line 339
    new-instance v1, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pc_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PersistentConnection"

    invoke-direct {v1, p1, p3, p2}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 340
    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    return-wide v0
.end method

.method static synthetic access$1208(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)J
    .locals 4

    .line 37
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->currentGetTokenAttempt:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authTokenProvider:Lcom/google/firebase/database/connection/ConnectionAuthTokenProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return p0
.end method

.method static synthetic access$1702(Lcom/google/firebase/database/connection/PersistentConnectionImpl;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return p1
.end method

.method static synthetic access$1708(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->invalidAuthTokenCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreState()V

    return-void
.end method

.method static synthetic access$1902(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/Connection;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/util/RetryHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/connection/PersistentConnection$Delegate;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3102(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->idleHasTimedOut()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    return-object p0
.end method

.method private canSendReads()Z
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canSendWrites()Z
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancelSentTransactions()V
    .locals 5

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 808
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 810
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 811
    invoke-virtual {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->wasSent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 817
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 820
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    const-string v2, "disconnected"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private connected()Z
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private doIdleCheck()V
    .locals 5

    .line 1324
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1326
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$10;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$10;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1330
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->inactivityTimer:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    const-string v0, "connection_idle"

    .line 1344
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isInterrupted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1345
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(Z)V

    .line 1346
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1094
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    .line 1095
    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "d"

    .line 1096
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p1, "h"

    .line 1098
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handleTimestamp(J)V
    .locals 3

    .line 1086
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handling timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 1088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "serverTimeOffset"

    .line 1089
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1, v0}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onServerInfoUpdate(Ljava/util/Map;)V

    return-void
.end method

.method private idleHasTimedOut()Z
    .locals 6

    .line 1362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1363
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastWriteTimestamp:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIdle()Z
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    .line 1356
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    .line 1358
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextRequestNumber()J
    .locals 4

    .line 1320
    iget-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCounter:J

    return-wide v0
.end method

.method private onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth token revoked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 940
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    const/4 p1, 0x1

    .line 941
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    .line 942
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1, p2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 944
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection;->close()V

    return-void
.end method

.method private onDataPush(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleServerMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "d"

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "t"

    const-string v4, "p"

    const-string v5, "m"

    if-nez v2, :cond_a

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "rm"

    .line 887
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "s"

    if-eqz v2, :cond_6

    .line 888
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 889
    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 890
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    .line 893
    check-cast v0, Ljava/util/List;

    .line 894
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 895
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 896
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "e"

    .line 897
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 898
    invoke-static {v7}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    if-eqz v8, :cond_3

    .line 899
    invoke-static {v8}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 900
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 901
    new-instance v8, Lcom/google/firebase/database/connection/RangeMerge;

    invoke-direct {v8, v7, v9, v4}, Lcom/google/firebase/database/connection/RangeMerge;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 904
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring empty range merge for path "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 906
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1, v2, v3, p2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_6
    const-string v2, "c"

    .line 908
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 909
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 910
    invoke-static {p1}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 911
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onListenRevoked(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_7
    const-string v2, "ac"

    .line 912
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 913
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 914
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 915
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v0, "sd"

    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 917
    invoke-direct {p0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onSecurityDebugPacket(Ljava/util/Map;)V

    goto :goto_3

    .line 919
    :cond_9
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized action from server: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 875
    :cond_a
    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 877
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 878
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 879
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->longFromObject(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 881
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_b

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 882
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ignoring empty merge for path "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 884
    :cond_b
    invoke-static {v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->stringToPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 885
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v2, v1, v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    :cond_c
    :goto_3
    return-void
.end method

.method private onListenRevoked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 926
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListens(Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 929
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 930
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1600(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v0

    const-string v1, "permission_denied"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSecurityDebugPacket(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/logging/LogWrapper;->info(Ljava/lang/String;)V

    return-void
.end method

.method private putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 1109
    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->getPutObject(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 1112
    iget-wide p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->writeCounter:J

    .line 1114
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p5, v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1116
    invoke-direct {p0, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V

    .line 1118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastWriteTimestamp:J

    .line 1119
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method private removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removing query "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " but no listener exists."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 846
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-object v0
.end method

.method private removeListens(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removing all listens at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 856
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    .line 857
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 858
    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 864
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 867
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-object v0
.end method

.method private restoreAuth()V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "calling restore state"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v3, v2, v1

    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Not restoring auth because token is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    :cond_2
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 1037
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreState()V

    goto :goto_1

    .line 1039
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Restoring auth."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    :cond_4
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Authenticating:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 1041
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthAndRestoreState()V

    :goto_1
    return-void
.end method

.method private restoreState()V
    .locals 6

    .line 1046
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v2, v1, v3

    const-string v2, "Should be connected if we\'re restoring state, but we are: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Restoring outstanding listens"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    .line 1054
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restoring listen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    goto :goto_1

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Restoring writes."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1062
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1063
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1064
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendPut(J)V

    goto :goto_2

    .line 1068
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    .line 1070
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getPath()Ljava/util/List;

    move-result-object v4

    .line 1072
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 1073
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    .line 1069
    invoke-direct {p0, v2, v4, v5, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_3

    .line 1075
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1077
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Restoring reads."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1079
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1080
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1081
    invoke-direct {p0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendGet(Ljava/lang/Long;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method private sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1302
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendAuthAndRestoreState()V
    .locals 1

    const/4 v0, 0x1

    .line 957
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V

    return-void
.end method

.method private sendAuthHelper(Z)V
    .locals 5

    .line 961
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Must be connected to send auth, but was: %s"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 962
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const-string v2, "Auth token must be set to authenticate!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 964
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$5;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    .line 1006
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1007
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/firebase/database/util/GAuthToken;->tryParseFromString(Ljava/lang/String;)Lcom/google/firebase/database/util/GAuthToken;

    move-result-object v2

    const-string v3, "cred"

    if-eqz v2, :cond_2

    .line 1009
    invoke-virtual {v2}, Lcom/google/firebase/database/util/GAuthToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    invoke-virtual {v2}, Lcom/google/firebase/database/util/GAuthToken;->getAuth()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "authvar"

    .line 1011
    invoke-virtual {v2}, Lcom/google/firebase/database/util/GAuthToken;->getAuth()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "gauth"

    .line 1013
    invoke-direct {p0, v2, v1, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    goto :goto_1

    .line 1015
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auth"

    .line 1016
    invoke-direct {p0, v2, v1, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    :goto_1
    return-void
.end method

.method private sendConnectStats()V
    .locals 6

    .line 1290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1291
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v1}, Lcom/google/firebase/database/connection/ConnectionContext;->isPersistenceEnabled()Z

    move-result v1

    const/4 v2, 0x1

    .line 1294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v1, "persistence.android.enabled"

    .line 1292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sdk.android."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {v3}, Lcom/google/firebase/database/connection/ConnectionContext;->getClientSdkVersion()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Sending first connection stats"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1297
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendStats(Ljava/util/Map;)V

    return-void
.end method

.method private sendGet(Ljava/lang/Long;)V
    .locals 4

    .line 1163
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendReads()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sendGet called when we can\'t send gets"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    .line 1165
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->access$500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1166
    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " cancelled, ignoring."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1173
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;->access$2600(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$7;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/Long;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;)V

    const-string p1, "g"

    .line 1171
    invoke-direct {p0, p1, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 6

    .line 1190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1191
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getTag()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "q"

    if-eqz v1, :cond_0

    .line 1195
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "t"

    .line 1196
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getHashFunction()Lcom/google/firebase/database/connection/ListenHashProvider;

    move-result-object v1

    const-string v3, "h"

    .line 1200
    invoke-interface {v1}, Lcom/google/firebase/database/connection/ListenHashProvider;->getSimpleHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-interface {v1}, Lcom/google/firebase/database/connection/ListenHashProvider;->shouldIncludeCompoundHash()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1203
    invoke-interface {v1}, Lcom/google/firebase/database/connection/ListenHashProvider;->getCompoundHash()Lcom/google/firebase/database/connection/CompoundHash;

    move-result-object v1

    .line 1205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/CompoundHash;->getPosts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1207
    invoke-static {v5}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1209
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "hs"

    .line 1210
    invoke-virtual {v1}, Lcom/google/firebase/database/connection/CompoundHash;->getHashes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ps"

    .line 1211
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ch"

    .line 1212
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    :cond_2
    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$8;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    .line 780
    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "d"

    .line 781
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    new-instance p2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$4;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendPut(J)V
    .locals 10

    .line 1124
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    .line 1123
    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 1127
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getOnComplete()Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v7

    .line 1128
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->markSent()V

    .line 1133
    invoke-virtual {v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$6;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Ljava/lang/String;JLcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 1131
    invoke-direct {p0, v0, v8, v9}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendSensitive(Ljava/lang/String;ZLjava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;",
            ")V"
        }
    .end annotation

    .line 1310
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->nextRequestNumber()J

    move-result-wide v0

    .line 1311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "r"

    .line 1312
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    .line 1313
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "b"

    .line 1314
    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    invoke-virtual {p1, v2, p2}, Lcom/google/firebase/database/connection/Connection;->sendRequest(Ljava/util/Map;Z)V

    .line 1316
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendStats(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1251
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "c"

    .line 1253
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    new-instance p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$9;

    invoke-direct {p1, p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$9;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;)V

    const-string v1, "s"

    invoke-direct {p0, v1, v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    goto :goto_0

    .line 1271
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not sending stats because stats are empty"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendUnauth()V
    .locals 4

    .line 1021
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Must be connected to send unauth."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unauth"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private sendUnlisten(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V
    .locals 3

    .line 825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 826
    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->access$1500(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getTag()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;->getQuery()Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "q"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 831
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "n"

    const/4 v1, 0x0

    .line 834
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;)V

    return-void
.end method

.method private tryScheduleReconnect()V
    .locals 5

    .line 695
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v2, v1, v3

    const-string v2, "Not in disconnected state: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    .line 701
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "Scheduling connection attempt"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    iput-boolean v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->forceAuthTokenRefresh:Z

    .line 703
    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    new-instance v2, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$3;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Z)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/connection/util/RetryHelper;->retry(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private upgradeAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 953
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendAuthHelper(Z)V

    return-void
.end method

.method private warnOnListenerWarnings(Ljava/util/List;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    .line 1277
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1278
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\".indexOn\": \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1279
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1284
    invoke-static {p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1279
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 464
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public get(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 392
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 394
    iget-wide v7, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->readCounter:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->readCounter:J

    .line 396
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 397
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$100(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "q"

    .line 398
    invoke-static {v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;->access$200(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v3, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;

    new-instance v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v0, 0x0

    const-string v2, "g"

    invoke-direct {v3, v2, p2, v1, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    .line 418
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingGets:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 421
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$2;-><init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingGet;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendReads()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 440
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendGet(Ljava/lang/Long;)V

    .line 442
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    .line 443
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    return-void
.end method

.method public injectConnectionFailure()V
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {v0}, Lcom/google/firebase/database/connection/Connection;->injectConnectionFailure()V

    :cond_0
    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection interrupted for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    if-eqz p1, :cond_1

    .line 630
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection;->close()V

    const/4 p1, 0x0

    .line 631
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    goto :goto_0

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->cancel()V

    .line 634
    sget-object p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 637
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->signalSuccess()V

    return-void
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public listen(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/ListenHashProvider;Ljava/lang/Long;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/ListenHashProvider;",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 373
    new-instance v6, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    invoke-direct {v6, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 374
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listening on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "listen() called twice for same QuerySpec."

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding listen query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_1
    new-instance p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p5

    move-object v2, v6

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;-><init>(Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;Ljava/lang/Long;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    .line 382
    iget-object p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->listens:Ljava/util/Map;

    invoke-interface {p2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 384
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    .line 386
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public merge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 469
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public onCacheHost(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cachedHost:Ljava/lang/String;

    return-void
.end method

.method public onDataMessage(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    .line 496
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "b"

    if-eqz v1, :cond_0

    .line 499
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 500
    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;

    if-eqz v0, :cond_3

    .line 504
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 505
    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;->onResponse(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "error"

    .line 507
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "a"

    .line 509
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 514
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDataPush(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring unknown message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
    .locals 8

    .line 522
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got on disconnect due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :cond_0
    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    .line 525
    iput-boolean v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 526
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->requestCBHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 527
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cancelSentTransactions()V

    .line 528
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    sub-long/2addr v4, v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 538
    :cond_1
    sget-object v0, Lcom/google/firebase/database/connection/Connection$DisconnectReason;->SERVER_RESET:Lcom/google/firebase/database/connection/Connection$DisconnectReason;

    if-eq p1, v0, :cond_2

    if-eqz v1, :cond_3

    .line 539
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->retryHelper:Lcom/google/firebase/database/connection/util/RetryHelper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/RetryHelper;->signalSuccess()V

    .line 541
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    .line 543
    :cond_4
    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    .line 544
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onDisconnect()V

    return-void
.end method

.method public onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    .line 614
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oc"

    const/4 v1, 0x0

    .line 615
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    const-string v2, "oc"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 600
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "om"

    .line 601
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    const-string v2, "om"

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 579
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->canSendWrites()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    .line 580
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendOnDisconnect(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    const-string v2, "o"

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;Lcom/google/firebase/database/connection/PersistentConnectionImpl$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public onKill(Ljava/lang/String;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, "server_kill"

    .line 553
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public onReady(JLjava/lang/String;)V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "onReady"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastConnectionEstablishedTime:J

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->handleTimestamp(J)V

    .line 351
    iget-boolean p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    if-eqz p1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendConnectStats()V

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->restoreAuth()V

    .line 356
    iput-boolean v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->firstConnection:Z

    .line 357
    iput-object p3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    .line 358
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {p1}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onConnect()V

    return-void
.end method

.method public openNetworkConnection(Ljava/lang/String;)V
    .locals 6

    .line 761
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->GettingToken:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    aput-object v2, v1, v3

    const-string v2, "Trying to open network connection while in the wrong state: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/database/connection/ConnectionUtils;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 768
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->delegate:Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    invoke-interface {v0, v3}, Lcom/google/firebase/database/connection/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 770
    :cond_1
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    .line 771
    sget-object p1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Connecting:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    .line 772
    new-instance p1, Lcom/google/firebase/database/connection/Connection;

    iget-object v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->context:Lcom/google/firebase/database/connection/ConnectionContext;

    iget-object v2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hostInfo:Lcom/google/firebase/database/connection/HostInfo;

    iget-object v3, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->cachedHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lastSessionId:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/Connection;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/Connection$Delegate;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->realtime:Lcom/google/firebase/database/connection/Connection;

    .line 774
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/Connection;->open()V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "write_canceled"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;

    .line 475
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->access$800(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 476
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;->access$800(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingPut;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;

    .line 480
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 481
    invoke-static {v1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;->access$900(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingDisconnect;)Lcom/google/firebase/database/connection/RequestResultCallback;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/google/firebase/database/connection/RequestResultCallback;->onRequestResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 485
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->hasOnDisconnects:Z

    .line 491
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method

.method public put(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/connection/RequestResultCallback;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 458
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->putInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token refresh requested"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    .line 677
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public refreshAuthToken(Ljava/lang/String;)V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Auth token refreshed."

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->authToken:Ljava/lang/String;

    .line 685
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->upgradeAuth()V

    goto :goto_0

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnauth()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection no longer interrupted for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->shouldReconnect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connectionState:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    sget-object v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;->Disconnected:Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 649
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->tryScheduleReconnect()V

    :cond_1
    return-void
.end method

.method shouldReconnect()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interruptReasons:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shutdown()V
    .locals 1

    const-string v0, "shutdown"

    .line 453
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public unlisten(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 558
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 559
    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "unlistening on "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->removeListen(Lcom/google/firebase/database/connection/PersistentConnectionImpl$QuerySpec;)Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->connected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 566
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->sendUnlisten(Lcom/google/firebase/database/connection/PersistentConnectionImpl$OutstandingListen;)V

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->doIdleCheck()V

    return-void
.end method
