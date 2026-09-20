.class public abstract Lcom/applovin/exoplayer2/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/p;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/exoplayer2/h/p$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/applovin/exoplayer2/h/p$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/applovin/exoplayer2/h/q$a;

.field private final d:Lcom/applovin/exoplayer2/d/g$a;

.field private e:Landroid/os/Looper;

.field private f:Lcom/applovin/exoplayer2/ba;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/a;->a:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    .line 48
    new-instance v0, Lcom/applovin/exoplayer2/h/q$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/h/q$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/a;->c:Lcom/applovin/exoplayer2/h/q$a;

    .line 49
    new-instance v0, Lcom/applovin/exoplayer2/d/g$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/g$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/a;->d:Lcom/applovin/exoplayer2/d/g$a;

    return-void
.end method


# virtual methods
.method protected final a(ILcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/d/g$a;->a(ILcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object p1

    return-object p1
.end method

.method protected final a(ILcom/applovin/exoplayer2/h/p$a;J)Lcom/applovin/exoplayer2/h/q$a;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/h/q$a;->a(ILcom/applovin/exoplayer2/h/p$a;J)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/q$a;
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->c:Lcom/applovin/exoplayer2/h/q$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/applovin/exoplayer2/h/q$a;->a(ILcom/applovin/exoplayer2/h/p$a;J)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/applovin/exoplayer2/d/g;)V
    .locals 1

    .line 177
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/d/g$a;->a(Landroid/os/Handler;Lcom/applovin/exoplayer2/d/g;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/applovin/exoplayer2/h/q;)V
    .locals 1

    .line 165
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/h/q$a;->a(Landroid/os/Handler;Lcom/applovin/exoplayer2/h/q;)V

    return-void
.end method

.method protected final a(Lcom/applovin/exoplayer2/ba;)V
    .locals 2

    .line 82
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/a;->f:Lcom/applovin/exoplayer2/ba;

    .line 83
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/p$b;

    .line 84
    invoke-interface {v1, p0, p1}, Lcom/applovin/exoplayer2/h/p$b;->onSourceInfoRefreshed(Lcom/applovin/exoplayer2/h/p;Lcom/applovin/exoplayer2/ba;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/d/g;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/d/g$a;->a(Lcom/applovin/exoplayer2/d/g;)V

    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/h/p$b;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->e:Landroid/os/Looper;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/a;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/h/p$b;Lcom/applovin/exoplayer2/k/aa;)V
    .locals 3

    .line 190
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a;->e:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->a(Z)V

    .line 192
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a;->f:Lcom/applovin/exoplayer2/ba;

    .line 193
    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a;->e:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 195
    iput-object v0, p0, Lcom/applovin/exoplayer2/h/a;->e:Landroid/os/Looper;

    .line 196
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/h/a;->a(Lcom/applovin/exoplayer2/k/aa;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/a;->a(Lcom/applovin/exoplayer2/h/p$b;)V

    .line 200
    invoke-interface {p1, p0, v1}, Lcom/applovin/exoplayer2/h/p$b;->onSourceInfoRefreshed(Lcom/applovin/exoplayer2/h/p;Lcom/applovin/exoplayer2/ba;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/h/q;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/q$a;->a(Lcom/applovin/exoplayer2/h/q;)V

    return-void
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/k/aa;)V
.end method

.method protected final b(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->d:Lcom/applovin/exoplayer2/d/g$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/d/g$a;->a(ILcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object p1

    return-object p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/applovin/exoplayer2/h/p$b;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 218
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/a;->b()V

    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method public final c(Lcom/applovin/exoplayer2/h/p$b;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/a;->e:Landroid/os/Looper;

    .line 228
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/a;->f:Lcom/applovin/exoplayer2/ba;

    .line 229
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 230
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/a;->c()V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/a;->b(Lcom/applovin/exoplayer2/h/p$b;)V

    :goto_0
    return-void
.end method

.method protected final d()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
