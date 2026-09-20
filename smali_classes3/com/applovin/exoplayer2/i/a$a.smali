.class public final Lcom/applovin/exoplayer2/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/text/Layout$Alignment;

.field private d:Landroid/text/Layout$Alignment;

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->a:Ljava/lang/CharSequence;

    .line 561
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->b:Landroid/graphics/Bitmap;

    .line 562
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->c:Landroid/text/Layout$Alignment;

    .line 563
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->d:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 564
    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->e:F

    const/high16 v1, -0x80000000

    .line 565
    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->f:I

    .line 566
    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->g:I

    .line 567
    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->h:F

    .line 568
    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->i:I

    .line 569
    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->j:I

    .line 570
    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->k:F

    .line 571
    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->l:F

    .line 572
    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->m:F

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a$a;->n:Z

    const/high16 v0, -0x1000000

    .line 574
    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->o:I

    .line 575
    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->p:I

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/i/a;)V
    .locals 1

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->a:Ljava/lang/CharSequence;

    .line 580
    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->b:Landroid/graphics/Bitmap;

    .line 581
    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->c:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->c:Landroid/text/Layout$Alignment;

    .line 582
    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->d:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->d:Landroid/text/Layout$Alignment;

    .line 583
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->f:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->e:F

    .line 584
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->g:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->f:I

    .line 585
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->h:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->g:I

    .line 586
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->i:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->h:F

    .line 587
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->j:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->i:I

    .line 588
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->o:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->j:I

    .line 589
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->p:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->k:F

    .line 590
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->k:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->l:F

    .line 591
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->l:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->m:F

    .line 592
    iget-boolean v0, p1, Lcom/applovin/exoplayer2/i/a;->m:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a$a;->n:Z

    .line 593
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->n:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->o:I

    .line 594
    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->q:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->p:I

    .line 595
    iget p1, p1, Lcom/applovin/exoplayer2/i/a;->r:F

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->q:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/i/a;Lcom/applovin/exoplayer2/i/a$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/a$a;-><init>(Lcom/applovin/exoplayer2/i/a;)V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 734
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->h:F

    return-object p0
.end method

.method public a(FI)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 682
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->e:F

    .line 683
    iput p2, p0, Lcom/applovin/exoplayer2/i/a$a;->f:I

    return-object p0
.end method

.method public a(I)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 713
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->g:I

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->c:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 724
    iget v0, p0, Lcom/applovin/exoplayer2/i/a$a;->g:I

    return v0
.end method

.method public b(F)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 806
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->l:F

    return-object p0
.end method

.method public b(FI)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 775
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->k:F

    .line 776
    iput p2, p0, Lcom/applovin/exoplayer2/i/a$a;->j:I

    return-object p0
.end method

.method public b(I)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 754
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->i:I

    return-object p0
.end method

.method public b(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->d:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public c()I
    .locals 1

    .line 765
    iget v0, p0, Lcom/applovin/exoplayer2/i/a$a;->i:I

    return v0
.end method

.method public c(F)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 826
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->m:F

    return-object p0
.end method

.method public c(I)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 848
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->o:I

    const/4 p1, 0x1

    .line 849
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/a$a;->n:Z

    return-object p0
.end method

.method public d()Lcom/applovin/exoplayer2/i/a$a;
    .locals 1

    const/4 v0, 0x0

    .line 855
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a$a;->n:Z

    return-object p0
.end method

.method public d(F)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 890
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->q:F

    return-object p0
.end method

.method public d(I)Lcom/applovin/exoplayer2/i/a$a;
    .locals 0

    .line 884
    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->p:I

    return-object p0
.end method

.method public e()Lcom/applovin/exoplayer2/i/a;
    .locals 22

    move-object/from16 v0, p0

    .line 906
    new-instance v20, Lcom/applovin/exoplayer2/i/a;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/applovin/exoplayer2/i/a$a;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/applovin/exoplayer2/i/a$a;->c:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/applovin/exoplayer2/i/a$a;->d:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a$a;->b:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/applovin/exoplayer2/i/a$a;->e:F

    iget v7, v0, Lcom/applovin/exoplayer2/i/a$a;->f:I

    iget v8, v0, Lcom/applovin/exoplayer2/i/a$a;->g:I

    iget v9, v0, Lcom/applovin/exoplayer2/i/a$a;->h:F

    iget v10, v0, Lcom/applovin/exoplayer2/i/a$a;->i:I

    iget v11, v0, Lcom/applovin/exoplayer2/i/a$a;->j:I

    iget v12, v0, Lcom/applovin/exoplayer2/i/a$a;->k:F

    iget v13, v0, Lcom/applovin/exoplayer2/i/a$a;->l:F

    iget v14, v0, Lcom/applovin/exoplayer2/i/a$a;->m:F

    iget-boolean v15, v0, Lcom/applovin/exoplayer2/i/a$a;->n:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/applovin/exoplayer2/i/a$a;->o:I

    move/from16 v16, v1

    iget v1, v0, Lcom/applovin/exoplayer2/i/a$a;->p:I

    move/from16 v17, v1

    iget v1, v0, Lcom/applovin/exoplayer2/i/a$a;->q:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/applovin/exoplayer2/i/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/applovin/exoplayer2/i/a$1;)V

    return-object v20
.end method
