.class Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;
.super Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;
.source "PingStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    invoke-direct {p0, p2, p3}, Lcom/tgs/aics/diagnose/impl/speedtest/Pinger;-><init>(Lcom/tgs/aics/diagnose/impl/speedtest/Connection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    const-string v1, "A pinger died"

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1000(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->onError(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "attempt-restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1100(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "must-restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide/16 v0, 0x64

    .line 59
    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/speedtest/Utils;->sleep(J)V

    .line 60
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$1200(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)V

    :cond_2
    return-void
.end method

.method public onPong(J)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object v0, v0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->onPong(J)Z

    move-result p1

    .line 45
    iget-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object p2, p2, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-static {p2}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->access$106(Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;)I

    move-result p2

    if-lez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1$1;->this$1:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;

    iget-object p1, p1, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;->onDone()V

    const/4 p1, 0x0

    return p1
.end method
