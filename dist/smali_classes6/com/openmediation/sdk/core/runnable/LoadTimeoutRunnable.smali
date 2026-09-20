.class public Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;->mListener:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$1;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$1;-><init>(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTimeoutListener(Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable;->mListener:Lcom/openmediation/sdk/core/runnable/LoadTimeoutRunnable$OnLoadTimeoutListener;

    return-void
.end method
