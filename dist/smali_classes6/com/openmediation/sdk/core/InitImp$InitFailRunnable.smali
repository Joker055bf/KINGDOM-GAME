.class Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/InitImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitFailRunnable"
.end annotation


# instance fields
.field private mCallback:Lcom/openmediation/sdk/InitCallback;

.field private mError:Lcom/openmediation/sdk/utils/error/Error;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/InitCallback;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mError:Lcom/openmediation/sdk/utils/error/Error;

    iput-object p1, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Om init error  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mError:Lcom/openmediation/sdk/utils/error/Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mError:Lcom/openmediation/sdk/utils/error/Error;

    const/16 v2, 0x6b

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mError:Lcom/openmediation/sdk/utils/error/Error;

    const/16 v2, 0x68

    :goto_0
    invoke-static {v2, v0}, Lcom/openmediation/sdk/core/InitImp;->access$400(ILcom/openmediation/sdk/utils/error/Error;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mCallback:Lcom/openmediation/sdk/InitCallback;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mError:Lcom/openmediation/sdk/utils/error/Error;

    invoke-interface {v0, v2}, Lcom/openmediation/sdk/InitCallback;->onError(Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setEventTag(I)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v0

    iget-object v2, p0, Lcom/openmediation/sdk/core/InitImp$InitFailRunnable;->mError:Lcom/openmediation/sdk/utils/error/Error;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/logs/BaseLog;->setDetail(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/inspector/InspectorManager;->getInstance()Lcom/openmediation/sdk/inspector/InspectorManager;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$500()Lcom/openmediation/sdk/inspector/logs/InitLog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/openmediation/sdk/inspector/InspectorManager;->addInitLog(Lcom/openmediation/sdk/inspector/logs/InitLog;)V

    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/openmediation/sdk/core/InitImp;->access$600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
