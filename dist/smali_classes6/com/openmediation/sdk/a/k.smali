.class public final Lcom/openmediation/sdk/a/k;
.super Lcom/crosspromotion/sdk/core/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/g;->a(Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V

    return-void
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public k()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->k()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v2}, Lcom/crosspromotion/sdk/bean/AdBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->p()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/openmediation/sdk/a/d;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/core/a;)V

    const-class v0, Lcom/crosspromotion/sdk/AdsActivity;

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public q()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedRewarded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->f(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoEnded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRewardedVideoAdStarted : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->g(Ljava/lang/String;)V

    return-void
.end method
