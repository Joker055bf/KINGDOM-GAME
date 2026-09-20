.class public Lcom/openmediation/sdk/a/e;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field e:F

.field f:F

.field g:F

.field h:I

.field private i:I

.field j:F

.field k:F

.field l:Landroid/graphics/RectF;

.field m:Landroid/graphics/Paint;

.field n:F

.field o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/openmediation/sdk/a/e;->a:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->b:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->c:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->d:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/openmediation/sdk/a/e;->i:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Lcom/openmediation/sdk/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/openmediation/sdk/a/e;->n:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/openmediation/sdk/a/e;->h:I

    iput p2, p0, Lcom/openmediation/sdk/a/e;->o:I

    invoke-virtual {p0}, Lcom/openmediation/sdk/a/e;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/openmediation/sdk/a/e;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/openmediation/sdk/a/e;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/openmediation/sdk/a/e;->n:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iput v2, p0, Lcom/openmediation/sdk/a/e;->j:F

    iget v3, p0, Lcom/openmediation/sdk/a/e;->i:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/openmediation/sdk/a/e;->k:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v0, v3

    add-float v3, v2, v0

    iput v3, p0, Lcom/openmediation/sdk/a/e;->e:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/openmediation/sdk/a/e;->g:F

    iput v2, p0, Lcom/openmediation/sdk/a/e;->f:F

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/openmediation/sdk/a/e;->j:F

    iget v3, p0, Lcom/openmediation/sdk/a/e;->k:F

    sub-float v4, v2, v3

    add-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/openmediation/sdk/a/e;->l:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/openmediation/sdk/a/e;->l:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    const/high16 v2, 0x436b0000    # 235.0f

    const/high16 v3, -0x3c4c0000    # -360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/openmediation/sdk/a/e;->h:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->a:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->b:I

    iget v2, p0, Lcom/openmediation/sdk/a/e;->e:F

    iget v3, p0, Lcom/openmediation/sdk/a/e;->g:F

    int-to-float v0, v0

    sub-float v4, v2, v0

    add-float v5, v3, v0

    iget-object v6, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/openmediation/sdk/a/e;->h:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->c:I

    iput v0, p0, Lcom/openmediation/sdk/a/e;->d:I

    iget v2, p0, Lcom/openmediation/sdk/a/e;->f:F

    iget v3, p0, Lcom/openmediation/sdk/a/e;->g:F

    int-to-float v0, v0

    add-float v4, v2, v0

    add-float v5, v3, v0

    iget-object v6, p0, Lcom/openmediation/sdk/a/e;->m:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
