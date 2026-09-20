.class Lcom/applovin/impl/adview/activity/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/adview/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/e;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/e;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-boolean v0, v0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->B:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/e;->w:Lcom/applovin/exoplayer2/aw;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/aw;->I()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-wide v1, v1, Lcom/applovin/impl/adview/activity/b/e;->E:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 235
    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/e;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$1;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-boolean v0, v0, Lcom/applovin/impl/adview/activity/b/e;->G:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
