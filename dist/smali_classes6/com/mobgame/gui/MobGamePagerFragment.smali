.class public Lcom/mobgame/gui/MobGamePagerFragment;
.super Landroid/app/Fragment;
.source "MobGamePagerFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobGamePagerFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Landroidx/legacy/app/FragmentPagerAdapter;

.field private layoutIndicators:Lcom/mobgame/gui/view/MobIndicator;

.field private layoutMain:Landroid/view/View;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

.field private selectedIndex:I

.field private tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

.field private viewPager:Lcom/mobgame/gui/MobGameViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 187
    new-instance v0, Lcom/mobgame/gui/MobGamePagerFragment$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGamePagerFragment$1;-><init>(Lcom/mobgame/gui/MobGamePagerFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 187
    new-instance v0, Lcom/mobgame/gui/MobGamePagerFragment$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGamePagerFragment$1;-><init>(Lcom/mobgame/gui/MobGamePagerFragment;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 48
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/MobGamePagerFragment;)Lcom/mobgame/gui/MobGameViewPager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobgame/gui/MobGamePagerFragment;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutMain:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/MobGamePagerFragment;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;)V
    .locals 1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public countTabs()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->adapter:Landroidx/legacy/app/FragmentPagerAdapter;

    invoke-virtual {v0}, Landroidx/legacy/app/FragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public notifiTabsChanged()V
    .locals 1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 54
    sget p3, Lcom/mobgame/R$layout;->fragment_pager:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    sget p2, Lcom/mobgame/R$id;->layout_main:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutMain:Landroid/view/View;

    .line 56
    sget p2, Lcom/mobgame/R$id;->pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mobgame/gui/MobGameViewPager;

    iput-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    .line 57
    sget p2, Lcom/mobgame/R$id;->layout_indicator_bottom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mobgame/gui/view/MobIndicator;

    iput-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutIndicators:Lcom/mobgame/gui/view/MobIndicator;

    .line 58
    sget p2, Lcom/mobgame/R$id;->pager_title_strip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/mobgame/gui/MobGamePagerTabStrip;

    iput-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    :try_start_0
    const-string p2, "eng"

    .line 63
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 64
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string p3, "vie"

    .line 67
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x20

    const/16 v0, 0x66

    const/16 v1, 0xfc

    if-eqz p2, :cond_1

    .line 68
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v1, v0, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setIndicatorColor(I)V

    .line 69
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/mobgame/R$color;->active_text:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setTextColor(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v1, v0, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setIndicatorColor(I)V

    .line 72
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-virtual {p0}, Lcom/mobgame/gui/MobGamePagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/mobgame/R$color;->active_text:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setTextColor(I)V

    .line 74
    :goto_0
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    iget-object p3, p0, Lcom/mobgame/gui/MobGamePagerFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/mobgame/R$dimen;->button_text_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setTextSize(I)V

    .line 75
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->adapter:Landroidx/legacy/app/FragmentPagerAdapter;

    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {p0, p2}, Lcom/mobgame/gui/MobGamePagerFragment;->setAdapter(Landroidx/legacy/app/FragmentPagerAdapter;)V

    .line 79
    :cond_2
    iget-object p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_3

    .line 80
    iget-object p3, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    invoke-virtual {p3, p2}, Lcom/mobgame/gui/MobGameViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public setAdapter(Landroidx/legacy/app/FragmentPagerAdapter;)V
    .locals 1

    .line 89
    iget v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->selectedIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/mobgame/gui/MobGamePagerFragment;->setAdapter(Landroidx/legacy/app/FragmentPagerAdapter;I)V

    return-void
.end method

.method public setAdapter(Landroidx/legacy/app/FragmentPagerAdapter;I)V
    .locals 6

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutIndicators:Lcom/mobgame/gui/view/MobIndicator;

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/view/MobIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)Lcom/mobgame/gui/view/MobIndicator;

    .line 99
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_0
    invoke-virtual {p1}, Landroidx/legacy/app/FragmentPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    invoke-virtual {p1, v1}, Landroidx/legacy/app/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v2

    .line 103
    instance-of v3, v2, Lcom/mobgame/gui/MobGameWebFragment;

    if-eqz v3, :cond_0

    .line 104
    move-object v3, v2

    check-cast v3, Lcom/mobgame/gui/MobGameWebFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobgame/gui/MobGameWebFragment;->setWebViewTag(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    if-eqz v3, :cond_0

    .line 106
    check-cast v2, Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {v2, v3}, Lcom/mobgame/gui/MobGameWebFragment;->setEventListener(Lcom/mobgame/gui/MobGameWebFragment$EventListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    invoke-virtual {v1, p2, v0}, Lcom/mobgame/gui/MobGameViewPager;->setCurrentItem(IZ)V

    .line 112
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0, p2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 114
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutIndicators:Lcom/mobgame/gui/view/MobIndicator;

    invoke-virtual {v0, p2}, Lcom/mobgame/gui/view/MobIndicator;->updatePosition(I)V

    .line 117
    :cond_2
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->adapter:Landroidx/legacy/app/FragmentPagerAdapter;

    .line 118
    iput p2, p0, Lcom/mobgame/gui/MobGamePagerFragment;->selectedIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setWebEventListener(Lcom/mobgame/gui/MobGameWebFragment$EventListener;)V
    .locals 2

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    .line 137
    iget-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->adapter:Landroidx/legacy/app/FragmentPagerAdapter;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->adapter:Landroidx/legacy/app/FragmentPagerAdapter;

    invoke-virtual {v0}, Landroidx/legacy/app/FragmentPagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->adapter:Landroidx/legacy/app/FragmentPagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/legacy/app/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 140
    instance-of v1, v0, Lcom/mobgame/gui/MobGameWebFragment;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/mobgame/gui/MobGameWebFragment;

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGameWebFragment;->setEventListener(Lcom/mobgame/gui/MobGameWebFragment$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public showTabs(Z)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    if-nez v1, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGameViewPager;->setPagingEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateTabs()V
    .locals 5

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutMain:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobgame/gui/MobGamePagerFragment;->viewPager:Lcom/mobgame/gui/MobGameViewPager;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/mobgame/gui/MobGamePagerFragment;->layoutMain:Landroid/view/View;

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-virtual {v4}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/mobgame/gui/MobGamePagerFragment;->tabs:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-virtual {v4}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
