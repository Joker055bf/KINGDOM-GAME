.class Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;
.super Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;
.source "Speedtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->selectServer(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

.field final synthetic val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;[Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;ILcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    iput-object p4, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;

    invoke-direct {p0, p2, p3}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;-><init>([Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;I)V

    return-void
.end method


# virtual methods
.method public onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-static {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$002(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    .line 143
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$100(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;I)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;->access$202(Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest;I)I

    .line 145
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$1;->val$callback:Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/speedtest/Speedtest$ServerSelectedHandler;->onServerSelected(Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
