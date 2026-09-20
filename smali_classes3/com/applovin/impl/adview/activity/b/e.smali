.class public Lcom/applovin/impl/adview/activity/b/e;
.super Lcom/applovin/impl/adview/activity/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/activity/b/e$a;,
        Lcom/applovin/impl/adview/activity/b/e$c;,
        Lcom/applovin/impl/adview/activity/b/e$b;
    }
.end annotation


# instance fields
.field protected A:Lcom/applovin/impl/adview/v;

.field protected final B:Landroid/widget/ProgressBar;

.field protected final C:Lcom/applovin/impl/adview/j;

.field protected D:Z

.field protected E:J

.field protected F:I

.field protected G:Z

.field protected H:Z

.field private final I:Lcom/applovin/impl/adview/activity/a/c;

.field private final J:Lcom/applovin/impl/adview/activity/b/e$a;

.field private final K:Landroid/os/Handler;

.field private final L:Z

.field private M:J

.field private final N:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final O:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private P:J

.field private Q:J

.field protected final v:Lcom/applovin/exoplayer2/ui/g;

.field protected final w:Lcom/applovin/exoplayer2/aw;

.field protected final x:Lcom/applovin/impl/adview/a;

.field protected final y:Lcom/applovin/impl/adview/m;

.field protected final z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 5
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

    .line 137
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/adview/activity/b/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 91
    new-instance p3, Lcom/applovin/impl/adview/activity/a/c;

    iget-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/e;->e:Landroid/app/Activity;

    iget-object p7, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {p3, p5, p6, p7}, Lcom/applovin/impl/adview/activity/a/c;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/e;->I:Lcom/applovin/impl/adview/activity/a/c;

    .line 107
    new-instance p3, Lcom/applovin/impl/adview/activity/b/e$a;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lcom/applovin/impl/adview/activity/b/e$a;-><init>(Lcom/applovin/impl/adview/activity/b/e;Lcom/applovin/impl/adview/activity/b/e$1;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/e;->J:Lcom/applovin/impl/adview/activity/b/e$a;

    .line 108
    new-instance p6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/applovin/impl/adview/activity/b/e;->K:Landroid/os/Handler;

    .line 109
    new-instance p7, Lcom/applovin/impl/adview/j;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {p7, p6, v0}, Lcom/applovin/impl/adview/j;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/p;)V

    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/e;->C:Lcom/applovin/impl/adview/j;

    .line 112
    iget-object p6, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p6}, Lcom/applovin/impl/sdk/ad/e;->f()Z

    move-result p6

    iput-boolean p6, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    .line 115
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->isVideoMutedInitially(Lcom/applovin/impl/sdk/p;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    const-wide/16 v0, -0x1

    .line 120
    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/e;->M:J

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x2

    .line 126
    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/e;->P:J

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/e;->Q:J

    .line 139
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->hasVideoUrl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    new-instance v2, Lcom/applovin/impl/adview/activity/b/e$c;

    invoke-direct {v2, p0, p5}, Lcom/applovin/impl/adview/activity/b/e$c;-><init>(Lcom/applovin/impl/adview/activity/b/e;Lcom/applovin/impl/adview/activity/b/e$1;)V

    .line 144
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->r()J

    move-result-wide v3

    cmp-long v0, v3, v0

    const/16 v1, 0x8

    if-ltz v0, :cond_0

    .line 147
    new-instance v0, Lcom/applovin/impl/adview/m;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->x()Lcom/applovin/impl/adview/i$a;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/adview/i$a;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    .line 148
    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/applovin/impl/adview/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 153
    :cond_0
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    .line 157
    :goto_0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    invoke-static {v0, p4}, Lcom/applovin/impl/adview/activity/b/e;->a(ZLcom/applovin/impl/sdk/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    .line 160
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x1

    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/e;->d(Z)V

    goto :goto_1

    .line 168
    :cond_1
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    .line 172
    :goto_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->C()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    new-instance v2, Lcom/applovin/impl/adview/w;

    invoke-direct {v2, p4}, Lcom/applovin/impl/adview/w;-><init>(Lcom/applovin/impl/sdk/p;)V

    .line 177
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/applovin/impl/adview/w;->a(Ljava/lang/ref/WeakReference;)V

    .line 178
    new-instance p3, Lcom/applovin/impl/adview/v;

    invoke-direct {p3, v2, p2}, Lcom/applovin/impl/adview/v;-><init>(Lcom/applovin/impl/adview/w;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    .line 179
    invoke-virtual {p3, v0}, Lcom/applovin/impl/adview/v;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 183
    :cond_2
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    :goto_2
    if-eqz p6, :cond_3

    .line 190
    new-instance p3, Lcom/applovin/impl/adview/a;

    sget-object p6, Lcom/applovin/impl/sdk/c/b;->cP:Lcom/applovin/impl/sdk/c/b;

    .line 191
    invoke-virtual {p4, p6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    const v0, 0x101007a

    invoke-direct {p3, p2, p6, v0}, Lcom/applovin/impl/adview/a;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/e;->x:Lcom/applovin/impl/adview/a;

    const-string p6, "#75FFFFFF"

    .line 193
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p3, p6}, Lcom/applovin/impl/adview/a;->setColor(I)V

    const-string p6, "#00000000"

    .line 194
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p3, p6}, Lcom/applovin/impl/adview/a;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {p3, v1}, Lcom/applovin/impl/adview/a;->setVisibility(I)V

    .line 199
    invoke-static {p2}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p3

    const-string/jumbo p6, "video_caching_failed"

    invoke-virtual {p3, p0, p6}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    goto :goto_3

    .line 203
    :cond_3
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->x:Lcom/applovin/impl/adview/a;

    .line 207
    :goto_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->O()Z

    move-result p3

    const/4 p6, 0x0

    if-eqz p3, :cond_5

    .line 209
    new-instance p3, Landroid/widget/ProgressBar;

    const v0, 0x1010078

    invoke-direct {p3, p2, p5, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/e;->B:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    .line 210
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 211
    invoke-virtual {p3, p6, p6, p6, p6}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 213
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->P()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 216
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_4
    sget-object p1, Lcom/applovin/impl/sdk/c/b;->cM:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 221
    new-instance p1, Lcom/applovin/impl/adview/activity/b/e$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/activity/b/e$1;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    const-string p3, "PROGRESS_BAR"

    invoke-virtual {p7, p3, v0, v1, p1}, Lcom/applovin/impl/adview/j;->a(Ljava/lang/String;JLcom/applovin/impl/adview/j$a;)V

    goto :goto_4

    .line 248
    :cond_5
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->B:Landroid/widget/ProgressBar;

    .line 252
    :goto_4
    new-instance p1, Lcom/applovin/exoplayer2/aw$a;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/aw$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/aw$a;->a()Lcom/applovin/exoplayer2/aw;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    .line 254
    new-instance p3, Lcom/applovin/impl/adview/activity/b/e$b;

    invoke-direct {p3, p0, p5}, Lcom/applovin/impl/adview/activity/b/e$b;-><init>(Lcom/applovin/impl/adview/activity/b/e;Lcom/applovin/impl/adview/activity/b/e$1;)V

    .line 255
    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/an$b;)V

    .line 256
    invoke-virtual {p1, p6}, Lcom/applovin/exoplayer2/aw;->c(I)V

    .line 259
    new-instance p5, Lcom/applovin/exoplayer2/ui/g;

    invoke-direct {p5, p2}, Lcom/applovin/exoplayer2/ui/g;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e;->v:Lcom/applovin/exoplayer2/ui/g;

    .line 260
    invoke-virtual {p5}, Lcom/applovin/exoplayer2/ui/g;->b()V

    .line 261
    invoke-virtual {p5, p3}, Lcom/applovin/exoplayer2/ui/g;->setControllerVisibilityListener(Lcom/applovin/exoplayer2/ui/f$d;)V

    .line 262
    invoke-virtual {p5, p1}, Lcom/applovin/exoplayer2/ui/g;->setPlayer(Lcom/applovin/exoplayer2/an;)V

    .line 263
    new-instance p1, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object p6, Lcom/applovin/impl/sdk/c/b;->aZ:Lcom/applovin/impl/sdk/c/b;

    invoke-direct {p1, p4, p6, p2, p3}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/c/b;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {p5, p1}, Lcom/applovin/exoplayer2/ui/g;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->B()V

    return-void

    .line 139
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to use fullscreen video ad presenter for non-video ad"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private G()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->D()Lcom/applovin/impl/adview/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0}, Lcom/applovin/impl/adview/t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {v1}, Lcom/applovin/impl/adview/v;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 464
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/adview/t;->f()J

    move-result-wide v2

    .line 465
    new-instance v0, Lcom/applovin/impl/adview/activity/b/e$5;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/e$5;-><init>(Lcom/applovin/impl/adview/activity/b/e;ZJ)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private H()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->I:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->i:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/adview/m;)V

    .line 883
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/e;->k:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/e;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/e;->P:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/e;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/e;->H()V

    return-void
.end method

.method private static a(ZLcom/applovin/impl/sdk/p;)Z
    .locals 2

    .line 731
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 736
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

    .line 746
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

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/e;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/e;->Q:J

    return-wide p1
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 672
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->D()V

    .line 675
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->I:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->h:Lcom/applovin/impl/adview/m;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/e;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/a/c;->a(Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/u;Landroid/view/View;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_onPoststitialShow("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/applovin/impl/adview/activity/b/e;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/activity/b/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->S()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/e;->a(Ljava/lang/String;J)V

    .line 681
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->h:Lcom/applovin/impl/adview/m;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->h:Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/e$9;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/e$9;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/e;->a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->h:Lcom/applovin/impl/adview/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 702
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->h:Lcom/applovin/impl/adview/m;

    if-eqz v1, :cond_2

    .line 706
    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->h:Lcom/applovin/impl/adview/m;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v4, "close button"

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/u;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 712
    new-instance v1, Lcom/applovin/impl/sdk/a/d;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    .line 714
    invoke-virtual {v4}, Lcom/applovin/impl/adview/u;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/a/d;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;Ljava/util/List;)V

    .line 719
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->v()V

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    return-void
.end method

.method protected B()V
    .locals 4

    .line 341
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/e;->a(Z)V

    .line 344
    new-instance v0, Lcom/applovin/exoplayer2/k/p;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->e:Landroid/app/Activity;

    const-string v3, "com.applovin.sdk"

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/k/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    new-instance v1, Lcom/applovin/exoplayer2/h/u$a;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/h/u$a;-><init>(Lcom/applovin/exoplayer2/k/i$a;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    .line 348
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/ab;->a(Landroid/net/Uri;)Lcom/applovin/exoplayer2/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/h/u$a;->a(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/h/u;

    move-result-object v0

    .line 351
    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    xor-int/lit8 v1, v1, 0x1

    .line 352
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/aw;->a(F)V

    .line 355
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/h/p;)V

    .line 356
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->w()V

    .line 357
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    return-void
.end method

.method protected C()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->r()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/adview/activity/b/e$4;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/activity/b/e$4;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/e;->a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->F()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/e;->F:I

    .line 531
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    return-void
.end method

.method protected E()V
    .locals 6

    .line 549
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Skip video resume - postitial shown"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Skip video resume - app paused"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 561
    :cond_3
    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/e;->M:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 565
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resuming video at position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms for MediaPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    .line 568
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->a()V

    const-wide/16 v0, -0x1

    .line 570
    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/e;->M:J

    .line 572
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 575
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->x()V

    goto :goto_0

    .line 580
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid last video position, isVideoPlaying="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/aw;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected F()I
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 644
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->I()J

    move-result-wide v0

    .line 647
    iget-boolean v2, p0, Lcom/applovin/impl/adview/activity/b/e;->H:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x64

    return v0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    long-to-float v0, v0

    .line 652
    iget-wide v1, p0, Lcom/applovin/impl/adview/activity/b/e;->E:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 657
    :cond_2
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/e;->F:I

    return v0
.end method

.method public a()V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 537
    new-instance v0, Lcom/applovin/impl/adview/activity/b/e$6;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/e$6;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/adview/activity/b/e;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 7

    .line 434
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->k()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 442
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->f:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 443
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/e;Landroid/net/Uri;Landroid/graphics/PointF;Lcom/applovin/impl/adview/activity/b/a;Landroid/content/Context;)V

    .line 445
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->q:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 447
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/d;->b()V

    .line 449
    iget p1, p0, Lcom/applovin/impl/adview/activity/b/e;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/applovin/impl/adview/activity/b/e;->n:I

    goto :goto_1

    .line 454
    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/e;->G()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 11

    .line 280
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->I:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/e;->x:Lcom/applovin/impl/adview/a;

    iget-object v5, p0, Lcom/applovin/impl/adview/activity/b/e;->B:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/applovin/impl/adview/activity/b/e;->v:Lcom/applovin/exoplayer2/ui/g;

    iget-object v7, p0, Lcom/applovin/impl/adview/activity/b/e;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v8, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    const/4 v9, 0x0

    move-object v10, p1

    invoke-virtual/range {v0 .. v10}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/m;Lcom/applovin/impl/adview/v;Lcom/applovin/impl/adview/a;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/u;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    .line 283
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/u;->a()V

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    .line 290
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->am()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->t:Lcom/applovin/impl/sdk/b/b;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    new-instance v1, Lcom/applovin/impl/adview/activity/b/e$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/activity/b/e$2;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/b/b;->a(Lcom/applovin/impl/sdk/ad/e;Ljava/lang/Runnable;)V

    .line 304
    :cond_1
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->x()V

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->f:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 312
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->d:Lcom/applovin/impl/sdk/d/d;

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/d;->b(J)V

    .line 315
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    if-eqz p1, :cond_4

    .line 317
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/adview/activity/b/e$3;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/e$3;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    .line 324
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->s()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V

    .line 327
    :cond_4
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/e;->Q:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/e;->P:J

    .line 487
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping video with skip time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/e;->P:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/d;->f()V

    .line 491
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/adview/activity/b/e;->m:I

    .line 493
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->h()V

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->A()V

    :goto_0
    return-void
.end method

.method protected c(J)V
    .locals 0

    .line 332
    iput-wide p1, p0, Lcom/applovin/impl/adview/activity/b/e;->E:J

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered media error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->N:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v0, v0, Lcom/applovin/impl/sdk/ad/h;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    check-cast v0, Lcom/applovin/impl/sdk/ad/h;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/ad/h;->onAdDisplayFailed(Ljava/lang/String;)V

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->h()V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 382
    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->c(Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 386
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/e;->a(J)V

    goto :goto_0

    .line 390
    :cond_0
    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    if-nez p1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/e;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected d(Z)V
    .locals 2

    .line 756
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->e:Landroid/app/Activity;

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

    .line 762
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 763
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 771
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aE()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->aF()Landroid/net/Uri;

    move-result-object p1

    .line 774
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 776
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->I()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/adview/activity/b/e;->M:J

    .line 511
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/aw;->a(Z)V

    .line 513
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->c()V

    .line 515
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Paused video at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/applovin/impl/adview/activity/b/e;->M:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "Nothing to pause"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "FullscreenVideoAdExoPlayerPresenter"

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->C:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->b()V

    .line 404
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->K:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->m()V

    .line 408
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->fR:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/s;->a(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->E()V

    .line 422
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    const-string/jumbo v1, "video_caching_failed"

    invoke-virtual {v0, p0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 427
    :cond_1
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->k()V

    return-void
.end method

.method protected m()V
    .locals 6

    .line 811
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->F()I

    move-result v1

    iget-boolean v2, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->r()Z

    move-result v3

    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/e;->P:J

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/adview/activity/b/a;->a(IZZJ)V

    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 4

    const-string/jumbo v0, "video_caching_failed"

    .line 891
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ad_id"

    .line 894
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 897
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->b:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->fy:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->L:Z

    if-eqz v0, :cond_1

    const-string v0, "load_response_code"

    .line 899
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "load_exception_message"

    .line 900
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    .line 908
    :cond_0
    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/e;->H:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/aw;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 911
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

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/activity/b/e;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected r()Z
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->F()I

    move-result v0

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->Q()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected s()Z
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->r()Z

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

    .line 820
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ae()I

    move-result v0

    if-ltz v0, :cond_5

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->ad()J

    move-result-wide v0

    goto :goto_2

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 835
    iget-wide v4, p0, Lcom/applovin/impl/adview/activity/b/e;->E:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    add-long/2addr v2, v4

    .line 840
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->af()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 842
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->l()F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_3

    .line 845
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    goto :goto_1

    .line 849
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->t()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_4

    .line 852
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    :goto_1
    long-to-double v0, v2

    .line 857
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/e;->ae()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 860
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/adview/activity/b/e;->b(J)V

    :cond_5
    return-void
.end method

.method public w()V
    .locals 2

    .line 867
    invoke-super {p0}, Lcom/applovin/impl/adview/activity/b/a;->w()V

    .line 870
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->I:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->A:Lcom/applovin/impl/adview/v;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/view/View;)V

    .line 871
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e;->I:Lcom/applovin/impl/adview/activity/a/c;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->y:Lcom/applovin/impl/adview/m;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/activity/a/c;->a(Landroid/view/View;)V

    .line 874
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/e;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    if-eqz v0, :cond_1

    .line 876
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/b/e;->H()V

    :cond_1
    return-void
.end method

.method protected x()V
    .locals 1

    .line 586
    new-instance v0, Lcom/applovin/impl/adview/activity/b/e$7;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/e$7;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected y()V
    .locals 1

    .line 601
    new-instance v0, Lcom/applovin/impl/adview/activity/b/e$8;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/activity/b/e$8;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected z()V
    .locals 3

    .line 784
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    xor-int/lit8 v0, v0, 0x1

    .line 787
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/aw;->a(F)V

    .line 789
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/e;->d(Z)V

    .line 790
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/e;->D:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/e;->a(ZJ)V

    return-void
.end method
