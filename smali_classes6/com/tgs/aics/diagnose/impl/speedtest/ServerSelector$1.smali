.class Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;
.super Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;
.source "ServerSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

.field final synthetic val$tp:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    .line 74
    iput-object v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->val$tp:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/tgs/aics/diagnose/impl/speedtest/PingStream;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILcom/tgs/aics/diagnose/impl/speedtest/Logger;)V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {v1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$110(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)V

    return-void

    :catchall_0
    move-exception v1

    .line 92
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->val$tp:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    .line 78
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$000(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$110(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {p1}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$200(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)V

    return-void

    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPong(J)Z
    .locals 1

    long-to-float p1, p1

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    .line 85
    iget-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->val$tp:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    iget p2, p2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->val$tp:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    iget p2, p2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->val$tp:Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;

    iput p1, p2, Lcom/tgs/aics/diagnose/impl/speedtest/TestPoint;->ping:F

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector$1;->this$0:Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;

    invoke-static {p2}, Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;->access$300(Lcom/tgs/aics/diagnose/impl/speedtest/ServerSelector;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    return v0

    :cond_2
    const/high16 p2, 0x43fa0000    # 500.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
