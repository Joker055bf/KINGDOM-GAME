.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;
.super Ljava/lang/Thread;
.source "Downloader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private ckSize:I

.field private path:Ljava/lang/String;

.field private resetASAP:Z

.field private stopASAP:Z

.field private totDownloaded:J


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;I)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->stopASAP:Z

    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->resetASAP:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->totDownloaded:J

    .line 13
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 14
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->path:Ljava/lang/String;

    const/4 p1, 0x1

    if-ge p3, p1, :cond_0

    move p3, p1

    .line 15
    :cond_0
    iput p3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->ckSize:I

    .line 16
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->start()V

    return-void
.end method


# virtual methods
.method public getDownloaded()J
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->resetASAP:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->totDownloaded:J

    :goto_0
    return-wide v0
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onProgress(J)V
.end method

.method public resetDownloadCounter()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->resetASAP:Z

    return-void
.end method

.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 22
    :try_start_0
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->path:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->url_sep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ckSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->ckSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    iget v4, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->ckSize:I

    const/high16 v5, 0x100000

    mul-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0x4

    div-long v6, v4, v6

    .line 27
    iget-object v8, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v8}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x4000

    new-array v9, v9, [B

    const-wide/16 v12, 0x0

    .line 30
    :cond_0
    :goto_0
    iget-boolean v14, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->stopASAP:Z

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v14, v12, v6

    if-gtz v14, :cond_2

    .line 32
    iget-object v14, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const/4 v15, 0x1

    invoke-virtual {v14, v0, v15}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->GET(Ljava/lang/String;Z)V

    add-long/2addr v12, v4

    .line 35
    :cond_2
    iget-boolean v14, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->stopASAP:Z

    if-eqz v14, :cond_3

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 37
    iget-boolean v15, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->stopASAP:Z

    if-eqz v15, :cond_4

    .line 49
    :goto_1
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V

    goto :goto_2

    :cond_4
    int-to-long v14, v14

    sub-long/2addr v12, v14

    .line 39
    iget-boolean v10, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->resetASAP:Z

    if-eqz v10, :cond_5

    const-wide/16 v10, 0x0

    .line 40
    iput-wide v10, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->totDownloaded:J

    const/4 v10, 0x0

    .line 41
    iput-boolean v10, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->resetASAP:Z

    .line 43
    :cond_5
    iget-wide v10, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->totDownloaded:J

    add-long/2addr v10, v14

    iput-wide v10, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->totDownloaded:J

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    const-wide/16 v14, 0xc8

    cmp-long v10, v10, v14

    if-lez v10, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 46
    iget-wide v10, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->totDownloaded:J

    invoke-virtual {v1, v10, v11}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->onProgress(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    iget-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :catchall_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->onError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public stopASAP()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;->stopASAP:Z

    return-void
.end method
