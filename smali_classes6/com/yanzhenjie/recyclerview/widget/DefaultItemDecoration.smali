.class public Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DefaultItemDecoration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 51
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 52
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    .line 53
    new-instance v0, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;

    invoke-direct {v0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;-><init>(III)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 4

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 273
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 274
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 275
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p3

    const/4 p5, 0x1

    if-ne p4, p5, :cond_3

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 281
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 283
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 285
    :cond_2
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 286
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 290
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 291
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 293
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 294
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_5
    if-eqz p3, :cond_6

    if-eqz v1, :cond_6

    .line 296
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 297
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    if-eqz v2, :cond_7

    .line 299
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 300
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 302
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 303
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 304
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    .line 306
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 307
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 308
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    .line 310
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 311
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 312
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_b

    .line 314
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 315
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 316
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 318
    :cond_b
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 319
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 320
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 321
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 4

    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 328
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 329
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 330
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p3

    if-ne p4, v0, :cond_3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 336
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 338
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 340
    :cond_2
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 341
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 345
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 346
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    .line 348
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 349
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 351
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 352
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 354
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 355
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    .line 357
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 358
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 359
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 361
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 362
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 363
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    .line 365
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 366
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 367
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_b

    .line 369
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 370
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 371
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 373
    :cond_b
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 374
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 375
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 376
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {p3, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private getOrientation(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 1

    .line 155
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    return p1

    .line 157
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 158
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private getSpanCount(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 1

    .line 164
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 166
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isFirstColumn(IIII)Z
    .locals 1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-ne p3, v0, :cond_0

    return v0

    .line 207
    :cond_0
    rem-int/2addr p2, p3

    if-nez p2, :cond_1

    move p4, v0

    :cond_1
    return p4

    :cond_2
    if-ge p2, p3, :cond_3

    move p4, v0

    :cond_3
    return p4
.end method

.method private isFirstRaw(IIII)Z
    .locals 1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ge p2, p3, :cond_0

    move p4, v0

    :cond_0
    return p4

    :cond_1
    if-ne p3, v0, :cond_2

    return v0

    .line 177
    :cond_2
    rem-int/2addr p2, p3

    if-nez p2, :cond_3

    move p4, v0

    :cond_3
    return p4
.end method

.method private isLastColumn(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-ne p3, v1, :cond_0

    return v1

    :cond_0
    add-int/2addr p2, v1

    .line 216
    rem-int/2addr p2, p3

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-ne p3, v1, :cond_4

    add-int/2addr p2, v1

    if-ne p2, p4, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 221
    :cond_4
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    .line 222
    div-int/2addr p4, p3

    if-lez p1, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    add-int/2addr p4, p1

    add-int/2addr p2, v1

    .line 224
    rem-int p1, p2, p3

    if-nez p1, :cond_7

    .line 226
    div-int/2addr p2, p3

    if-ne p4, p2, :cond_6

    move v0, v1

    :cond_6
    return v0

    :cond_7
    sub-int/2addr p2, p1

    .line 229
    div-int/2addr p2, p3

    add-int/2addr p2, v1

    if-ne p4, p2, :cond_8

    move v0, v1

    :cond_8
    return v0
.end method

.method private isLastRaw(IIII)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    if-ne p3, v1, :cond_1

    add-int/2addr p2, v1

    if-ne p2, p4, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 186
    :cond_1
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    .line 187
    div-int/2addr p4, p3

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    add-int/2addr p4, p1

    add-int/2addr p2, v1

    .line 189
    rem-int p1, p2, p3

    if-nez p1, :cond_4

    .line 191
    div-int/2addr p2, p3

    if-ne p4, p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    sub-int/2addr p2, p1

    .line 194
    div-int/2addr p2, p3

    add-int/2addr p2, v1

    if-ne p4, p2, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    if-ne p3, v1, :cond_7

    return v1

    :cond_7
    add-int/2addr p2, v1

    .line 200
    rem-int/2addr p2, p3

    if-nez p2, :cond_8

    move v0, v1

    :cond_8
    return v0
.end method

.method private offsetHorizontal(Landroid/graphics/Rect;III)V
    .locals 4

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 78
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 79
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 80
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p2

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 86
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 88
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 90
    :cond_2
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 94
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 96
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, v0, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 98
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    if-eqz v2, :cond_7

    .line 100
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 102
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, v0, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    .line 104
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    .line 106
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_b

    .line 108
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 110
    :cond_b
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private offsetVertical(Landroid/graphics/Rect;III)V
    .locals 4

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstRaw(IIII)Z

    move-result v1

    .line 117
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastRaw(IIII)Z

    move-result v2

    .line 118
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isFirstColumn(IIII)Z

    move-result v3

    .line 119
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->isLastColumn(IIII)Z

    move-result p2

    const/4 p4, 0x0

    if-ne p3, v0, :cond_3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 125
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 127
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p2, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 129
    :cond_2
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p2, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 133
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 135
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 137
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p4, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 139
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    .line 141
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 143
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    .line 145
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    invoke-virtual {p1, p4, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 147
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 149
    :cond_b
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 59
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    .line 60
    instance-of v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getOrientation(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    .line 62
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 63
    invoke-direct {p0, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p3

    .line 64
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->offsetVertical(Landroid/graphics/Rect;III)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->offsetHorizontal(Landroid/graphics/Rect;III)V

    goto :goto_0

    .line 71
    :cond_1
    instance-of p2, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_2

    .line 72
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 238
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 240
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getOrientation(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    .line 241
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v7

    .line 242
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    .line 244
    instance-of v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_1

    .line 247
    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 249
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v5, v7

    move v6, v8

    .line 252
    invoke-direct/range {v1 .. v6}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/view/View;III)V

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v5, v7

    move v6, v8

    .line 254
    invoke-direct/range {v1 .. v6}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/view/View;III)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 258
    :cond_2
    instance-of p2, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_4

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_2
    if-ge v2, v8, :cond_3

    .line 261
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 262
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 263
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 264
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 265
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v0, p2, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_3
    return-void
.end method
