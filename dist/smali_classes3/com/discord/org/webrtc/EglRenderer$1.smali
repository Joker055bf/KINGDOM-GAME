.class Lcom/discord/org/webrtc/EglRenderer$1;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/EglRenderer;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/EglRenderer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$1;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$1;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fgetthreadLock(Lcom/discord/org/webrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$1;->this$0:Lcom/discord/org/webrtc/EglRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/EglRenderer;->-$$Nest$fputeglThread(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/EglThread;)V

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
