.class Lcom/adjust/sdk/ActivityHandler$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler$21;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler$21;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$21$1;->a:Lcom/adjust/sdk/ActivityHandler$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$21$1;->a:Lcom/adjust/sdk/ActivityHandler$21;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityHandler$21;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustTimeoutCallback;->getOnAdidReadListener()Lcom/adjust/sdk/OnAdidReadListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnAdidReadListener;->onAdidRead(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$21$1;->a:Lcom/adjust/sdk/ActivityHandler$21;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityHandler$21;->a:Lcom/adjust/sdk/AdjustTimeoutCallback;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/AdjustTimeoutCallback;->setOnAdidReadListener(Lcom/adjust/sdk/OnAdidReadListener;)V

    return-void
.end method
