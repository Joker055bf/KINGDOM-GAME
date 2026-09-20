.class public Lcom/applovin/impl/adview/activity/b/f;
.super Lcom/applovin/impl/adview/activity/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/activity/b/f$a;,
        Lcom/applovin/impl/adview/activity/b/f$c;,
        Lcom/applovin/impl/adview/activity/b/f$b;
    }
.end annotation


# instance fields
.field protected final A:Landroid/widget/ProgressBar;

.field protected B:Landroid/widget/ImageView;

.field protected final C:Lcom/applovin/impl/adview/j;

.field protected D:Z

.field protected E:J

.field protected F:Z

.field private final G:Lcom/applovin/impl/adview/activity/a/c;

.field private H:Landroid/media/MediaPlayer;

.field private final I:Lcom/applovin/impl/adview/activity/b/f$b;

.field private final J:Lcom/applovin/impl/adview/activity/b/f$a;

.field private final K:Landroid/os/Handler;

.field private final L:Z

.field private M:I

.field private N:I

.field private O:Z

.field private final P:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private R:J

.field private S:J

.field protected final v:Lcom/applovin/impl/adview/AppLovinVideoView;

.field protected final w:Lcom/applovin/impl/adview/a;

.field protected final x:Lcom/applovin/impl/adview/m;

.field protected final y:Landroid/widget/ImageView;

.field protected z:Lcom/applovin/impl/adview/v;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/ad/e;",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/applovin/impl/sdk/p;",
            "Lcom/applovin/sdk/AppLovinAdClickListener;",
            "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
            "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 84
    new-instance p3, Lcom/applovin/impl/adview/activity/a/c;

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/f;->e:Landroid/app/Activity;

    iget-object p7, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {p3, p5, p6, p7}, Lcom/applovin/impl/adview/activity/a/c;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->G:Lcom/applovin/impl/adview/activity/a/c;

    const/4 p3, 0x0

    .line 98
    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->B:Landroid/widget/ImageView;

    .line 103
    new-instance p5, Lcom/applovin/impl/adview/activity/b/f$b;

    invoke-direct {p5, p0, p3}, Lcom/applovin/impl/adview/activity/b/f$b;-><init>(Lcom/applovin/impl/adview/activity/b/f;Lcom/applovin/impl/adview/activity/b/f$1;)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/f;->I:Lcom/applovin/impl/adview/activity/b/f$b;

    .line 104
    new-instance p6, Lcom/applovin/impl/adview/activity/b/f$a;

    invoke-direct {p6, p0, p3}, Lcom/applovin/impl/adview/activity/b/f$a;-><init>(Lcom/applovin/impl/adview/activity/b/f;Lcom/applovin/impl/adview/activity/b/f$1;)V

    iput-object p6, p0, Lcom/applovin/impl/adview/activity/b/f;->J:Lcom/applovin/impl/adview/activity/b/f$a;

    .line 105
    new-instance p7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/f;->K:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/applovin/impl/adview/j;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, p7, v1}, Lcom/applovin/impl/adview/j;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/p;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->C:Lcom/applovin/impl/adview/j;

    .line 109
    iget-object p7, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p7}, Lcom/applovin/impl/sdk/ad/e;->f()Z

    move-result p7

    iput-boolean p7, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    .line 112
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/Utils;->isVideoMutedInitially(Lcom/applovin/impl/sdk/p;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    const/4 v1, -0x1

    .line 115
    iput v1, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    .line 119
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, -0x2

    .line 123
    iput-wide v1, p0, Lcom/applovin/impl/adview/activity/b/f;->R:J

    const-wide/16 v1, 0x0

    .line 124
    iput-wide v1, p0, Lcom/applovin/impl/adview/activity/b/f;->S:J

    .line 136
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->hasVideoUrl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 139
    new-instance v3, Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {v3, p2}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 140
    invoke-virtual {v3, p5}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 141
    invoke-virtual {v3, p5}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 142
    invoke-virtual {v3, p5}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 143
    new-instance v4, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object v5, Lcom/applovin/impl/sdk/c/b;->aZ:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {v4, p4, v5, p2, p5}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/c/b;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {v3, v4}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    new-instance p5, Lcom/applovin/impl/adview/activity/b/f$c;

    invoke-direct {p5, p0, p3}, Lcom/applovin/impl/adview/activity/b/f$c;-><init>(Lcom/applovin/impl/adview/activity/b/f;Lcom/applovin/impl/adview/activity/b/f$1;)V

    .line 151
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->r()J

    move-result-wide v3

    cmp-long v1, v3, v1

    const/16 v2, 0x8

    if-ltz v1, :cond_0

    .line 154
    new-instance v1, Lcom/applovin/impl/adview/m;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->x()Lcom/applovin/impl/adview/i$a;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/adview/i$a;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->x:Lcom/applovin/impl/adview/m;

    .line 155
    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 156
    invoke-virtual {v1, p5}, Lcom/applovin/impl/adview/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 160
    :cond_0
    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->x:Lcom/applovin/impl/adview/m;

    .line 164
    :goto_0
    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    invoke-static {v1, p4}, Lcom/applovin/impl/adview/activity/b/f;->a(ZLcom/applovin/impl/sdk/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->y:Landroid/widget/ImageView;

    .line 167
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x1

    .line 168
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 169
    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-boolean p5, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    invoke-direct {p0, p5}, Lcom/applovin/impl/adview/activity/b/f;->e(Z)V

    goto :goto_1

    .line 175
    :cond_1
    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->y:Landroid/widget/ImageView;

    .line 179
    :goto_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->C()Ljava/lang/String;

    move-result-object p5

    .line 180
    invoke-static {p5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    new-instance v1, Lcom/applovin/impl/adview/w;

    invoke-direct {v1, p4}, Lcom/applovin/impl/adview/w;-><init>(Lcom/applovin/impl/sdk/p;)V

    .line 184
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/applovin/impl/adview/w;->a(Ljava/lang/ref/WeakReference;)V

    .line 185
    new-instance p6, Lcom/applovin/impl/adview/v;

    invoke-direct {p6, v1, p2}, Lcom/applovin/impl/adview/v;-><init>(Lcom/applovin/impl/adview/w;Landroid/content/Context;)V

    iput-object p6, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    .line 186
    invoke-virtual {p6, p5}, Lcom/applovin/impl/adview/v;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 190
    :cond_2
    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    :goto_2
    if-eqz p7, :cond_3

    .line 197
    new-instance p5, Lcom/applovin/impl/adview/a;

    sget-object p6, Lcom/applovin/impl/sdk/c/b;->cP:Lcom/applovin/impl/sdk/c/b;

    .line 198
    invoke-virtual {p4, p6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    const p7, 0x101007a

    invoke-direct {p5, p2, p6, p7}, Lcom/applovin/impl/adview/a;-><init>(Landroid/content/Context;II)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/f;->w:Lcom/applovin/impl/adview/a;

    const-string p6, "#75FFFFFF"

    .line 200
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p5, p6}, Lcom/applovin/impl/adview/a;->setColor(I)V

    const-string p6, "#00000000"

    .line 201
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p5, p6}, Lcom/applovin/impl/adview/a;->setBackgroundColor(I)V

    .line 202
    invoke-virtual {p5, v2}, Lcom/applovin/impl/adview/a;->setVisibility(I)V

    .line 206
    invoke-static {p2}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p5

    const-string/jumbo p6, "video_caching_failed"

    invoke-virtual {p5, p0, p6}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    goto :goto_3

    .line 210
    :cond_3
    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->w:Lcom/applovin/impl/adview/a;

    .line 214
    :goto_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->O()Z

    move-result p5

    if-eqz p5, :cond_5

    .line 216
    new-instance p5, Landroid/widget/ProgressBar;

    const p6, 0x1010078

    invoke-direct {p5, p2, p3, p6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/f;->A:Landroid/widget/ProgressBar;

    const/16 p2, 0x2710

    .line 217
    invoke-virtual {p5, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p2, 0x0

    .line 218
    invoke-virtual {p5, p2, p2, p2, p2}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 220
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 222
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->P()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 223
    invoke-virtual {p5, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 227
    :cond_4
    sget-object p1, Lcom/applovin/impl/sdk/c/b;->cM:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 228
    new-instance p3, Lcom/applovin/impl/adview/activity/b/f$1;

    invoke-direct {p3, p0}, Lcom/applovin/impl/adview/activity/b/f$1;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    const-string p4, "PROGRESS_BAR"

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/applovin/impl/adview/j;->a(Ljava/lang/String;JLcom/applovin/impl/adview/j$a;)V

    goto :goto_4

    .line 255
    :cond_5
    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/f;->A:Landroid/widget/ProgressBar;

    :goto_4
    return-void

    .line 136
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to use fullscreen video ad presenter for non-video ad"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private C()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->Q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->x:Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->r()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/f$5;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/f$5;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/f;->a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->D()Lcom/applovin/impl/adview/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0}, Lcom/applovin/impl/adview/t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/f;->F:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {v1}, Lcom/applovin/impl/adview/v;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 470
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/adview/t;->f()J

    move-result-wide v2

    .line 471
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f$6;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/f$6;-><init>(Lcom/applovin/impl/adview/activity/b/f;ZJ)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private E()V
    .locals 4

    .line 554
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->F:Z

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Skip video resume - postitial shown"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Skip video resume - app paused"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 568
    :cond_3
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    if-ltz v0, :cond_5

    .line 570
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resuming video at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms for MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/f;->H:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget v1, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    .line 573
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    .line 575
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->a()V

    const/4 v0, -0x1

    .line 577
    iput v0, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    .line 580
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f$8;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/f$8;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 603
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Invalid last video position"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private F()V
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->G:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->i:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/adview/m;)V

    .line 908
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/f;->k:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/f;J)J
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/f;->R:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/f;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->H:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/f;->C()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/f;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/f;->O:Z

    return p1
.end method

.method private static a(ZLcom/applovin/impl/sdk/p;)Z
    .locals 2

    .line 750
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 755
    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cF:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    return v1

    .line 765
    :cond_1
    sget-object p0, Lcom/applovin/impl/sdk/c/b;->cH:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/f;J)J
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/f;->S:J

    return-wide p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/f;->E()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/activity/b/f;)Lcom/applovin/impl/adview/activity/b/f$b;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/f;->I:Lcom/applovin/impl/adview/activity/b/f$b;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/activity/b/f;)Landroid/media/MediaPlayer;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/f;->H:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private d(Z)V
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->B()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/f;->M:I

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/f;->F()V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 775
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->e:Landroid/app/Activity;

    if-eqz p1, :cond_0

    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_mute_to_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 781
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->y:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 782
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 790
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aE()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aF()Landroid/net/Uri;

    move-result-object p1

    .line 793
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 795
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 688
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Showing postitial..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->aL()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/activity/b/f;->d(Z)V

    .line 694
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->G:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->h:Lcom/applovin/impl/adview/m;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/f;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/u;Landroid/view/View;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_onPoststitialShow("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/applovin/impl/adview/activity/b/f;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/activity/b/f;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->S()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/String;J)V

    .line 700
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->h:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->h:Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/f$2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/f$2;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/f;->a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->h:Lcom/applovin/impl/adview/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 721
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 723
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->h:Lcom/applovin/impl/adview/m;

    if-eqz v1, :cond_3

    .line 725
    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->h:Lcom/applovin/impl/adview/m;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v4, "close button"

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/u;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 731
    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    .line 733
    invoke-virtual {v4}, Lcom/applovin/impl/adview/u;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;Ljava/util/List;)V

    .line 738
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->v()V

    const/4 v0, 0x1

    .line 740
    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->F:Z

    return-void
.end method

.method protected B()I
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 664
    iget-boolean v2, p0, Lcom/applovin/impl/adview/activity/b/f;->O:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    long-to-float v0, v0

    .line 669
    iget-wide v1, p0, Lcom/applovin/impl/adview/activity/b/f;->E:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 674
    :cond_1
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/f;->M:I

    return v0
.end method

.method public a()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 542
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f$7;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/f$7;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/adview/activity/b/f;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->k()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 448
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->f:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 449
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/e;Landroid/net/Uri;Landroid/graphics/PointF;Lcom/applovin/impl/adview/activity/b/a;Landroid/content/Context;)V

    .line 451
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->q:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 453
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/d;->b()V

    .line 455
    iget p1, p0, Lcom/applovin/impl/adview/activity/b/f;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/applovin/impl/adview/activity/b/f;->n:I

    goto :goto_1

    .line 460
    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/f;->D()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 11

    .line 269
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->G:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->y:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->x:Lcom/applovin/impl/adview/m;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/f;->w:Lcom/applovin/impl/adview/a;

    iget-object v5, p0, Lcom/applovin/impl/adview/activity/b/f;->A:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v7, p0, Lcom/applovin/impl/adview/activity/b/f;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v8, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    iget-object v9, p0, Lcom/applovin/impl/adview/activity/b/f;->B:Landroid/widget/ImageView;

    move-object v10, p1

    invoke-virtual/range {v0 .. v10}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/v;Lcom/applovin/impl/adview/a;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/u;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    .line 271
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object p1

    const-string v0, "audio_focus_request"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setAudioFocusRequest(I)V

    .line 286
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 289
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/f;->a(Z)V

    .line 291
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->h()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 292
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 294
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->am()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->t:Lcom/applovin/impl/sdk/b/b;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    new-instance v1, Lcom/applovin/impl/adview/activity/b/f$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/activity/b/f$3;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/b/b;->a(Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/u;->a()V

    .line 314
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    .line 317
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    if-eqz p1, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->x()V

    .line 323
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 325
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->d:Lcom/applovin/impl/sdk/d/d;

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/d;->b(J)V

    .line 328
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->x:Lcom/applovin/impl/adview/m;

    if-eqz p1, :cond_5

    .line 330
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/adview/activity/b/f$4;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/f$4;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    .line 337
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->s()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V

    .line 340
    :cond_5
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/f;->S:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/f;->R:J

    .line 493
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping video with skip time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/f;->R:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/d;->f()V

    .line 497
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/f;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/f;->m:I

    .line 499
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->h()V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->A()V

    :goto_0
    return-void
.end method

.method protected c(J)V
    .locals 0

    .line 345
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/f;->E:J

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered media error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->P:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/h;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    check-cast v0, Lcom/applovin/impl/sdk/ad/h;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/ad/h;->onAdDisplayFailed(Ljava/lang/String;)V

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->h()V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 370
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->c(Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/f;->a(J)V

    goto :goto_0

    .line 378
    :cond_0
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/f;->F:Z

    if-nez p1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/f;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    .line 516
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    .line 518
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->c()V

    .line 520
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Paused video at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/applovin/impl/adview/activity/b/f;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "FullscreenVideoAdPresenter"

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->b()V

    .line 392
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->K:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->m()V

    .line 396
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    return-void
.end method

.method public k()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Destroying video components"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->fR:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/s;->a(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    const-string/jumbo v2, "video_caching_failed"

    invoke-virtual {v0, p0, v2}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    .line 420
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->H:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Unable to destroy presenter"

    .line 430
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    :cond_4
    :goto_0
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->k()V

    return-void
.end method

.method protected m()V
    .locals 6

    .line 836
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->B()I

    move-result v1

    iget-boolean v2, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->r()Z

    move-result v3

    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/f;->R:J

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 4

    const-string/jumbo v0, "video_caching_failed"

    .line 916
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ad_id"

    .line 919
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 922
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->b:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->fy:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->L:Z

    if-eqz v0, :cond_1

    const-string v0, "load_response_code"

    .line 924
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "load_exception_message"

    .line 925
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    .line 932
    :cond_0
    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/f;->O:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->v:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 935
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

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/activity/b/f;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected r()Z
    .locals 2

    .line 656
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->B()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->Q()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected s()Z
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected u()V
    .locals 6

    .line 845
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ae()I

    move-result v0

    if-ltz v0, :cond_5

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    goto :goto_2

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 860
    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/f;->E:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    add-long/2addr v2, v4

    .line 865
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->af()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 867
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->l()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_3

    .line 870
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    goto :goto_1

    .line 874
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->t()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_4

    .line 877
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    :goto_1
    long-to-double v0, v2

    .line 882
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/f;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->ae()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 885
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/f;->b(J)V

    :cond_5
    return-void
.end method

.method public w()V
    .locals 2

    .line 892
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->w()V

    .line 895
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->G:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->z:Lcom/applovin/impl/adview/v;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/view/View;)V

    .line 896
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->G:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/f;->x:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/view/View;)V

    .line 899
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/f;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->F:Z

    if-eqz v0, :cond_1

    .line 901
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/f;->F()V

    :cond_1
    return-void
.end method

.method protected x()V
    .locals 1

    .line 609
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f$9;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/f$9;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected y()V
    .locals 1

    .line 624
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f$10;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/f$10;-><init>(Lcom/applovin/impl/adview/activity/b/f;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected z()V
    .locals 4

    .line 801
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/f;->H:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    int-to-float v1, v1

    .line 809
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 811
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    .line 812
    invoke-direct {p0, v2}, Lcom/applovin/impl/adview/activity/b/f;->e(Z)V

    .line 813
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/f;->D:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/f;->a(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
