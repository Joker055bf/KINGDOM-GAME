.class Lcom/adjust/sdk/AdjustInstance$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->getAdidWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAdidReadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/adjust/sdk/OnAdidReadListener;

.field public final synthetic c:J

.field public final synthetic d:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Lcom/adjust/sdk/OnAdidReadListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$8;->d:Lcom/adjust/sdk/AdjustInstance;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustInstance$8;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/adjust/sdk/AdjustInstance$8;->b:Lcom/adjust/sdk/OnAdidReadListener;

    iput-wide p4, p0, Lcom/adjust/sdk/AdjustInstance$8;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$8;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAdidFromActivityStateFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance$8;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/adjust/sdk/AdjustInstance$8$1;

    invoke-direct {v2, p0, v0}, Lcom/adjust/sdk/AdjustInstance$8$1;-><init>(Lcom/adjust/sdk/AdjustInstance$8;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance$8;->c:J

    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance$8;->b:Lcom/adjust/sdk/OnAdidReadListener;

    iget-object v3, p0, Lcom/adjust/sdk/AdjustInstance$8;->d:Lcom/adjust/sdk/AdjustInstance;

    invoke-static {v3}, Lcom/adjust/sdk/AdjustInstance;->access$000(Lcom/adjust/sdk/AdjustInstance;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/adjust/sdk/AdjustInstance$8;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adjust/sdk/ActivityHandler;->queueGetAdidWithTimeout(JLcom/adjust/sdk/OnAdidReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method
