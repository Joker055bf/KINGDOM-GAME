.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;
.super Ljava/lang/Object;
.source "PingStream.java"


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private connectTimeout:I

.field private errorHandlingMode:Ljava/lang/String;

.field private log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

.field private path:Ljava/lang/String;

.field private pinger:Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

.field private recvBuffer:I

.field private remainingPings:I

.field private sendBuffer:I

.field private server:Ljava/lang/String;

.field private soTimeout:I

.field private stopASAP:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 5
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->remainingPings:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const-string v0, "attempt-restart"

    .line 9
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->errorHandlingMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->stopASAP:Z

    .line 14
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->server:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->path:Ljava/lang/String;

    const/4 p1, 0x1

    if-ge p3, p1, :cond_0

    move p3, p1

    .line 16
    :cond_0
    iput p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->remainingPings:I

    .line 17
    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->errorHandlingMode:Ljava/lang/String;

    .line 18
    iput p5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->connectTimeout:I

    .line 19
    iput p6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->soTimeout:I

    .line 20
    iput p7, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->recvBuffer:I

    .line 21
    iput p8, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->sendBuffer:I

    .line 22
    iput-object p9, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    .line 23
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->pinger:Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;)Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->pinger:Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->remainingPings:I

    return p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$106(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I
    .locals 1

    .line 3
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->remainingPings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->remainingPings:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->errorHandlingMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->server:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->connectTimeout:I

    return p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->soTimeout:I

    return p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->recvBuffer:I

    return p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->sendBuffer:I

    return p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->stopASAP:Z

    return p0
.end method

.method static synthetic access$900(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->path:Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->stopASAP:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    if-eqz v0, :cond_1

    .line 29
    :try_start_0
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    :cond_1
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)V

    .line 73
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->start()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public join()V
    .locals 3

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->pinger:Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(JI)V

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public abstract onDone()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onPong(J)Z
.end method

.method public stopASAP()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->stopASAP:Z

    .line 82
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->pinger:Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP()V

    :cond_0
    return-void
.end method
