.class Lcom/adjust/sdk/AdjustInstance$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->getAttributionWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAttributionReadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/adjust/sdk/OnAttributionReadListener;

.field public final synthetic c:J

.field public final synthetic d:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Lcom/adjust/sdk/OnAttributionReadListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$9;->d:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustInstance$9;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/adjust/sdk/AdjustInstance$9;->b:Lcom/adjust/sdk/OnAttributionReadListener;

    iput-wide p4, p0, Lcom/adjust/sdk/AdjustInstance$9;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$9;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAttributionFromAttributionFile(Landroid/content/Context;)Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance$9;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/adjust/sdk/AdjustInstance$9$1;

    invoke-direct {v2, p0, v0}, Lcom/adjust/sdk/AdjustInstance$9$1;-><init>(Lcom/adjust/sdk/AdjustInstance$9;Lcom/adjust/sdk/AdjustAttribution;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance$9;->c:J

    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance$9;->b:Lcom/adjust/sdk/OnAttributionReadListener;

    iget-object v3, p0, Lcom/adjust/sdk/AdjustInstance$9;->d:Lcom/adjust/sdk/AdjustInstance;

    invoke-static {v3}, Lcom/adjust/sdk/AdjustInstance;->access$100(Lcom/adjust/sdk/AdjustInstance;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/adjust/sdk/AdjustInstance$9;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adjust/sdk/ActivityHandler;->queueGetAttributionWithTimeout(JLcom/adjust/sdk/OnAttributionReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method
