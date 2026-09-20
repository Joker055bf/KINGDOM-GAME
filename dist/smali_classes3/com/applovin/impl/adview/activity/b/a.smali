.class public abstract Lcom/applovin/impl/adview/activity/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;
.implements Lcom/applovin/impl/sdk/b/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/activity/b/a$b;,
        Lcom/applovin/impl/adview/activity/b/a$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private B:J

.field private C:Z

.field private D:I

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Lcom/applovin/impl/sdk/l;

.field private G:Z

.field protected final a:Lcom/applovin/impl/sdk/ad/e;

.field protected final b:Lcom/applovin/impl/sdk/p;

.field protected final c:Lcom/applovin/impl/sdk/y;

.field protected final d:Lcom/applovin/impl/sdk/d/d;

.field protected e:Landroid/app/Activity;

.field protected f:Lcom/applovin/adview/AppLovinAdView;

.field protected g:Lcom/applovin/impl/adview/u;

.field protected final h:Lcom/applovin/impl/adview/m;

.field protected final i:Lcom/applovin/impl/adview/m;

.field protected final j:J

.field protected k:J

.field protected l:Z

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Lcom/applovin/sdk/AppLovinAdClickListener;

.field protected r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field protected s:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field protected final t:Lcom/applovin/impl/sdk/b/b;

.field protected u:Lcom/applovin/impl/sdk/utils/p;

.field private final v:Landroid/os/Handler;

.field private final w:Lcom/applovin/impl/sdk/utils/a;

.field private final x:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

.field private final y:Lcom/applovin/impl/sdk/k$a;

.field private final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 4
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

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->v:Landroid/os/Handler;

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/a;->j:J

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 121
    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/a;->k:J

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/applovin/impl/adview/activity/b/a;->D:I

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->E:Ljava/util/ArrayList;

    .line 128
    iput v0, p0, Lcom/applovin/impl/adview/activity/b/a;->m:I

    .line 129
    iput v0, p0, Lcom/applovin/impl/adview/activity/b/a;->n:I

    .line 132
    sget v1, Lcom/applovin/impl/sdk/k;->a:I

    iput v1, p0, Lcom/applovin/impl/adview/activity/b/a;->o:I

    .line 147
    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/a;->G:Z

    .line 280
    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    .line 281
    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    .line 282
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    .line 283
    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/a;->e:Landroid/app/Activity;

    .line 285
    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/a;->q:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 286
    iput-object p6, p0, Lcom/applovin/impl/adview/activity/b/a;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 287
    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/a;->s:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 289
    new-instance p5, Lcom/applovin/impl/sdk/b/b;

    invoke-direct {p5, p2, p4}, Lcom/applovin/impl/sdk/b/b;-><init>(Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    .line 290
    invoke-virtual {p5, p0}, Lcom/applovin/impl/sdk/b/b;->a(Lcom/applovin/impl/sdk/b/b$a;)V

    .line 291
    new-instance p5, Lcom/applovin/impl/sdk/d/d;

    invoke-direct {p5, p1, p4}, Lcom/applovin/impl/sdk/d/d;-><init>(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;Lcom/applovin/impl/sdk/p;)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/a;->d:Lcom/applovin/impl/sdk/d/d;

    .line 292
    new-instance p6, Lcom/applovin/impl/sdk/l;

    invoke-direct {p6, p4}, Lcom/applovin/impl/sdk/l;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object p6, p0, Lcom/applovin/impl/adview/activity/b/a;->F:Lcom/applovin/impl/sdk/l;

    .line 294
    new-instance p6, Lcom/applovin/impl/adview/activity/b/a$b;

    const/4 p7, 0x0

    invoke-direct {p6, p0, p7}, Lcom/applovin/impl/adview/activity/b/a$b;-><init>(Lcom/applovin/impl/adview/activity/b/a;Lcom/applovin/impl/adview/activity/b/a$1;)V

    .line 297
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cT:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.render_process_gone"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 303
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/n;

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/p;->K()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, v1, v2, p2}, Lcom/applovin/impl/adview/n;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    .line 304
    invoke-virtual {v0, p6}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/activity/b/a$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/activity/b/a$1;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 321
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/b;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p5}, Lcom/applovin/impl/adview/b;->a(Lcom/applovin/impl/sdk/d/d;)V

    .line 324
    sget-object p5, Lcom/applovin/impl/sdk/c/b;->az:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, p5}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 326
    new-instance p5, Lcom/applovin/impl/adview/u;

    new-instance v0, Lcom/applovin/impl/adview/o;

    invoke-direct {v0, p3, p4}, Lcom/applovin/impl/adview/o;-><init>(Ljava/util/Map;Lcom/applovin/impl/sdk/p;)V

    invoke-direct {p5, v0, p2}, Lcom/applovin/impl/adview/u;-><init>(Lcom/applovin/impl/adview/o;Landroid/content/Context;)V

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/a;->g:Lcom/applovin/impl/adview/u;

    .line 330
    :cond_1
    invoke-virtual {p4}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/e;)V

    .line 332
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->u()Ljava/util/List;

    move-result-object p3

    .line 335
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-gez p5, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 343
    :cond_2
    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/a;->h:Lcom/applovin/impl/adview/m;

    goto :goto_1

    .line 337
    :cond_3
    :goto_0
    new-instance p3, Lcom/applovin/impl/adview/m;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->v()Lcom/applovin/impl/adview/i$a;

    move-result-object p5

    invoke-direct {p3, p5, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/adview/i$a;Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/a;->h:Lcom/applovin/impl/adview/m;

    const/16 p5, 0x8

    .line 338
    invoke-virtual {p3, p5}, Lcom/applovin/impl/adview/m;->setVisibility(I)V

    .line 339
    invoke-virtual {p3, p6}, Lcom/applovin/impl/adview/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :goto_1
    new-instance p3, Lcom/applovin/impl/adview/m;

    sget-object p5, Lcom/applovin/impl/adview/i$a;->b:Lcom/applovin/impl/adview/i$a;

    invoke-direct {p3, p5, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/adview/i$a;Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/a;->i:Lcom/applovin/impl/adview/m;

    .line 348
    new-instance p2, Lcom/applovin/impl/adview/activity/b/a$3;

    invoke-direct {p2, p0}, Lcom/applovin/impl/adview/activity/b/a$3;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    invoke-virtual {p3, p2}, Lcom/applovin/impl/adview/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget-object p2, Lcom/applovin/impl/sdk/c/b;->cD:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 360
    new-instance p2, Lcom/applovin/impl/adview/activity/b/a$4;

    invoke-direct {p2, p0, p4, p1}, Lcom/applovin/impl/adview/activity/b/a$4;-><init>(Lcom/applovin/impl/adview/activity/b/a;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/ad/e;)V

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/a;->x:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    goto :goto_2

    .line 373
    :cond_4
    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/a;->x:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    .line 376
    :goto_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->al()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 378
    new-instance p1, Lcom/applovin/impl/adview/activity/b/a$5;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/activity/b/a$5;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->y:Lcom/applovin/impl/sdk/k$a;

    goto :goto_3

    .line 407
    :cond_5
    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/a;->y:Lcom/applovin/impl/sdk/k$a;

    .line 411
    :goto_3
    sget-object p1, Lcom/applovin/impl/sdk/c/b;->fn:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p4, p1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 413
    new-instance p1, Lcom/applovin/impl/adview/activity/b/a$6;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/activity/b/a$6;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->w:Lcom/applovin/impl/sdk/utils/a;

    goto :goto_4

    .line 456
    :cond_6
    iput-object p7, p0, Lcom/applovin/impl/adview/activity/b/a;->w:Lcom/applovin/impl/sdk/utils/a;

    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/a;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static a(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Landroid/app/Activity;Lcom/applovin/impl/adview/activity/b/a$a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/ad/e;",
            "Lcom/applovin/sdk/AppLovinAdClickListener;",
            "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
            "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/applovin/impl/sdk/p;",
            "Landroid/app/Activity;",
            "Lcom/applovin/impl/adview/activity/b/a$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/impl/sdk/ad/e;->aJ()Z

    move-result v0

    move-object/from16 v11, p0

    .line 162
    instance-of v1, v11, Lcom/applovin/impl/c/a;

    const-string v12, "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter."

    const-string v13, "AppLovinFullscreenActivity"

    const-string v14, " and throwable: "

    if-eqz v1, :cond_2

    const-string v15, "Failed to create FullscreenVastVideoAdPresenter with sdk: "

    if-eqz v0, :cond_1

    .line 170
    :try_start_0
    new-instance v0, Lcom/applovin/impl/adview/activity/b/c;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/c;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 174
    invoke-virtual/range {p5 .. p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    invoke-virtual {v1, v13, v12, v0}, Lcom/applovin/impl/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    :cond_0
    :try_start_1
    new-instance v0, Lcom/applovin/impl/adview/activity/b/d;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/d;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 190
    :cond_1
    :try_start_2
    new-instance v0, Lcom/applovin/impl/adview/activity/b/d;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/d;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 201
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/impl/sdk/ad/e;->hasVideoUrl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/impl/sdk/ad/e;->aM()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    :try_start_3
    new-instance v0, Lcom/applovin/impl/adview/activity/b/g;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/g;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create FullscreenWebVideoAdPresenter with sdk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    .line 221
    :try_start_4
    new-instance v0, Lcom/applovin/impl/adview/activity/b/e;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/e;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    .line 225
    invoke-virtual/range {p5 .. p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    invoke-virtual {v1, v13, v12, v0}, Lcom/applovin/impl/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :cond_4
    :try_start_5
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/f;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create FullscreenVideoAdExoPlayerPresenter with sdk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 243
    :cond_5
    :try_start_6
    new-instance v0, Lcom/applovin/impl/adview/activity/b/f;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/f;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_0

    :catchall_6
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create FullscreenVideoAdPresenter with sdk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 256
    :cond_6
    :try_start_7
    new-instance v0, Lcom/applovin/impl/adview/activity/b/b;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/adview/activity/b/b;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 267
    :goto_0
    invoke-direct {v0}, Lcom/applovin/impl/adview/activity/b/a;->c()V

    .line 269
    invoke-interface {v10, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Lcom/applovin/impl/adview/activity/b/a;)V

    return-void

    :catchall_7
    move-exception v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create FullscreenGraphicAdPresenter with sdk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Lcom/applovin/impl/adview/activity/b/a$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/activity/b/a;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/a;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/activity/b/a;)Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/a;->x:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/adview/activity/b/a;)I
    .locals 2

    .line 75
    iget v0, p0, Lcom/applovin/impl/adview/activity/b/a;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/impl/adview/activity/b/a;->D:I

    return v0
.end method

.method private c()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->x:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    if-eqz v0, :cond_0

    .line 464
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applovin.app_killed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->y:Lcom/applovin/impl/sdk/k$a;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ad()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->y:Lcom/applovin/impl/sdk/k$a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/k$a;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->w:Lcom/applovin/impl/sdk/utils/a;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->w:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/activity/b/a;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/applovin/impl/adview/activity/b/a;->D:I

    return p0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/activity/b/a;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/applovin/impl/adview/activity/b/a;->E:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    if-eqz v0, :cond_0

    .line 694
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown(int, KeyEvent) -  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(IZZJ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 789
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 792
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->hasVideoUrl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/impl/adview/activity/b/a;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    :cond_0
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->s:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v2, v0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    int-to-double v3, v7

    move/from16 v5, p3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    .line 797
    :cond_1
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->hasVideoUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->d:Lcom/applovin/impl/sdk/d/d;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/d/d;->c(J)V

    .line 804
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/applovin/impl/adview/activity/b/a;->j:J

    sub-long v8, v1, v3

    .line 805
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, v0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackVideoEnd(Lcom/applovin/impl/sdk/ad/e;JIZ)V

    .line 808
    iget-wide v1, v0, Lcom/applovin/impl/adview/activity/b/a;->k:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/applovin/impl/adview/activity/b/a;->k:J

    sub-long v3, v1, v3

    .line 809
    :goto_0
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v10

    iget-object v11, v0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    iget-object v14, v0, Lcom/applovin/impl/adview/activity/b/a;->E:Ljava/util/ArrayList;

    iget-boolean v1, v0, Lcom/applovin/impl/adview/activity/b/a;->p:Z

    iget v2, v0, Lcom/applovin/impl/adview/activity/b/a;->o:I

    move-wide v12, v3

    move-wide/from16 v15, p4

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v10 .. v18}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackFullScreenAdClosed(Lcom/applovin/impl/sdk/ad/e;JLjava/util/List;JZI)V

    .line 811
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Video ad ended at percent: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%, elapsedTime: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms, skipTimeMillis: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v5, p4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms, closeTimeMillis: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovinFullscreenActivity"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public abstract a(J)V
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    .line 686
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged(Configuration) -  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/view/ViewGroup;)V
.end method

.method protected a(Lcom/applovin/impl/adview/m;JLjava/lang/Runnable;)V
    .locals 7

    .line 755
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->cA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    return-void

    .line 757
    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/activity/b/a$9;

    invoke-direct {v0, p0, p1, p4}, Lcom/applovin/impl/adview/activity/b/a$9;-><init>(Lcom/applovin/impl/adview/activity/b/a;Lcom/applovin/impl/adview/m;Ljava/lang/Runnable;)V

    .line 782
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/z;

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {v2, p1, v0}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    sget-object v3, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V

    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->v:Landroid/os/Handler;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 718
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 731
    new-instance v0, Lcom/applovin/impl/adview/activity/b/a$8;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/activity/b/a$8;-><init>(Lcom/applovin/impl/adview/activity/b/a;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/a;->e:Landroid/app/Activity;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/Utils;->checkCachedResourcesExist(ZLcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 493
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->fs:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_1

    .line 497
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dismissing ad due to missing resources: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    const-string v1, "Missing ad resources"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/applovin/impl/adview/p;->a(Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/adview/AppLovinFullscreenActivity;)V

    .line 504
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    goto :goto_0

    .line 508
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Streaming ad due to missing ad resources: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected a(ZJ)V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "javascript:al_mute();"

    goto :goto_0

    :cond_0
    const-string p1, "javascript:al_unmute();"

    .line 879
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method protected b(J)V
    .locals 4

    .line 855
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling report reward in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    new-instance v1, Lcom/applovin/impl/adview/activity/b/a$10;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/activity/b/a$10;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->u:Lcom/applovin/impl/sdk/utils/p;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 724
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected b(Z)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->cQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/adview/activity/b/a;->a(ZJ)V

    .line 522
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 523
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/w;->a(Ljava/lang/Object;)V

    .line 526
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/e;->hasVideoUrl()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->s:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 531
    :cond_1
    new-instance p1, Lcom/applovin/impl/adview/activity/b;

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->e:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/applovin/impl/adview/activity/b;-><init>(Landroid/app/Activity;)V

    .line 532
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/activity/b;->a(Lcom/applovin/impl/sdk/ad/e;)V

    .line 534
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d/d;->a()V

    .line 535
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/e;->setHasShown(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 557
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowFocusChanged(boolean) - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:al_onWindowFocusChanged( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " );"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public f()V
    .locals 5

    .line 540
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "onResume()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/applovin/impl/adview/activity/b/a;->B:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/d;->d(J)V

    const-string v0, "javascript:al_onAppResumed();"

    .line 545
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->q()V

    .line 549
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/b;->a()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 3

    .line 563
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "onPause()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/adview/activity/b/a;->B:J

    const-string v0, "javascript:al_onAppPaused();"

    .line 567
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->t:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/b;->a()V

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->p()V

    return-void
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/a;->C:Z

    .line 583
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, "dismiss()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->o()Lcom/applovin/impl/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->e()V

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->v:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->T()I

    move-result v0

    int-to-long v2, v0

    const-string v0, "javascript:al_onPoststitialDismiss();"

    invoke-virtual {p0, v0, v2, v3}, Lcom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V

    .line 596
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->n()V

    .line 597
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->d:Lcom/applovin/impl/sdk/d/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/d;->c()V

    .line 599
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->F:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->a()V

    .line 605
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->x:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    if-eqz v0, :cond_2

    .line 608
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    new-instance v4, Lcom/applovin/impl/adview/activity/b/a$7;

    invoke-direct {v4, p0}, Lcom/applovin/impl/adview/activity/b/a$7;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    invoke-static {v2, v3, v0, v4}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->y:Lcom/applovin/impl/sdk/k$a;

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ad()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/a;->y:Lcom/applovin/impl/sdk/k$a;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/sdk/k$a;)V

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->w:Lcom/applovin/impl/sdk/utils/a;

    if-eqz v0, :cond_4

    .line 628
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/a;->w:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    .line 632
    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 634
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 639
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "Fullscreen ad shown in container view dismissed, destroying the presenter."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_6
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->k()V

    :goto_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/a;->C:Z

    return v0
.end method

.method public j()V
    .locals 3

    .line 651
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "onStop()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 660
    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v2}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 661
    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    .line 665
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->m()V

    .line 673
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->n()V

    .line 676
    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->q:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 677
    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 678
    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->s:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 679
    iput-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->e:Landroid/app/Activity;

    .line 681
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method

.method public l()V
    .locals 3

    .line 700
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "onBackPressed()"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/a;->G:Z

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "javascript:onBackPressed();"

    .line 709
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/activity/b/a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected abstract m()V
.end method

.method protected n()V
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->r:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/k;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 820
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/w;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected o()Z
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/applovin/adview/AppLovinFullscreenActivity;

    return v0
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "com.applovin.render_process_gone"

    .line 928
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/applovin/impl/adview/activity/b/a;->l:Z

    if-nez p1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/applovin/impl/adview/activity/b/a;->w()V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->u:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->b()V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->u:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->c()V

    :cond_0
    return-void
.end method

.method protected abstract r()Z
.end method

.method protected abstract s()Z
.end method

.method protected t()Z
    .locals 2

    .line 847
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->AUTO_INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/e;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract u()V
.end method

.method protected v()V
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->f:Lcom/applovin/adview/AppLovinAdView;

    if-nez v0, :cond_0

    return-void

    .line 889
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/b;->s()Lcom/applovin/impl/adview/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 892
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/a;->F:Lcom/applovin/impl/sdk/l;

    new-instance v2, Lcom/applovin/impl/adview/activity/b/a$2;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/activity/b/a$2;-><init>(Lcom/applovin/impl/adview/activity/b/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/l;->a(Landroid/view/View;Lcom/applovin/impl/sdk/l$a;)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 920
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/a;->c:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Handling render process crash"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 922
    iput-boolean v0, p0, Lcom/applovin/impl/adview/activity/b/a;->l:Z

    return-void
.end method
