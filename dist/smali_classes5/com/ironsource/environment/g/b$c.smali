.class public final Lcom/ironsource/environment/g/b$c;
.super Lcom/ironsource/environment/g/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ironsource/environment/g/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ironsource/environment/g/b;-><init>(B)V

    iput-object p1, p0, Lcom/ironsource/environment/g/b$c;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/ironsource/environment/g/b$c;->b:Ljava/lang/Exception;

    return-void
.end method
