.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;
.super Ljava/lang/Object;
.source "DownloadStream.java"


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private ckSize:I

.field private connectTimeout:I

.field private currentDownloaded:J

.field private downloader:Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;

.field private errorHandlingMode:Ljava/lang/String;

.field private log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

.field private path:Ljava/lang/String;

.field private previouslyDownloaded:J

.field private recvBuffer:I

.field private sendBuffer:I

.field private server:Ljava/lang/String;

.field private soTimeout:I

.field private stopASAP:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->currentDownloaded:J

    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->previouslyDownloaded:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->stopASAP:Z

    .line 15
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->server:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->path:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->ckSize:I

    .line 18
    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->errorHandlingMode:Ljava/lang/String;

    .line 19
    iput p5, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->connectTimeout:I

    .line 20
    iput p6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->soTimeout:I

    .line 21
    iput p7, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->recvBuffer:I

    .line 22
    iput p8, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->sendBuffer:I

    .line 23
    iput-object p9, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    .line 24
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->downloader:Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->ckSize:I

    return p0
.end method

.method static synthetic access$102(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;)Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->downloader:Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->errorHandlingMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1314(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;J)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->previouslyDownloaded:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->previouslyDownloaded:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->currentDownloaded:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->currentDownloaded:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->server:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->connectTimeout:I

    return p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->soTimeout:I

    return p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->recvBuffer:I

    return p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->sendBuffer:I

    return p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->stopASAP:Z

    return p0
.end method

.method static synthetic access$900(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->path:Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->stopASAP:Z

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)V

    .line 71
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->start()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->log:Lcom/tgs/aics/diagnose/impl/speedtest/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Logger;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTotalDownloaded()J
    .locals 4

    .line 83
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->previouslyDownloaded:J

    iget-wide v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->currentDownloaded:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public join()V
    .locals 3

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->downloader:Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(JI)V

    goto :goto_0

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public resetDownloadCounter()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->previouslyDownloaded:J

    .line 88
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->currentDownloaded:J

    .line 89
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->downloader:Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->resetDownloadCounter()V

    :cond_0
    return-void
.end method

.method public stopASAP()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->stopASAP:Z

    .line 79
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->downloader:Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->stopASAP()V

    :cond_0
    return-void
.end method
