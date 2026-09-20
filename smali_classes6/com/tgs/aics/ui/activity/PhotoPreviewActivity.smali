.class public Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "PhotoPreviewActivity.java"


# instance fields
.field private loadingProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method public finish(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->onBackPressed()V

    return-void
.end method

.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_photo_preview"

    return-object v0
.end method

.method protected initView()V
    .locals 4

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->setDarkStatusIcon(Z)V

    const-string v1, "tgs_aics_photo_preview_back_layout"

    .line 28
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 29
    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v3, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->isGetNavigationBarHeight:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    const-string v1, "tgs_aics_photo_preview_progress_bar"

    .line 31
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 33
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tgs_aics_photo_preview"

    .line 34
    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBounceEnable(Z)V

    .line 37
    invoke-virtual {v2}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->enable()V

    .line 38
    invoke-virtual {v2, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setShowImageRectLine(Z)V

    .line 39
    invoke-virtual {v2, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCanShowTouchLine(Z)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 40
    invoke-virtual {v2, v0}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setMaxScale(F)V

    .line 42
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;

    invoke-direct {v1, p0, v2, v2}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;-><init>(Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;Landroid/widget/ImageView;Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
