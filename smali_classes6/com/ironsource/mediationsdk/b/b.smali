.class public final Lcom/ironsource/mediationsdk/b/b;
.super Lcom/ironsource/mediationsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/mediationsdk/b/a<",
        "Lcom/ironsource/mediationsdk/b/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/b/a;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/b/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/mediationsdk/b/b$a;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/b/b$a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/b/b$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/b/b;->b()V

    return-void
.end method
