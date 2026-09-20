.class Lcom/openmediation/sdk/core/InitImp$InitSuccessRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/InitImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitSuccessRunnable"
.end annotation


# instance fields
.field private mCallback:Lcom/openmediation/sdk/InitCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/InitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$InitSuccessRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Om init Success "

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitSuccessRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/openmediation/sdk/InitCallback;->onSuccess()V

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6a

    goto :goto_0

    :cond_1
    const/16 v0, 0x65

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/openmediation/sdk/core/InitImp;->access$400(ILcom/openmediation/sdk/utils/error/Error;)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v0

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInitLog(Lcom/openmediation/sdk/inspector/logs/InitLog;)V

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
