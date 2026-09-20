.class public Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;
.super Lcom/applovin/impl/mediation/ads/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/ad$a;
.implements Lcom/applovin/impl/sdk/f$a;
.implements Lcom/applovin/impl/sdk/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;,
        Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;,
        Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/applovin/mediation/ads/MaxAdView;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/view/View;

.field private e:J

.field private f:Lcom/applovin/impl/mediation/a/b;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

.field private final j:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

.field private final k:Lcom/applovin/impl/sdk/f;

.field private final l:Lcom/applovin/impl/sdk/ac;

.field private final m:Lcom/applovin/impl/sdk/ad;

.field private final n:Ljava/lang/Object;

.field private o:Lcom/applovin/impl/mediation/a/b;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/ads/MaxAdView;Landroid/view/View;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V
    .locals 1

    const-string v0, "MaxAdView"

    .line 100
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/applovin/impl/mediation/ads/a;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Ljava/lang/String;

    const-wide p1, 0x7fffffffffffffffL

    .line 59
    iput-wide p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:J

    .line 72
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    const/4 p2, 0x0

    .line 78
    iput-boolean p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->t:Z

    if-eqz p6, :cond_1

    .line 105
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    .line 107
    iput-object p4, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:Landroid/view/View;

    .line 108
    new-instance p2, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p2, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    .line 109
    new-instance p2, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    invoke-direct {p2, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    .line 110
    new-instance p1, Lcom/applovin/impl/sdk/f;

    invoke-direct {p1, p5, p0}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/f$a;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    .line 111
    new-instance p1, Lcom/applovin/impl/sdk/ac;

    invoke-direct {p1, p3, p5}, Lcom/applovin/impl/sdk/ac;-><init>(Landroid/view/View;Lcom/applovin/impl/sdk/p;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Lcom/applovin/impl/sdk/ac;

    .line 112
    new-instance p1, Lcom/applovin/impl/sdk/ad;

    invoke-direct {p1, p3, p5, p0}, Lcom/applovin/impl/sdk/ad;-><init>(Landroid/view/View;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/ad$a;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/sdk/ad;

    .line 114
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->am()Lcom/applovin/impl/sdk/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/g$a;)V

    .line 116
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Created new MaxAdView ("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/mediation/a/b;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/sdk/ad;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad;->a()V

    .line 388
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lcom/applovin/mediation/MaxAd;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 391
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(J)V
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->x:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 697
    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/Utils;->bitMaskContainsFlag(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->y:Z

    if-nez v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Undesired flags matched - current: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", undesired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "Waiting for refresh timer to manually fire request"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 704
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    goto :goto_0

    .line 708
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "No undesired viewability flags matched or forcing pre-cache - scheduling viewability"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    .line 710
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    .line 713
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b()V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/applovin/impl/mediation/a/b;)V
    .locals 6

    .line 572
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/b;->C()I

    move-result v0

    .line 573
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/b;->D()I

    move-result p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    if-ne p2, v1, :cond_1

    goto :goto_1

    .line 576
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 578
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_2

    .line 581
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 585
    :cond_2
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 586
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 589
    :goto_2
    instance-of v2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 591
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pinning ad view to MAX ad view with width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getGravity()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/r;->a(III)[I

    move-result-object v0

    .line 595
    move-object v1, p2

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 596
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    .line 598
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 602
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/a/b;)V
    .locals 1

    .line 403
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$2;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/a/b;J)V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Scheduling viewability impression for ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processViewabilityAdImpressionPostback(Lcom/applovin/impl/mediation/a/e;JLcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Landroid/view/View;Lcom/applovin/impl/mediation/a/b;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Landroid/view/View;Lcom/applovin/impl/mediation/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b(Lcom/applovin/impl/mediation/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/d$a;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/d$a;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/d$a;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string p2, "Failed to load new ad - this instance is already destroyed"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/impl/mediation/d$a;)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAd;)V
    .locals 4

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->s:Z

    .line 722
    iget-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->r:Z

    if-eqz v1, :cond_1

    .line 724
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->r:Z

    .line 726
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rendering precache request ad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Saving pre-cache ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_2
    check-cast p1, Lcom/applovin/impl/mediation/a/b;

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    .line 737
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/a/b;->e(Ljava/lang/String;)V

    .line 738
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/a/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxError;)V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->n:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    .line 529
    invoke-interface {p1}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring banner ad refresh for error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 536
    :cond_1
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    .line 557
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->s:Z

    .line 559
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->m:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    .line 562
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling failed banner ad refresh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds from now for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/f;->a(J)V

    :cond_4
    return-void

    .line 539
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->s:Z

    if-eqz v0, :cond_7

    .line 541
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v3, "Refresh pre-cache failed when auto-refresh is stopped"

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_6
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->s:Z

    .line 546
    :cond_7
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->r:Z

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Refresh pre-cache failed - MaxAdListener.onAdLoadFailed(adUnitId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "allow_pause_auto_refresh_immediately"

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated allow immediate auto-refresh pause and ad load to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->u:Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "disable_auto_retries"

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated disable auto-retries to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->v:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "disable_precache"

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated precached disabled to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_4
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->w:Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "should_stop_auto_refresh_on_ad_expand"

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated should stop auto-refresh on ad expand to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_6
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->x:Z

    goto :goto_0

    :cond_7
    const-string v0, "force_precache"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 320
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated force precache to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_8
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->y:Z

    goto :goto_0

    :cond_9
    const-string v0, "adaptive_banner"

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 325
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated is adaptive banner to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_a
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->z:Z

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->setLocalExtraParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)Lcom/applovin/impl/mediation/a/b;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/sdk/ac;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Lcom/applovin/impl/sdk/ac;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 506
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Scheduling refresh precache request now"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->s:Z

    .line 512
    new-instance v0, Lcom/applovin/impl/sdk/e/z;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    new-instance v2, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$3;

    invoke-direct {v2, p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$3;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)V

    .line 522
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d/c;->a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/sdk/e/o$a;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/mediation/a/b;)V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v1}, Lcom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v1

    if-gtz v0, :cond_0

    if-gtz v1, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v0

    .line 614
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v1

    .line 616
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    .line 617
    iget-boolean v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->z:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/applovin/mediation/MaxAdFormat;->getAdaptiveSize(ILandroid/content/Context;)Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result v2

    .line 618
    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result p1

    if-lt v0, v2, :cond_2

    if-ge v1, p1, :cond_4

    .line 622
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n**************************************************\n`MaxAdView` size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp smaller than required "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 623
    iget-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->z:Z

    if-eqz v1, :cond_3

    const-string v1, "adaptive "

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 627
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinSdk"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/mediation/ads/MaxAdView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rendering for cached ad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    const/4 v0, 0x0

    .line 677
    iput-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/sdk/f;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    return-object p0
.end method

.method private d()Z
    .locals 2

    .line 748
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->y:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->t:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->q:Z

    return p0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->v:Z

    return p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a()V

    return-void
.end method

.method static synthetic j(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/sdk/ad;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/sdk/ad;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:J

    return-wide v0
.end method

.method static synthetic m(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    return-object p0
.end method

.method static synthetic o(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    return-object p0
.end method

.method static synthetic p(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->x:Z

    return p0
.end method

.method static synthetic q(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->t:Z

    return p0
.end method

.method static synthetic r(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 336
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a()V

    .line 338
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lcom/applovin/mediation/MaxAd;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 346
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->t:Z

    .line 347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->c()V

    .line 350
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->am()Lcom/applovin/impl/sdk/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/g;->b(Lcom/applovin/impl/sdk/g$a;)V

    .line 351
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->au()Lcom/applovin/impl/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/mediation/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-super {p0}, Lcom/applovin/impl/mediation/ads/a;->destroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 347
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAdFormat()Lcom/applovin/mediation/MaxAdFormat;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    .line 195
    sget-object v0, Lcom/applovin/impl/mediation/d$a;->a:Lcom/applovin/impl/mediation/d$a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadAd(Lcom/applovin/impl/mediation/d$a;)V

    return-void
.end method

.method public loadAd(Lcom/applovin/impl/mediation/d$a;)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Loading ad for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/a;->t:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 206
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/f;->f()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/f;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load a new ad. An ad refresh has already been scheduled in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    .line 209
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "Loading ad..."

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_5

    .line 220
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Rendering cached ad"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_4
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c()V

    goto :goto_2

    .line 224
    :cond_5
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->s:Z

    if-eqz v0, :cond_7

    .line 226
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Waiting for precache ad to load to render"

    invoke-virtual {p1, v0, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_6
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->r:Z

    goto :goto_2

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/d$a;Lcom/applovin/impl/mediation/ads/a$a;)V

    goto :goto_2

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/d$a;Lcom/applovin/impl/mediation/ads/a$a;)V

    :goto_2
    return-void
.end method

.method public onAdRefresh()V
    .locals 3

    const/4 v0, 0x0

    .line 637
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->r:Z

    .line 640
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c()V

    goto :goto_0

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Refreshing ad from network due to viewability requirements not met for refresh request..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_1
    sget-object v0, Lcom/applovin/impl/mediation/d$a;->c:Lcom/applovin/impl/mediation/d$a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadAd(Lcom/applovin/impl/mediation/d$a;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    .line 659
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->r:Z

    goto :goto_0

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Refreshing ad from network..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_5
    sget-object v0, Lcom/applovin/impl/mediation/d$a;->c:Lcom/applovin/impl/mediation/d$a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadAd(Lcom/applovin/impl/mediation/d$a;)V

    :goto_0
    return-void
.end method

.method public onCreativeIdGenerated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;)V

    .line 774
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adReviewListener:Lcom/applovin/mediation/MaxAdReviewListener;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Lcom/applovin/mediation/MaxAdReviewListener;Ljava/lang/String;Lcom/applovin/mediation/MaxAd;)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 778
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/a/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLogVisibilityImpression()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Lcom/applovin/impl/sdk/ac;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ac;->a(Lcom/applovin/impl/mediation/a/e;)J

    move-result-wide v0

    .line 684
    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    invoke-direct {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->r:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Ad view visible"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/f;->h()V

    goto :goto_0

    .line 370
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Ad view hidden"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/f;->g()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Custom data for Ad Unit ID ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was set after load was called. For the ads to be correctly attributed to this custom data, please set the custom data before loading the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/Utils;->maybeLogCustomDataSizeLimit(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Ljava/lang/String;

    return-void
.end method

.method public setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/a;->setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement for Ad Unit ID ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was set after load was called. For the ads to be correctly attributed to this placement, please set the placement before loading the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Ljava/lang/String;

    return-void
.end method

.method public setPublisherBackgroundColor(I)V
    .locals 2

    int-to-long v0, p1

    .line 155
    iput-wide v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:J

    return-void
.end method

.method public startAutoRefresh()V
    .locals 5

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->q:Z

    .line 182
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->e()V

    .line 185
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resumed auto-refresh with remaining time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/f;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Ignoring call to startAutoRefresh() - ad refresh is not paused"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopAutoRefresh()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pausing auto-refresh with remaining time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/f;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->d()V

    goto :goto_1

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->t:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Stopping auto-refresh has no effect until after the first ad has been loaded."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->q:Z

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaxAdView{adUnitId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', adListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "this"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDestroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
