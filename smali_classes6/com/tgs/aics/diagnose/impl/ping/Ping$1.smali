.class Lcom/tgs/aics/diagnose/impl/ping/Ping$1;
.super Ljava/lang/Object;
.source "Ping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/diagnose/impl/ping/Ping;->doPing(Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;)Lcom/tgs/aics/diagnose/impl/ping/Ping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

.field final synthetic val$pingListener:Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;


# direct methods
.method constructor <init>(Lcom/tgs/aics/diagnose/impl/ping/Ping;Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    iput-object p2, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->val$pingListener:Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 170
    :try_start_0
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$000(Lcom/tgs/aics/diagnose/impl/ping/Ping;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$100(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->val$pingListener:Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Address is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;->onError(Ljava/lang/Exception;)V

    return-void

    .line 187
    :cond_0
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$202(Lcom/tgs/aics/diagnose/impl/ping/Ping;Z)Z

    .line 188
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$300(Lcom/tgs/aics/diagnose/impl/ping/Ping;)I

    move-result v0

    const-wide/16 v2, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    move v8, v4

    move v9, v8

    move v7, v5

    move-wide v5, v2

    :goto_0
    if-gtz v0, :cond_2

    .line 191
    iget-object v10, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v10}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$300(Lcom/tgs/aics/diagnose/impl/ping/Ping;)I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-wide v13, v2

    move-wide v15, v5

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v18, v9

    goto :goto_4

    .line 192
    :cond_2
    :goto_2
    iget-object v10, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v10}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$100(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Ljava/net/InetAddress;

    move-result-object v10

    iget-object v11, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v11}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$400(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tgs/aics/diagnose/impl/ping/PingTools;->doPing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object v10

    .line 194
    iget-object v11, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->val$pingListener:Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;

    if-eqz v11, :cond_3

    .line 195
    invoke-interface {v11, v10}, Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;->onResult(Lcom/tgs/aics/diagnose/impl/ping/PingResult;)V

    :cond_3
    const-wide/16 v11, 0x1

    add-long/2addr v2, v11

    .line 201
    invoke-virtual {v10}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->hasError()Z

    move-result v13

    if-eqz v13, :cond_4

    add-long/2addr v5, v11

    goto :goto_3

    .line 204
    :cond_4
    invoke-virtual {v10}, Lcom/tgs/aics/diagnose/impl/ping/PingResult;->getTimeTaken()F

    move-result v10

    add-float/2addr v7, v10

    cmpl-float v11, v8, v4

    if-eqz v11, :cond_5

    cmpl-float v11, v10, v8

    if-lez v11, :cond_6

    :cond_5
    move v8, v10

    :cond_6
    cmpl-float v11, v9, v4

    if-eqz v11, :cond_7

    cmpg-float v11, v10, v9

    if-gez v11, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    :goto_3
    add-int/lit8 v10, v0, -0x1

    .line 211
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$200(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 220
    :goto_4
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->val$pingListener:Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;

    if-eqz v0, :cond_9

    .line 221
    new-instance v2, Lcom/tgs/aics/diagnose/impl/ping/PingStats;

    iget-object v3, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v3}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$100(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Ljava/net/InetAddress;

    move-result-object v12

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lcom/tgs/aics/diagnose/impl/ping/PingStats;-><init>(Ljava/net/InetAddress;JJFFF)V

    invoke-interface {v0, v2}, Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;->onFinished(Lcom/tgs/aics/diagnose/impl/ping/PingStats;)V

    :cond_9
    return-void

    .line 214
    :cond_a
    :try_start_1
    iget-object v0, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->this$0:Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-static {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->access$500(Lcom/tgs/aics/diagnose/impl/ping/Ping;)I

    move-result v0

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5
    move v0, v10

    goto :goto_0

    :catch_1
    move-exception v0

    .line 172
    iget-object v2, v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;->val$pingListener:Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;

    invoke-interface {v2, v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;->onError(Ljava/lang/Exception;)V

    return-void
.end method
