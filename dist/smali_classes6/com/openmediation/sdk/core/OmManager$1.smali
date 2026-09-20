.class Lcom/openmediation/sdk/core/OmManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/OmManager;->startReInitTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/OmManager;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/OmManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    iput-boolean p2, p0, Lcom/openmediation/sdk/core/OmManager$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/OmManager;->registerNetworkReceiver()V

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Stop Re Init SDK: Network Unknown"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/openmediation/sdk/core/OmManager$1;->val$force:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    invoke-static {v0}, Lcom/openmediation/sdk/core/InitImp;->startReInitSDK(Lcom/openmediation/sdk/InitCallback;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init Error Execute Re Init SDK Delay : 3 seconds, retry count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    invoke-static {v1}, Lcom/openmediation/sdk/core/OmManager;->access$200(Lcom/openmediation/sdk/core/OmManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    invoke-static {v0}, Lcom/openmediation/sdk/core/OmManager;->access$300(Lcom/openmediation/sdk/core/OmManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    invoke-static {v0}, Lcom/openmediation/sdk/core/OmManager;->access$200(Lcom/openmediation/sdk/core/OmManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/openmediation/sdk/core/OmManager$1;->this$0:Lcom/openmediation/sdk/core/OmManager;

    invoke-static {v0}, Lcom/openmediation/sdk/core/InitImp;->startReInitSDK(Lcom/openmediation/sdk/InitCallback;)V

    return-void
.end method
