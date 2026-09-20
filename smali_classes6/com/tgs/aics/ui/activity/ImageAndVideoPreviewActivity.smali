.class public Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "ImageAndVideoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;,
        Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;
    }
.end annotation


# static fields
.field public static isUseOriginalVideoView:Z = false


# instance fields
.field private mCurrentItemPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->onBackPressed()V

    return-void
.end method

.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_image_video_preview"

    return-object v0
.end method

.method protected initView()V
    .locals 6

    .line 57
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aics_media_info_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/MediaInfo;

    .line 63
    invoke-virtual {v3}, Lcom/tgs/aics/bean/MediaInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "aics_current_media_unique_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iput v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->mCurrentItemPosition:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, "tgs_aics_image_video_viewpager"

    .line 69
    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 70
    new-instance v3, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$InnerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 71
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 73
    iget v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->mCurrentItemPosition:I

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 74
    new-instance v0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$1;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;)V

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
