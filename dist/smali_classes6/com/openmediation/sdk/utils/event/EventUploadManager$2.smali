.class Lcom/openmediation/sdk/utils/event/EventUploadManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEventDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/event/EventUploadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$600(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$600(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$600(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/event/Event;

    iget-object v2, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$400(Lcom/openmediation/sdk/utils/event/EventUploadManager;Lcom/openmediation/sdk/utils/event/Event;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/event/EventUploadManager$2;->this$0:Lcom/openmediation/sdk/utils/event/EventUploadManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->access$600(Lcom/openmediation/sdk/utils/event/EventUploadManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_1
    return-void
.end method
