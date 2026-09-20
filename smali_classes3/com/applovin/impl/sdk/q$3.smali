.class Lcom/applovin/impl/sdk/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/e/f$a;


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

    .line 1523
    iput-object p1, p0, Lcom/applovin/impl/sdk/q$3;->a:Lcom/applovin/impl/sdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/utils/d$a;)V
    .locals 1

    .line 1527
    invoke-static {}, Lcom/applovin/impl/sdk/q;->n()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
