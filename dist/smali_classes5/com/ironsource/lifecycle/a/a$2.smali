.class final Lcom/ironsource/lifecycle/a/a$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/lifecycle/a/a;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/lifecycle/a/a;


# direct methods
.method constructor <init>(Lcom/ironsource/lifecycle/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/lifecycle/a/a$2;->a:Lcom/ironsource/lifecycle/a/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/lifecycle/a/a$2;->a:Lcom/ironsource/lifecycle/a/a;

    invoke-static {v0}, Lcom/ironsource/lifecycle/a/a;->c(Lcom/ironsource/lifecycle/a/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
