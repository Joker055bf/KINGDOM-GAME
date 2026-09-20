.class Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;
.super Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;
.source "DownloadStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/tgs/aics/diagnose/impl/speedtest/Downloader;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    const-string v1, "A downloader died"

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->onError(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "attempt-restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "must-restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$1314(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;J)J

    const-wide/16 v0, 0x64

    .line 57
    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    .line 58
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$1400(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;)V

    :cond_2
    return-void
.end method

.method public onProgress(J)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;

    invoke-static {v0, p1, p2}, Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/DownloadStream;J)J

    return-void
.end method
