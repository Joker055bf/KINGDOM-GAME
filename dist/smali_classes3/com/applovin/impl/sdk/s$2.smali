.class Lcom/applovin/impl/sdk/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/e/f$a;


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

    .line 383
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$2;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/utils/d$a;)V
    .locals 1

    .line 387
    invoke-static {}, Lcom/applovin/impl/sdk/s;->E()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
