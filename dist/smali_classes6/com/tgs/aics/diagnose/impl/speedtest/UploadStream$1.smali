.class Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;
.super Ljava/lang/Thread;
.source "UploadStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 31
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;->stopASAP()V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;J)J

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    new-instance v7, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$400(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)I

    move-result v3

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$500(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)I

    move-result v4

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$600(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)I

    move-result v5

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$700(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0, v7}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$002(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 38
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$800(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 39
    :try_start_2
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void

    .line 42
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1$1;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$900(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v4}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$1000(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$102(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;)Lcom/tgs/aics/diagnose/impl/speedtest/Uploader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    const-string v2, "An uploader failed hard"

    invoke-static {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;Ljava/lang/String;)V

    .line 64
    :try_start_4
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 65
    :catchall_3
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "must-restart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v0, 0x64

    .line 66
    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    .line 67
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->access$1400(Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/UploadStream;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
