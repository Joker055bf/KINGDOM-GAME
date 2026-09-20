.class public Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;
.super Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$d;,
        Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;,
        Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$b;,
        Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;
    }
.end annotation


# static fields
.field private static final COUNTDOWN_IDENTIFIER_PROGRESS_TRACKING:Ljava/lang/String; = "PROGRESS_TRACKING"

.field private static final FADE_ANIMATION_DURATION_MILLIS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "AppLovinVastExoPlayerMediaView"


# instance fields
.field private final automaticPauseHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final automaticResumeHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final countdownHandler:Landroid/os/Handler;

.field private final countdownManager:Lcom/applovin/impl/adview/j;

.field private industryIconImageView:Landroid/widget/ImageView;

.field private final initialOnAttachedToWindowHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isVideoMuted:Z

.field private isVideoPausedByUser:Z

.field private final isVideoStream:Z

.field private lastVideoPositionFromPauseMillis:J

.field private final lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

.field private final mediaErrorHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mediaPlayer:Lcom/applovin/exoplayer2/aw;

.field private muteButtonImageView:Landroid/widget/ImageView;

.field private playPauseButtonImageView:Landroid/widget/ImageView;

.field private replayIconContainer:Landroid/widget/FrameLayout;

.field private savedVideoPercentViewed:I

.field private startTimeMillis:J

.field private final vastAd:Lcom/applovin/impl/c/a;

.field private videoDurationMillis:J

.field private final videoEndListenerNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final videoProgressTrackers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private final videoView:Lcom/applovin/exoplayer2/ui/g;

.field private videoWasCompleted:Z

.field private videoWidgetLinearLayout:Landroid/widget/LinearLayout;

.field private viewActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V
    .locals 10

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownHandler:Landroid/os/Handler;

    .line 91
    new-instance v1, Lcom/applovin/impl/adview/j;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-direct {v1, v0, v2}, Lcom/applovin/impl/adview/j;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/p;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownManager:Lcom/applovin/impl/adview/j;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoEndListenerNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaErrorHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->initialOnAttachedToWindowHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticPauseHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticResumeHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoMuted:Z

    const-wide/16 v1, -0x1

    .line 108
    iput-wide v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lastVideoPositionFromPauseMillis:J

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoProgressTrackers:Ljava/util/Set;

    .line 115
    new-instance v2, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

    .line 140
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getVastAd()Lcom/applovin/impl/c/a;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    .line 141
    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->f()Z

    move-result v3

    iput-boolean v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoStream:Z

    if-eqz v3, :cond_0

    .line 148
    invoke-static {p3}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v3

    const-string/jumbo v4, "video_caching_failed"

    invoke-virtual {v3, p0, v4}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->aS()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->aR()Lcom/applovin/impl/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/c/g;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p3, p2}, Lcom/applovin/impl/c/g;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    .line 154
    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p3, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 155
    iget-object v5, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v7, Lcom/applovin/impl/sdk/c/b;->eS:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v7}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v3, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;

    invoke-direct {v5, p0, v4}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->addView(Landroid/view/View;)V

    .line 161
    :cond_1
    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eX:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 163
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    .line 164
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/applovin/sdk/R$drawable;->applovin_rounded_black_background:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 166
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/applovin/impl/sdk/c/b;->eW:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 168
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 170
    new-instance v3, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$d;

    invoke-direct {v3, p0, v4}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$d;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;)V

    .line 171
    iget-object v6, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget-object v6, Lcom/applovin/impl/sdk/c/b;->eU:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p3, v6}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    .line 173
    iget-object v7, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-direct {p0, v5}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->populatePlayPauseImage(Z)V

    .line 175
    iget-object v7, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    .line 179
    iget-boolean v7, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoMuted:Z

    invoke-direct {p0, v7}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->populateMuteImage(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    sget-object v7, Lcom/applovin/impl/sdk/c/b;->eT:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v7}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p3, v7}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    .line 183
    iget-object v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 184
    iget-object v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move v7, v5

    .line 190
    :goto_0
    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eV:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p3, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 191
    iget-object v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    add-int v8, v6, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    .line 193
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v3

    .line 194
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x800053

    invoke-direct {v7, v8, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->addView(Landroid/view/View;)V

    .line 200
    :cond_3
    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eY:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 202
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    const/high16 v6, -0x1000000

    .line 203
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 204
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 206
    new-instance v3, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$d;

    invoke-direct {v3, p0, v4}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$d;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;)V

    .line 207
    iget-object v6, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    sget-object v6, Lcom/applovin/impl/sdk/c/b;->eZ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p3, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    .line 211
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {p3, p2, p2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    sget p2, Lcom/applovin/sdk/R$drawable;->applovin_ic_replay_icon:I

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 214
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 215
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 217
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->addView(Landroid/view/View;)V

    .line 222
    :cond_4
    new-instance p2, Lcom/applovin/exoplayer2/aw$a;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/applovin/exoplayer2/aw$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/aw$a;->a()Lcom/applovin/exoplayer2/aw;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    .line 223
    new-instance p3, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;

    invoke-direct {p3, p0, v4}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$1;)V

    .line 224
    invoke-virtual {p2, p3}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/an$b;)V

    .line 225
    invoke-virtual {p2, v5}, Lcom/applovin/exoplayer2/aw;->c(I)V

    .line 227
    new-instance v0, Lcom/applovin/exoplayer2/ui/g;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/ui/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoView:Lcom/applovin/exoplayer2/ui/g;

    .line 228
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ui/g;->b()V

    .line 229
    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/ui/g;->setControllerVisibilityListener(Lcom/applovin/exoplayer2/ui/f$d;)V

    .line 230
    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/ui/g;->setPlayer(Lcom/applovin/exoplayer2/an;)V

    .line 231
    new-instance p2, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getClickHandler()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$b;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/ui/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->addView(Landroid/view/View;)V

    .line 234
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->bringChildToFront(Landroid/view/View;)V

    .line 235
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->bringChildToFront(Landroid/view/View;)V

    .line 238
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->prepareMediaPlayer()V

    .line 241
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->setVideoView(Landroid/view/View;)V

    .line 244
    sget-object p1, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    sget-object p2, Lcom/applovin/impl/c/l;->a:[Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Lcom/applovin/impl/c/a;->a(Lcom/applovin/impl/c/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 245
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Landroid/app/Activity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->viewActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoPausedByUser:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Ljava/util/Set;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoProgressTrackers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$102(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoPausedByUser:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Ljava/util/Set;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Lcom/applovin/impl/c/a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWasCompleted:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWasCompleted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoMuted:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoMuted:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Lcom/applovin/impl/adview/j;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownManager:Lcom/applovin/impl/adview/j;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->finishVideo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->showMediaImageView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->handleMediaError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeHandleResume()V

    return-void
.end method

.method static synthetic access$2000(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Lcom/applovin/exoplayer2/ui/g;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoView:Lcom/applovin/exoplayer2/ui/g;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Lcom/applovin/impl/c/a$c;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;Z)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->populateMuteImage(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticResumeHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Lcom/applovin/impl/sdk/utils/a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

    return-object p0
.end method

.method static synthetic access$300(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeHandlePause()V

    return-void
.end method

.method static synthetic access$700(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)Lcom/applovin/exoplayer2/aw;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    return-object p0
.end method

.method static synthetic access$800(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoDurationMillis:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;J)J
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoDurationMillis:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getVideoPercentViewed()I

    move-result p0

    return p0
.end method

.method private checkCachedAdResources(Z)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/Utils;->checkCachedResourcesExist(ZLcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 532
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video failed due to missing resources: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinVastExoPlayerMediaView"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->finishVideo()V

    .line 539
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->showMediaImageView()V

    return-void
.end method

.method private finishVideo()V
    .locals 9

    .line 492
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeHandlePause()V

    .line 497
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    .line 499
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWasCompleted:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireRemainingCompletionTrackers()V

    .line 502
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->i()V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoEndListenerNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->startTimeMillis:J

    sub-long/2addr v0, v2

    .line 508
    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getVideoPercentViewed()I

    move-result v7

    iget-boolean v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoStream:Z

    invoke-virtual/range {v3 .. v8}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackVideoEnd(Lcom/applovin/impl/sdk/ad/e;JIZ)V

    :cond_1
    return-void
.end method

.method private getVideoPercentViewed()I
    .locals 4

    .line 589
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->I()J

    move-result-wide v0

    .line 592
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWasCompleted:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    long-to-float v0, v0

    .line 597
    iget-wide v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoDurationMillis:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 602
    :cond_1
    iget v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->savedVideoPercentViewed:I

    return v0
.end method

.method private handleMediaError(Ljava/lang/String;)V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinVastExoPlayerMediaView"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    sget-object v0, Lcom/applovin/impl/c/a$c;->h:Lcom/applovin/impl/c/a$c;

    sget-object v1, Lcom/applovin/impl/c/f;->m:Lcom/applovin/impl/c/f;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Lcom/applovin/impl/c/f;)V

    .line 547
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/a/g;->a(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaErrorHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 551
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->finishVideo()V

    .line 554
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->showMediaImageView()V

    :cond_1
    return-void
.end method

.method private maybeFireRemainingCompletionTrackers()V
    .locals 3

    .line 579
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getVideoPercentViewed()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->Q()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoProgressTrackers:Ljava/util/Set;

    .line 580
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoProgressTrackers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " un-fired video progress trackers when video was completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVastExoPlayerMediaView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoProgressTrackers:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private maybeFireTrackers(Lcom/applovin/impl/c/a$c;)V
    .locals 1

    .line 664
    sget-object v0, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private maybeFireTrackers(Lcom/applovin/impl/c/a$c;Lcom/applovin/impl/c/f;)V
    .locals 1

    const-string v0, ""

    .line 674
    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V
    .locals 1

    .line 669
    sget-object v0, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;Lcom/applovin/impl/c/f;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/c/a;->a(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 681
    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Ljava/util/Set;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private maybeFireTrackers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;)V"
        }
    .end annotation

    .line 659
    sget-object v0, Lcom/applovin/impl/c/f;->a:Lcom/applovin/impl/c/f;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Ljava/util/Set;Lcom/applovin/impl/c/f;)V

    return-void
.end method

.method private maybeFireTrackers(Ljava/util/Set;Lcom/applovin/impl/c/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;",
            "Lcom/applovin/impl/c/f;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 686
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 688
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/aw;->I()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 689
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aP()Lcom/applovin/impl/c/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {v0}, Lcom/applovin/impl/c/o;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 692
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tracker(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVastExoPlayerMediaView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_2
    iget-object v8, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/applovin/impl/c/m;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/c/f;Lcom/applovin/impl/sdk/p;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private maybeHandleOnAttachedToWindow()V
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->initialOnAttachedToWindowHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-object v0, Lcom/applovin/impl/c/a$c;->f:Lcom/applovin/impl/c/a$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;)V

    .line 378
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->startTimeMillis:J

    .line 385
    sget-object v0, Lcom/applovin/impl/c/a$c;->a:Lcom/applovin/impl/c/a$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;)V

    .line 386
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string v1, "creativeView"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->d()V

    .line 388
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/c/a;->setHasShown(Z)V

    .line 389
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/e;)V

    .line 392
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/Utils;->getRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->viewActivity:Landroid/app/Activity;

    .line 393
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    .line 396
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    .line 399
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownManager:Lcom/applovin/impl/adview/j;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$2;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;)V

    const-string v4, "PROGRESS_TRACKING"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/applovin/impl/adview/j;->a(Ljava/lang/String;JLcom/applovin/impl/adview/j$a;)V

    return-void
.end method

.method private maybeHandlePause()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticPauseHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string v3, "pause"

    invoke-direct {p0, v0, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->j()V

    .line 455
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->pauseVideo()V

    .line 457
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->populatePlayPauseImage(Z)V

    .line 459
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticResumeHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private maybeHandleResume()V
    .locals 7

    .line 465
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticResumeHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    sget-object v0, Lcom/applovin/impl/c/a$c;->d:Lcom/applovin/impl/c/a$c;

    const-string v3, "resume"

    invoke-direct {p0, v0, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeFireTrackers(Lcom/applovin/impl/c/a$c;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->k()V

    .line 470
    iget-wide v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lastVideoPositionFromPauseMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-string v3, "AppLovinVastExoPlayerMediaView"

    if-ltz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resuming video at position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lastVideoPositionFromPauseMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    .line 476
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownManager:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->a()V

    const-wide/16 v2, -0x1

    .line 478
    iput-wide v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lastVideoPositionFromPauseMillis:J

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid last video position, isVideoPlaying="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/aw;->a()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->populatePlayPauseImage(Z)V

    .line 487
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->automaticPauseHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private pauseVideo()V
    .locals 5

    .line 516
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinVastExoPlayerMediaView"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getVideoPercentViewed()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->savedVideoPercentViewed:I

    .line 519
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->I()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lastVideoPositionFromPauseMillis:J

    .line 521
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    .line 523
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownManager:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->c()V

    .line 525
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Paused video at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->lastVideoPositionFromPauseMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private populateMuteImage(Z)Z
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aE()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aF()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 633
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 634
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 635
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    .line 641
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 644
    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_4

    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_unmute_to_mute:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_mute_to_unmute:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-nez p1, :cond_5

    return v1

    .line 647
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return v2
.end method

.method private populatePlayPauseImage(Z)V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aC()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aD()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 614
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 615
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 616
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 621
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_play_icon:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_pause_icon:I

    .line 622
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private prepareMediaPlayer()V
    .locals 4

    .line 352
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoStream:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->checkCachedAdResources(Z)V

    .line 355
    new-instance v0, Lcom/applovin/exoplayer2/k/p;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.applovin.sdk"

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/k/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    new-instance v1, Lcom/applovin/exoplayer2/h/u$a;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/h/u$a;-><init>(Lcom/applovin/exoplayer2/k/i$a;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    .line 359
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/ab;->a(Landroid/net/Uri;)Lcom/applovin/exoplayer2/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/h/u$a;->a(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/h/u;

    move-result-object v0

    .line 362
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoMuted:Z

    xor-int/lit8 v1, v1, 0x1

    .line 363
    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/aw;->a(F)V

    .line 366
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/h/p;)V

    .line 367
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->w()V

    .line 368
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    return-void
.end method

.method private showMediaImageView()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoView:Lcom/applovin/exoplayer2/ui/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ui/g;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWidgetLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 273
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->finishVideo()V

    .line 275
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->industryIconImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->playPauseButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->muteButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->replayIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoView:Lcom/applovin/exoplayer2/ui/g;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ui/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->viewActivity:Landroid/app/Activity;

    .line 298
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->E()V

    .line 301
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->e()V

    .line 304
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownManager:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->b()V

    .line 305
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->countdownHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 307
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoStream:Z

    if-eqz v0, :cond_4

    .line 309
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    const-string/jumbo v1, "video_caching_failed"

    invoke-virtual {v0, p0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 312
    :cond_4
    invoke-super {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->destroy()V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "AppLovinVastExoPlayerMediaView"

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 251
    invoke-super {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->onAttachedToWindow()V

    .line 254
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeHandleOnAttachedToWindow()V

    .line 256
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoPausedByUser:Z

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeHandleResume()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->maybeHandlePause()V

    .line 267
    invoke-super {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 4

    const-string/jumbo v0, "video_caching_failed"

    .line 318
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ad_id"

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 324
    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->fy:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->vastAd:Lcom/applovin/impl/c/a;

    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->getAdIdNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->isVideoStream:Z

    if-eqz v0, :cond_2

    const-string v0, "load_response_code"

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "load_exception_message"

    .line 327
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_2

    .line 335
    :cond_1
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->videoWasCompleted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->mediaPlayer:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/aw;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video cache error during stream. ResponseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;->handleMediaError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
