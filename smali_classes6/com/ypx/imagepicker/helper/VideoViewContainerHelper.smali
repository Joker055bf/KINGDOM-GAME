.class public Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;
.super Ljava/lang/Object;
.source "VideoViewContainerHelper.java"


# instance fields
.field private pauseImg:Landroid/widget/ImageView;

.field private previewImg:Landroid/widget/ImageView;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)Landroid/widget/VideoView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->previewImg:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public loadVideoView(Landroid/view/ViewGroup;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V
    .locals 5

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 33
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 35
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    iget-object v4, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->previewImg:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->previewImg:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    .line 43
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    iget-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4}, Lcom/ypx/imagepicker/views/PickerUiConfig;->getVideoPauseIconID()I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    iput v3, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_0
    iget-object p4, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    iget-object p4, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    iget-object p4, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->previewImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    iget-object p4, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->previewImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->previewImg:Landroid/widget/ImageView;

    invoke-interface {p3, p1, p2, v2, v2}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->displayImage(Landroid/view/View;Lcom/ypx/imagepicker/bean/ImageItem;IZ)V

    .line 57
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    iget-object p2, p2, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 60
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$1;

    invoke-direct {p2, p0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$1;-><init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 68
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;

    invoke-direct {p2, p0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;-><init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    new-instance p2, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;

    invoke-direct {p2, p0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;-><init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 115
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 107
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 108
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->pauseImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
