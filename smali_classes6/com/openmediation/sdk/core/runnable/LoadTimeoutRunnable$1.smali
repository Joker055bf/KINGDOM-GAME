.class Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$1;->this$0:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$1;->this$0:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    invoke-static {v0}, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;->access$000(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$1;->this$0:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;

    invoke-static {v0}, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;->access$000(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;->onLoadTimeout()V

    :cond_0
    return-void
.end method
