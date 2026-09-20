.class final Lcom/applovin/exoplayer2/ui/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/applovin/exoplayer2/an$d;
.implements Lcom/applovin/exoplayer2/ui/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/exoplayer2/ui/g;

.field private final b:Lcom/applovin/exoplayer2/ba$a;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ui/g;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    new-instance p1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->b:Lcom/applovin/exoplayer2/ba$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1503
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->c(Lcom/applovin/exoplayer2/ui/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1587
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->l(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an$e;Lcom/applovin/exoplayer2/an$e;I)V
    .locals 0

    .line 1555
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->h(Lcom/applovin/exoplayer2/ui/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->i(Lcom/applovin/exoplayer2/ui/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1556
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ui/g;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/h;)V
    .locals 3

    .line 1513
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->d(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/an;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/an;

    .line 1514
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->S()Lcom/applovin/exoplayer2/ba;

    move-result-object p2

    .line 1515
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1516
    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/g$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 1517
    :cond_0
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->P()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/ad;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1519
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->F()I

    move-result p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->b:Lcom/applovin/exoplayer2/ba$a;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1521
    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1523
    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/g$a;->b:Lcom/applovin/exoplayer2/ba$a;

    .line 1524
    invoke-virtual {p2, v0, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 1525
    invoke-interface {p1}, Lcom/applovin/exoplayer2/an;->G()I

    move-result p1

    if-ne p1, p2, :cond_2

    return-void

    .line 1530
    :cond_2
    iput-object v1, p0, Lcom/applovin/exoplayer2/ui/g$a;->c:Ljava/lang/Object;

    .line 1533
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;Z)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/m/o;)V
    .locals 0

    .line 1498
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->b(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/g;->a(Lcom/applovin/exoplayer2/ui/g;)Lcom/applovin/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1538
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->e(Lcom/applovin/exoplayer2/ui/g;)V

    .line 1539
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->f(Lcom/applovin/exoplayer2/ui/g;)V

    .line 1540
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->g(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public b(ZI)V
    .locals 0

    .line 1546
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->e(Lcom/applovin/exoplayer2/ui/g;)V

    .line 1547
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->g(Lcom/applovin/exoplayer2/ui/g;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1580
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/g;->k(Lcom/applovin/exoplayer2/ui/g;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1573
    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/g$a;->a:Lcom/applovin/exoplayer2/ui/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/ui/g;->j(Lcom/applovin/exoplayer2/ui/g;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ui/g;->a(Landroid/view/TextureView;I)V

    return-void
.end method
