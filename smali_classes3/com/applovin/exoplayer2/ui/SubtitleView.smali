.class public final Lcom/applovin/exoplayer2/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/an$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ui/SubtitleView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/applovin/exoplayer2/ui/c;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/applovin/exoplayer2/ui/SubtitleView$a;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    .line 136
    sget-object p2, Lcom/applovin/exoplayer2/ui/c;->a:Lcom/applovin/exoplayer2/ui/c;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->b:Lcom/applovin/exoplayer2/ui/c;

    const/4 p2, 0x0

    .line 137
    iput p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->c:I

    const p2, 0x3d5a511a

    .line 138
    iput p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->d:F

    const p2, 0x3da3d70a

    .line 139
    iput p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->e:F

    const/4 p2, 0x1

    .line 140
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->f:Z

    .line 141
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->g:Z

    .line 143
    new-instance v0, Lcom/applovin/exoplayer2/ui/b;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/ui/b;-><init>(Landroid/content/Context;)V

    .line 144
    iput-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->i:Lcom/applovin/exoplayer2/ui/SubtitleView$a;

    .line 145
    iput-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    .line 146
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->addView(Landroid/view/View;)V

    .line 147
    iput p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->h:I

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/i/a;)Lcom/applovin/exoplayer2/i/a;
    .locals 1

    .line 379
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a;->a()Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    .line 380
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->f:Z

    if-nez v0, :cond_0

    .line 381
    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/j;->a(Lcom/applovin/exoplayer2/i/a$a;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->g:Z

    if-nez v0, :cond_1

    .line 383
    invoke-static {p1}, Lcom/applovin/exoplayer2/ui/j;->b(Lcom/applovin/exoplayer2/i/a$a;)V

    .line 385
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a$a;->e()Lcom/applovin/exoplayer2/i/a;

    move-result-object p1

    return-object p1
.end method

.method private a(IF)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->c:I

    .line 262
    iput p2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->d:F

    .line 263
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->i:Lcom/applovin/exoplayer2/ui/SubtitleView$a;

    .line 348
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->b:Lcom/applovin/exoplayer2/ui/c;

    iget v3, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->d:F

    iget v4, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->c:I

    iget v5, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->e:F

    .line 347
    invoke-interface/range {v0 .. v5}, Lcom/applovin/exoplayer2/ui/SubtitleView$a;->a(Ljava/util/List;Lcom/applovin/exoplayer2/ui/c;FIF)V

    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    .line 368
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->g:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    return-object v0

    .line 371
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 372
    :goto_0
    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/i/a;

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/ui/SubtitleView;->a(Lcom/applovin/exoplayer2/i/a;)Lcom/applovin/exoplayer2/i/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    .line 323
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method private getUserCaptionStyle()Lcom/applovin/exoplayer2/ui/c;
    .locals 2

    .line 335
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/c;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/applovin/exoplayer2/ui/c;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    sget-object v0, Lcom/applovin/exoplayer2/ui/c;->a:Lcom/applovin/exoplayer2/ui/c;

    :goto_0
    return-object v0

    .line 336
    :cond_2
    :goto_1
    sget-object v0, Lcom/applovin/exoplayer2/ui/c;->a:Lcom/applovin/exoplayer2/ui/c;

    return-object v0
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/applovin/exoplayer2/ui/SubtitleView$a;",
            ">(TT;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->removeView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    instance-of v1, v0, Lcom/applovin/exoplayer2/ui/l;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Lcom/applovin/exoplayer2/ui/l;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/l;->a()V

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    .line 196
    move-object v0, p1

    check-cast v0, Lcom/applovin/exoplayer2/ui/SubtitleView$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->i:Lcom/applovin/exoplayer2/ui/SubtitleView$a;

    .line 197
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0

    .line 253
    invoke-direct {p0, p2, p1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->a(IF)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 2

    const v0, 0x3d5a511a

    .line 228
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getUserCaptionStyle()Lcom/applovin/exoplayer2/ui/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setStyle(Lcom/applovin/exoplayer2/ui/c;)V

    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->g:Z

    .line 285
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->e()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->f:Z

    .line 274
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->e()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->e:F

    .line 319
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->e()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    .line 162
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->e()V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->a(FZ)V

    return-void
.end method

.method public setStyle(Lcom/applovin/exoplayer2/ui/c;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->b:Lcom/applovin/exoplayer2/ui/c;

    .line 305
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->e()V

    return-void
.end method

.method public setViewType(I)V
    .locals 2

    .line 174
    iget v0, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 182
    new-instance v0, Lcom/applovin/exoplayer2/ui/l;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/ui/l;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 179
    :cond_2
    new-instance v0, Lcom/applovin/exoplayer2/ui/b;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/ui/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 187
    :goto_0
    iput p1, p0, Lcom/applovin/exoplayer2/ui/SubtitleView;->h:I

    return-void
.end method
