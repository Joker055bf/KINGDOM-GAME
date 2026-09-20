.class Lcom/adjust/sdk/AdjustInstance$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/AdjustAttribution;

.field public final synthetic b:Lcom/adjust/sdk/AdjustInstance$9;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance$9;Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$9$1;->b:Lcom/adjust/sdk/AdjustInstance$9;

    iput-object p2, p0, Lcom/adjust/sdk/AdjustInstance$9$1;->a:Lcom/adjust/sdk/AdjustAttribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$9$1;->b:Lcom/adjust/sdk/AdjustInstance$9;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$9;->b:Lcom/adjust/sdk/OnAttributionReadListener;

    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance$9$1;->a:Lcom/adjust/sdk/AdjustAttribution;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnAttributionReadListener;->onAttributionRead(Lcom/adjust/sdk/AdjustAttribution;)V

    return-void
.end method
