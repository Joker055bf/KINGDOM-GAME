.class Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;
.super Ljava/lang/Object;
.source "MobGamePagerTabStrip.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/MobGamePagerTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;


# direct methods
.method private constructor <init>(Lcom/mobgame/gui/MobGamePagerTabStrip;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobgame/gui/MobGamePagerTabStrip;Lcom/mobgame/gui/MobGamePagerTabStrip$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;-><init>(Lcom/mobgame/gui/MobGamePagerTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$200(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$300(Lcom/mobgame/gui/MobGamePagerTabStrip;II)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$102(Lcom/mobgame/gui/MobGamePagerTabStrip;I)I

    .line 330
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0, p2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$402(Lcom/mobgame/gui/MobGamePagerTabStrip;F)F

    .line 332
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$500(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$300(Lcom/mobgame/gui/MobGamePagerTabStrip;II)V

    .line 334
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->invalidate()V

    .line 336
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    const/4 v0, 0x0

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$700(Lcom/mobgame/gui/MobGamePagerTabStrip;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$500(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 358
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 360
    check-cast v1, Landroid/widget/TextView;

    .line 361
    iget-object v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$200(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$800(Lcom/mobgame/gui/MobGamePagerTabStrip;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x79

    const/16 v3, 0x80

    const/16 v4, 0x7a

    .line 364
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$PageListener;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$600(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
