.class Lcom/adjust/sdk/ActivityHandler$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler$22;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler$22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$22$1;->a:Lcom/adjust/sdk/ActivityHandler$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$22$1;->a:Lcom/adjust/sdk/ActivityHandler$22;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityHandler$22;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustTimeoutCallback;->getOnAttributionReadListener()Lcom/adjust/sdk/OnAttributionReadListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnAttributionReadListener;->onAttributionRead(Lcom/adjust/sdk/AdjustAttribution;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$22$1;->a:Lcom/adjust/sdk/ActivityHandler$22;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityHandler$22;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/AdjustTimeoutCallback;->setOnAttributionReadListener(Lcom/adjust/sdk/OnAttributionReadListener;)V

    return-void
.end method
