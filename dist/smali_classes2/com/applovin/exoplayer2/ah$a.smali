.class final Lcom/applovin/exoplayer2/ah$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/d/g;
.implements Lcom/applovin/exoplayer2/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/exoplayer2/ah;

.field private final b:Lcom/applovin/exoplayer2/ah$c;

.field private c:Lcom/applovin/exoplayer2/h/q$a;

.field private d:Lcom/applovin/exoplayer2/d/g$a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/ah$c;)V
    .locals 1

    .line 528
    iput-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->a:Lcom/applovin/exoplayer2/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-static {p1}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/ah;)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    .line 530
    invoke-static {p1}, Lcom/applovin/exoplayer2/ah;->b(Lcom/applovin/exoplayer2/ah;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    .line 531
    iput-object p2, p0, Lcom/applovin/exoplayer2/ah$a;->b:Lcom/applovin/exoplayer2/ah$c;

    return-void
.end method

.method private f(ILcom/applovin/exoplayer2/h/p$a;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->b:Lcom/applovin/exoplayer2/ah$c;

    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/ah$c;Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->b:Lcom/applovin/exoplayer2/ah$c;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/ah$c;I)I

    move-result p1

    .line 666
    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    iget v0, v0, Lcom/applovin/exoplayer2/h/q$a;->a:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/q$a;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 667
    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->a:Lcom/applovin/exoplayer2/ah;

    .line 669
    invoke-static {v0}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/ah;)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/applovin/exoplayer2/h/q$a;->a(ILcom/applovin/exoplayer2/h/p$a;J)Lcom/applovin/exoplayer2/h/q$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    iget v0, v0, Lcom/applovin/exoplayer2/d/g$a;->a:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/d/g$a;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 673
    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/applovin/exoplayer2/ah$a;->a:Lcom/applovin/exoplayer2/ah;

    .line 675
    invoke-static {v0}, Lcom/applovin/exoplayer2/ah;->b(Lcom/applovin/exoplayer2/ah;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/d/g$a;->a(ILcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/d/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(ILcom/applovin/exoplayer2/h/p$a;)V
    .locals 0

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->a()V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/exoplayer2/h/p$a;I)V
    .locals 0

    .line 609
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/d/g$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;)V
    .locals 0

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/h/q$a;->a(Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;Ljava/io/IOException;Z)V
    .locals 0

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/applovin/exoplayer2/h/q$a;->a(Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/h/m;)V
    .locals 0

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/h/q$a;->a(Lcom/applovin/exoplayer2/h/m;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/applovin/exoplayer2/h/p$a;Ljava/lang/Exception;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/d/g$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/applovin/exoplayer2/h/p$a;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->b()V

    :cond_0
    return-void
.end method

.method public b(ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;)V
    .locals 0

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/h/q$a;->b(Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;)V

    :cond_0
    return-void
.end method

.method public c(ILcom/applovin/exoplayer2/h/p$a;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 642
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->c()V

    :cond_0
    return-void
.end method

.method public c(ILcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->c:Lcom/applovin/exoplayer2/h/q$a;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/h/q$a;->c(Lcom/applovin/exoplayer2/h/j;Lcom/applovin/exoplayer2/h/m;)V

    :cond_0
    return-void
.end method

.method public d(ILcom/applovin/exoplayer2/h/p$a;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/ah$a;->f(ILcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/applovin/exoplayer2/ah$a;->d:Lcom/applovin/exoplayer2/d/g$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/d/g$a;->d()V

    :cond_0
    return-void
.end method
