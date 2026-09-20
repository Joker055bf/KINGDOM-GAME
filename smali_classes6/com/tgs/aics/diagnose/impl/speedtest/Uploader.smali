.class abstract Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;
.super Ljava/lang/Thread;
.source "Uploader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

.field private garbage:[B

.field private path:Ljava/lang/String;

.field private resetASAP:Z

.field private stopASAP:Z

.field private totUploaded:J


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;I)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP:Z

    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->resetASAP:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->totUploaded:J

    .line 14
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 15
    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->path:Ljava/lang/String;

    const/high16 p1, 0x100000

    mul-int/2addr p3, p1

    .line 16
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->garbage:[B

    .line 17
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 18
    iget-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->garbage:[B

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextBytes([B)V

    .line 19
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->start()V

    return-void
.end method


# virtual methods
.method public getUploaded()J
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->resetASAP:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->totUploaded:J

    :goto_0
    return-wide v0
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onProgress(J)V
.end method

.method public resetUploadCounter()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->resetASAP:Z

    return-void
.end method

.method public run()V
    .locals 10

    .line 25
    :try_start_0
    iget-object v6, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->path:Ljava/lang/String;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    move-wide v8, v0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP:Z

    if-eqz v0, :cond_1

    goto :goto_3

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    const/4 v2, 0x1

    const-string v3, "application/octet-stream"

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->garbage:[B

    array-length v1, v1

    int-to-long v4, v1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->POST(Ljava/lang/String;ZLjava/lang/String;J)V

    const/4 v0, 0x0

    move v1, v0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->garbage:[B

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 33
    iget-boolean v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit16 v3, v1, 0x4000

    .line 34
    array-length v4, v2

    if-lt v3, v4, :cond_3

    array-length v4, v2

    sub-int/2addr v4, v1

    goto :goto_1

    :cond_3
    const/16 v4, 0x4000

    .line 35
    :goto_1
    invoke-virtual {v7, v2, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    iget-boolean v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP:Z

    if-eqz v1, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    iget-boolean v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->resetASAP:Z

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->totUploaded:J

    .line 39
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->resetASAP:Z

    .line 41
    :cond_5
    iget-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->totUploaded:J

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->totUploaded:J

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    const-wide/16 v4, 0xc8

    cmp-long v1, v1, v4

    if-lez v1, :cond_6

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 44
    iget-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->totUploaded:J

    invoke-virtual {p0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->onProgress(J)V

    :cond_6
    move v1, v3

    goto :goto_0

    .line 47
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP:Z

    if-eqz v0, :cond_8

    .line 50
    :goto_3
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V

    goto :goto_5

    .line 48
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->readLineUnbuffered()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->c:Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :catchall_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->onError(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public stopASAP()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP:Z

    return-void
.end method
