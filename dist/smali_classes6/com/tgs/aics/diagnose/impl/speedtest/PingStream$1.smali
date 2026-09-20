.class Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;
.super Ljava/lang/Thread;
.source "PingStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;->stopASAP()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    new-instance v7, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$400(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I

    move-result v3

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$500(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I

    move-result v4

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$600(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I

    move-result v5

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$700(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0, v7}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$800(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    .line 41
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    new-instance v1, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;

    iget-object v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v2}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v3}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$900(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$002(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;)Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 65
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    const-string v2, "A pinger failed hard"

    invoke-static {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1000(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Ljava/lang/String;)V

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Lcom/tgs/aics/diagnose/impl/speedtest/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Connection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 67
    :catchall_2
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "must-restart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v0, 0x64

    .line 68
    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    .line 69
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
