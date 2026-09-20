.class public Lcom/tgs/aics/ui/activity/VideoPlayerActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "VideoPlayerActivity.java"


# static fields
.field private static final videoBottomLayoutDismissTime:J = 0x1388L


# instance fields
.field private imgBackBottom:Landroid/widget/ImageView;

.field private imgPlayOrPauseBottom:Landroid/widget/ImageView;

.field private imgPlayOrPauseCenter:Landroid/widget/ImageView;

.field private imgScreenRotation:Landroid/widget/ImageView;

.field private loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

.field private playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

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

    .line 32
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$1;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->setVideoPlayerInitUI(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->setVideoPlayerEndUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoLoadErrorLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;JJ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->updateVideoTime(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    return-object p0
.end method

.method private initVideoPlayerControllerView(Landroid/view/View;)V
    .locals 3

    const-string v0, "tgs_aics_video_player_top_layout"

    .line 245
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    .line 246
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v2, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->isGetNavigationBarHeight:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    const-string v0, "tgs_aics_video_player_back_layout"

    .line 247
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopBackLayout:Landroid/widget/LinearLayout;

    .line 248
    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_video_player_screen_rotate"

    .line 249
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgScreenRotation:Landroid/widget/ImageView;

    .line 250
    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_video_player_start_center"

    .line 251
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    .line 252
    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_video_player_bottom_layout"

    .line 253
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    .line 254
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v2, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->isGetNavigationBarHeight:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->navigationBarHeight:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    const-string v0, "tgs_aics_video_player_back"

    .line 255
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgBackBottom:Landroid/widget/ImageView;

    .line 256
    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_video_player_start_bottom"

    .line 257
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    .line 258
    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_video_player_current_time"

    .line 259
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtCurrentTime:Landroid/widget/TextView;

    const-string v0, "tgs_aics_video_player_bottom_seek_progress"

    .line 260
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 261
    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$6;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$6;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v0, "tgs_aics_video_player_total_time"

    .line 290
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtTotalTime:Landroid/widget/TextView;

    return-void
.end method

.method private setVideoPlayerEndUI()V
    .locals 5

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tgs_aics_video_play"

    const-string v3, "mipmap"

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setVideoPlayerInitUI(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 5

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopBackLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgScreenRotation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "tgs_aics_video_pause"

    const-string v1, "tgs_aics_video_play"

    const-string v2, "mipmap"

    if-eqz p1, :cond_1

    .line 341
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->updateVideoTime(JJ)V

    goto :goto_2

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 349
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    :goto_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->updateVideoTime(JJ)V

    .line 354
    :goto_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private updateVideoPlayerStateUI()V
    .locals 10

    .line 295
    :try_start_0
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x1388

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "tgs_aics_video_pause"

    const-string v6, "tgs_aics_video_play"

    const-string v7, "mipmap"

    if-eqz v0, :cond_2

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    .line 299
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 304
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 306
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_5

    .line 313
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 315
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPlayState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 320
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 322
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

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

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtCurrentTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtCurrentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->milliseconds2String(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->txtTotalTime:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/tgs/aics/utils/Utils;->milliseconds2String(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

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
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_video_player"

    return-object v0
.end method

.method protected initView()V
    .locals 7

    .line 73
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 97
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tgs_aics_video_player_root_layout"

    .line 99
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 101
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "tgs_aics_video_player_layout"

    invoke-virtual {p0, v3}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    invoke-direct {p0, v2}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->initVideoPlayerControllerView(Landroid/view/View;)V

    .line 104
    new-instance v3, Lcom/tgs/aics/widget/VideoLoadingView;

    invoke-direct {v3, p0}, Lcom/tgs/aics/widget/VideoLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    .line 105
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v6

    invoke-static {v5}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v5

    invoke-direct {v3, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 106
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    iget-object v5, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    invoke-virtual {v5, v3}, Lcom/tgs/aics/widget/VideoLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v5, "tgs_aics_video_player_error_layout"

    invoke-virtual {p0, v5}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoLoadErrorLayout:Landroid/view/View;

    const-string v4, "tgs_aics_video_player_error_back"

    .line 110
    invoke-static {p0, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 111
    new-instance v4, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 115
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v5, 0x0

    .line 116
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    .line 117
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setBackgroundColor(I)V

    .line 119
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v4, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    .line 145
    new-instance v2, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    .line 146
    new-instance v3, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;

    invoke-direct {v3, p0, v2}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 168
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 171
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 172
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 173
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    .line 174
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    goto :goto_0

    .line 177
    :cond_0
    new-instance v3, Lxyz/doikki/videoplayer/player/VideoView;

    invoke-direct {v3, p0}, Lxyz/doikki/videoplayer/player/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    .line 178
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lxyz/doikki/videoplayer/player/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v3, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v3, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;

    invoke-direct {v3, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v3}, Lxyz/doikki/videoplayer/player/VideoView;->addOnStateChangeListener(Lxyz/doikki/videoplayer/player/BaseVideoView$OnStateChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    new-instance v3, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    invoke-virtual {v0, v3}, Lxyz/doikki/videoplayer/player/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    .line 236
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0, v2}, Lxyz/doikki/videoplayer/player/VideoView;->addView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->loadingView:Lcom/tgs/aics/widget/VideoLoadingView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoLoadErrorLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoLoadErrorLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$3$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$4$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getRequestedOrientation()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$5$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->updateVideoPlayerStateUI()V

    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$6$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$initVideoPlayerControllerView$7$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->updateVideoPlayerStateUI()V

    return-void
.end method

.method synthetic lambda$initView$0$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$initView$1$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 3

    .line 121
    :try_start_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoLoadErrorLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method synthetic lambda$initView$2$com-tgs-aics-ui-activity-VideoPlayerActivity(Landroid/view/View;)V
    .locals 3

    .line 213
    :try_start_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoLoadErrorLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPlayState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoBottomLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method synthetic lambda$onPause$8$com-tgs-aics-ui-activity-VideoPlayerActivity()V
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mipmap"

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tgs_aics_video_play"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->imgPlayOrPauseCenter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 393
    invoke-super {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->onPause()V

    .line 394
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayer:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 401
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 409
    invoke-super {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->onResume()V

    .line 410
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerTopLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->videoPlayerBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
