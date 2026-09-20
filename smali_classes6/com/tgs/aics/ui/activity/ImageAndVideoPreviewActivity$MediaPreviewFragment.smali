.class public Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImageAndVideoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaPreviewFragment"
.end annotation


# static fields
.field private static final KEY_MEDIA_INFO:Ljava/lang/String; = "key_media_info"

.field private static final videoBottomLayoutDismissTime:J = 0x1388L


# instance fields
.field private imgBackBottom:Landroid/widget/ImageView;

.field private imgPlayOrPauseBottom:Landroid/widget/ImageView;

.field private imgPlayOrPauseCenter:Landroid/widget/ImageView;

.field private imgScreenRotation:Landroid/widget/ImageView;

.field private loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

.field private mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

.field private playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private previewImg:Landroid/widget/ImageView;

.field private seekBar:Landroid/widget/SeekBar;

.field private final timerHandler:Landroid/os/Handler;

.field private final timerRunnable:Ljava/lang/Runnable;

.field private txtCurrentTime:Landroid/widget/TextView;

.field private txtTotalTime:Landroid/widget/TextView;

.field private final videoBottomLayoutHandler:Landroid/os/Handler;

.field private final videoBottomLayoutRunnable:Ljava/lang/Runnable;

.field private videoLoadErrorLayout:Landroid/view/View;

.field private videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

.field private videoPlayerBottomLayout:Landroid/widget/LinearLayout;

.field private videoPlayerTopBackLayout:Landroid/widget/LinearLayout;

.field private videoPlayerTopLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$1;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$2;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->setVideoPlayerEndUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/view/View;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoLoadErrorLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;JJ)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->updateVideoTime(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Lxyz/doikki/videoplayer/player/VideoView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/os/Handler;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Lcom/tgs/aics/widget/VideoLoadingView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->setVideoPlayerInitUI(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/widget/TextView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method private ijkInitUI()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->previewImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->previewImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->setVideoPlayerInitUI(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 376
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    return-void
.end method

.method private initPhotoPreviewViews(Landroid/view/View;)V
    .locals 3

    .line 591
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_photo_preview_back_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 592
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v2, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/tgs/aics/ui/activity/BaseActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    .line 594
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_photo_preview_progress_bar"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 596
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_photo_preview"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    const/4 v1, 0x1

    .line 598
    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setBounceEnable(Z)V

    .line 599
    invoke-virtual {p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->enable()V

    const/4 v1, 0x0

    .line 600
    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setShowImageRectLine(Z)V

    .line 601
    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setCanShowTouchLine(Z)V

    const/high16 v1, 0x40e00000    # 7.0f

    .line 602
    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setMaxScale(F)V

    .line 604
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;

    invoke-direct {v2, p0, p1, v0, p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private initVideoPlayerControllerView(Landroid/view/View;)V
    .locals 3

    .line 381
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_preview_img"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->previewImg:Landroid/widget/ImageView;

    .line 383
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_top_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    .line 384
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v2, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/tgs/aics/ui/activity/BaseActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    .line 385
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_back_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopBackLayout:Landroid/widget/LinearLayout;

    .line 386
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_screen_rotate"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgScreenRotation:Landroid/widget/ImageView;

    .line 391
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_start_center"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    .line 396
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_bottom_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    .line 398
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v2, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/tgs/aics/ui/activity/BaseActivity;->navigationBarHeight:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    .line 399
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_back"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgBackBottom:Landroid/widget/ImageView;

    .line 400
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_start_bottom"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    .line 405
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_current_time"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtCurrentTime:Landroid/widget/TextView;

    .line 407
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_bottom_seek_progress"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->seekBar:Landroid/widget/SeekBar;

    .line 408
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$5;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$5;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 437
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_total_time"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtTotalTime:Landroid/widget/TextView;

    return-void
.end method

.method private initVideoPlayerViews(Landroid/view/View;)V
    .locals 5

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_root_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 207
    sget-boolean v0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->isUseOriginalVideoView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tgs_aics_original_video_player_layout"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_original_video_player_preview_img"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 211
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_original_video_player_back_layout"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 215
    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v3, Lcom/tgs/aics/ui/activity/BaseActivity;->isGetNavigationBarHeight:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/tgs/aics/ui/activity/BaseActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    .line 216
    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_original_video_player_start_center"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 222
    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tgs_aics_video_player_layout"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->initVideoPlayerControllerView(Landroid/view/View;)V

    .line 231
    new-instance v2, Lcom/tgs/aics/widget/VideoLoadingView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tgs/aics/widget/VideoLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    .line 232
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v4

    invoke-static {v3}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 233
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    invoke-virtual {v3, v2}, Lcom/tgs/aics/widget/VideoLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tgs_aics_video_player_error_layout"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoLoadErrorLayout:Landroid/view/View;

    .line 237
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tgs_aics_video_player_error_back"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 245
    new-instance v1, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    .line 247
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setBackgroundColor(I)V

    .line 249
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    .line 275
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$3;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 298
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 301
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 303
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    goto :goto_1

    .line 307
    :cond_3
    new-instance v1, Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lxyz/doikki/videoplayer/player/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    .line 308
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lxyz/doikki/videoplayer/player/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v1, v2}, Lxyz/doikki/videoplayer/player/VideoView;->addOnStateChangeListener(Lxyz/doikki/videoplayer/player/BaseVideoView$OnStateChangeListener;)V

    .line 337
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    invoke-virtual {v1, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->ijkInitUI()V

    .line 362
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v1, v0}, Lxyz/doikki/videoplayer/player/VideoView;->addView(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoLoadErrorLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoLoadErrorLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static newInstance(Lcom/tgs/aics/bean/MediaInfo;)Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;
    .locals 3

    .line 168
    new-instance v0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-direct {v0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;-><init>()V

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_media_info"

    .line 170
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setVideoPlayerEndUI()V
    .locals 5

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tgs_aics_video_play"

    const-string v3, "mipmap"

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setVideoPlayerInitUI(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 5

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopBackLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgScreenRotation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "tgs_aics_video_pause"

    const-string v1, "tgs_aics_video_play"

    const-string v2, "mipmap"

    if-eqz p1, :cond_1

    .line 489
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->updateVideoTime(JJ)V

    goto :goto_2

    .line 496
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 497
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 499
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    :goto_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->updateVideoTime(JJ)V

    .line 502
    :goto_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private updateVideoPlayerStateUI()V
    .locals 10

    .line 442
    :try_start_0
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    const-string v4, "tgs_aics_video_pause"

    const-string v5, "tgs_aics_video_play"

    const/16 v6, 0x8

    const-string v7, "mipmap"

    if-eqz v0, :cond_2

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    .line 446
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 451
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 453
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->previewImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_5

    .line 461
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 463
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPlayState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 468
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 469
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 470
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method private updateVideoTime(JJ)V
    .locals 3

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtCurrentTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtCurrentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->milliseconds2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->txtTotalTime:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/tgs/aics/utils/Utils;->milliseconds2String(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->seekBar:Landroid/widget/SeekBar;

    const-wide/16 v1, 0x64

    mul-long/2addr p1, v1

    div-long/2addr p1, p3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method synthetic lambda$initVideoPlayerControllerView$5$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 0

    .line 387
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$6$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$7$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->updateVideoPlayerStateUI()V

    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$8$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 0

    .line 401
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$9$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->updateVideoPlayerStateUI()V

    return-void
.end method

.method synthetic lambda$initVideoPlayerViews$0$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initVideoPlayerViews$1$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/SystemVideoPlayerUtil;->openSystemVideoPlayer(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initVideoPlayerViews$2$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initVideoPlayerViews$3$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 3

    .line 251
    :try_start_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoLoadErrorLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method synthetic lambda$initVideoPlayerViews$4$com-tgs-aics-ui-activity-ImageAndVideoPreviewActivity$MediaPreviewFragment(Landroid/view/View;)V
    .locals 3

    .line 339
    :try_start_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoLoadErrorLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPlayState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 346
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 356
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_media_info"

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/MediaInfo;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 189
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/MediaInfo;->isVideo()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tgs_aics_activity_video_player"

    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 192
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->initVideoPlayerViews(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tgs_aics_activity_photo_preview"

    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->initPhotoPreviewViews(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 566
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 569
    :try_start_0
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 572
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 577
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 580
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 581
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 583
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 547
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 557
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tgs_aics_video_play"

    const-string v3, "mipmap"

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 535
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->mediaInfo:Lcom/tgs/aics/bean/MediaInfo;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
