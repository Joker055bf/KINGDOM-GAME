.class public final Lcom/applovin/exoplayer2/k/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/k/i;


# instance fields
.field private final a:Lcom/applovin/exoplayer2/k/i;

.field private b:J

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/i;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/k/i;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    .line 46
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/z;->c:Landroid/net/Uri;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/z;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/k/i;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 94
    iget-wide p2, p0, Lcom/applovin/exoplayer2/k/z;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/applovin/exoplayer2/k/z;->b:J

    :cond_0
    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/k/l;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/z;->c:Landroid/net/Uri;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/z;->d:Ljava/util/Map;

    .line 84
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/k/i;->a(Lcom/applovin/exoplayer2/k/l;)J

    move-result-wide v0

    .line 85
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/z;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/z;->c:Landroid/net/Uri;

    .line 86
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/z;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/z;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/exoplayer2/k/aa;)V
    .locals 1

    .line 75
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/k/i;->a(Lcom/applovin/exoplayer2/k/aa;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->a:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->c()V

    return-void
.end method

.method public d()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/applovin/exoplayer2/k/z;->b:J

    return-wide v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/z;->d:Ljava/util/Map;

    return-object v0
.end method
