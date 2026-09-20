.class Lcom/applovin/impl/sdk/q$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/q;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/q;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/q;)V
    .locals 0

    .line 1533
    iput-object p1, p0, Lcom/applovin/impl/sdk/q$4;->a:Lcom/applovin/impl/sdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1537
    iget-object v0, p0, Lcom/applovin/impl/sdk/q$4;->a:Lcom/applovin/impl/sdk/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q;->b(Lcom/applovin/impl/sdk/q;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/q$4;->a:Lcom/applovin/impl/sdk/q;

    invoke-static {v1}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/q;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
