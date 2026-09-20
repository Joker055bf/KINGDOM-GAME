.class Lcom/mobgame/gui/view/MobIndicator$1;
.super Ljava/lang/Object;
.source "MobIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/view/MobIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/view/MobIndicator;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/view/MobIndicator;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mobgame/gui/view/MobIndicator$1;->this$0:Lcom/mobgame/gui/view/MobIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 122
    iget-object p2, p0, Lcom/mobgame/gui/view/MobIndicator$1;->this$0:Lcom/mobgame/gui/view/MobIndicator;

    invoke-static {p2}, Lcom/mobgame/gui/view/MobIndicator;->access$000(Lcom/mobgame/gui/view/MobIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mobgame/gui/view/MobIndicator$1;->this$0:Lcom/mobgame/gui/view/MobIndicator;

    invoke-static {p2}, Lcom/mobgame/gui/view/MobIndicator;->access$000(Lcom/mobgame/gui/view/MobIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/view/MobIndicator$1;->this$0:Lcom/mobgame/gui/view/MobIndicator;

    invoke-virtual {p2, p1}, Lcom/mobgame/gui/view/MobIndicator;->updatePosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
