.class public Lcom/chartboost/sdk/impl/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/chartboost/sdk/impl/h4;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/io/File;

.field public f:J

.field public g:J

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h4;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c1;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/c1;->c:Lcom/chartboost/sdk/impl/h4;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/c1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p4, p0, Lcom/chartboost/sdk/impl/c1;->e:Ljava/io/File;

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/c1;->f:J

    .line 8
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/c1;->g:J

    .line 9
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/c1;->h:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/chartboost/sdk/impl/c1;->i:I

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/d1;
    .locals 2

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/chartboost/sdk/impl/d1;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/impl/f1;)Lcom/chartboost/sdk/impl/e1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/f1;",
            ")",
            "Lcom/chartboost/sdk/impl/e1<",
            "TT;>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/chartboost/sdk/impl/e1;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/CBError;Lcom/chartboost/sdk/impl/f1;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/f1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/chartboost/sdk/impl/f1;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method
