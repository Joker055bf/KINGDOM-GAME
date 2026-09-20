.class Lcom/applovin/impl/sdk/s$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/s;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$3;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    invoke-static {}, Lcom/applovin/impl/sdk/s;->G()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/s$3;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v1}, Lcom/applovin/impl/sdk/s;->a(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$c;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
