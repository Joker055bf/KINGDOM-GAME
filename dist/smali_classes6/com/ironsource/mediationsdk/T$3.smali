.class final Lcom/ironsource/mediationsdk/T$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/T;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/T;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "start reloading banner task"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "banner is null"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "banner or one of its parents are INVISIBLE or GONE"

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "banner has no window focus"

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "visible = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "banner is not visible, reload skipped"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    const/4 v1, 0x1

    new-array v3, v1, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v2

    const/16 v5, 0x265

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v3, v2

    const/16 v1, 0xc80

    invoke-static {v0, v1, v3}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T;I[[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/T;->e:Lcom/ironsource/lifecycle/a/a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/k;->g()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/lifecycle/a/a;->a(J)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/T;->o:Lcom/ironsource/mediationsdk/IronSourceBannerLayout$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setWindowFocusChangedListener(Lcom/ironsource/mediationsdk/IronSourceBannerLayout$a;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/T$3;->a:Lcom/ironsource/mediationsdk/T;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T;)V

    return-void
.end method
