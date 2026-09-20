.class public abstract Lcom/crosspromotion/sdk/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/core/a$b;,
        Lcom/crosspromotion/sdk/core/a$c;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/crosspromotion/sdk/bean/AdBean;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/openmediation/sdk/a/g;

.field private e:Z

.field private f:Z

.field private g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

.field private h:Lcom/crosspromotion/sdk/core/a$c;

.field private i:I

.field protected j:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    new-instance p1, Lcom/openmediation/sdk/a/g;

    invoke-direct {p1}, Lcom/openmediation/sdk/a/g;-><init>()V

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    new-instance p1, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;-><init>(Lcom/openmediation/sdk/utils/HandlerUtil$OnReceiveMessageListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a;->g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "payload"

    iput-object p2, p0, Lcom/crosspromotion/sdk/core/a;->j:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/crosspromotion/sdk/core/a;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/crosspromotion/sdk/core/a;->f:Z

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->e()Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/bean/AdBean;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->h()Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    invoke-static {p1, v0, p0, p2}, Lcom/crosspromotion/sdk/utils/helper/WaterFallHelper;->wfRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;ILcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->i()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->h()Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object p2

    invoke-static {p2, p1, p0}, Lcom/crosspromotion/sdk/utils/helper/PayloadHelper;->payloadRequest(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/lang/String;Lcom/openmediation/sdk/utils/request/network/Request$OnRequestCallback;)V

    :goto_1
    iget p1, p0, Lcom/crosspromotion/sdk/core/a;->i:I

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->h:Lcom/crosspromotion/sdk/core/a$c;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/crosspromotion/sdk/core/a;->g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    new-instance p1, Lcom/crosspromotion/sdk/core/a$c;

    invoke-direct {p1, p0, v2}, Lcom/crosspromotion/sdk/core/a$c;-><init>(Lcom/crosspromotion/sdk/core/a;Lcom/crosspromotion/sdk/core/a$a;)V

    iput-object p1, p0, Lcom/crosspromotion/sdk/core/a;->h:Lcom/crosspromotion/sdk/core/a$c;

    iget-object p2, p0, Lcom/crosspromotion/sdk/core/a;->g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    iget v0, p0, Lcom/crosspromotion/sdk/core/a;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/16 p1, 0xd9

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e()Lcom/crosspromotion/sdk/utils/error/Error;
    .locals 7

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcb

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    const-string v1, "loadAd ad placement is null"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/crosspromotion/sdk/core/a;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd7

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAdWithAction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cause current is in loading/showing progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/PlacementUtils;->getPlacement(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/Placement;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0xcc

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", placement not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getPt()I

    move-result v2

    iput v2, p0, Lcom/crosspromotion/sdk/core/a;->i:I

    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->shouldBlockPlacement(Lcom/openmediation/sdk/utils/model/Placement;)Z

    move-result v2

    const-string v3, " is blocked"

    const-string v4, ", Placement :"

    const/16 v5, 0xce

    if-eqz v2, :cond_3

    invoke-static {v5}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v2

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v6

    if-eq v2, v6, :cond_4

    const/16 v0, 0xcd

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placement wrong type, Placement :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v2

    if-ne v2, v1, :cond_6

    :cond_5
    invoke-static {v0}, Lcom/openmediation/sdk/utils/AdRateUtil;->isPlacementCapped(Lcom/openmediation/sdk/utils/model/Placement;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v5}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/core/a;->f:Z

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->h:Lcom/crosspromotion/sdk/core/a$c;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onAdsLoadSuccess : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/crosspromotion/sdk/core/a;->f:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->o()V

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->c()V

    :cond_1
    return-void
.end method

.method protected a(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/a/g;->b(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x131

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "adBean"

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->toJsonString(Lcom/crosspromotion/sdk/bean/AdBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "placementId"

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "adType"

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "sceneName"

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "display_sceneName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "abt"

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "display_abt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/16 p1, 0x133

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/crosspromotion/sdk/bean/AdBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->b(Lcom/crosspromotion/sdk/bean/AdBean;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/crosspromotion/sdk/core/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected b(Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xd0

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getMainimgUrl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v3}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getMainimgUrl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getSuccess()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getFailed()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/crosspromotion/sdk/utils/DownloadManager;->getInstance()Lcom/crosspromotion/sdk/utils/DownloadManager;

    move-result-object v3

    new-instance v4, Lcom/crosspromotion/sdk/core/a$b;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, p0, v5, p1}, Lcom/crosspromotion/sdk/core/a$b;-><init>(Lcom/crosspromotion/sdk/core/a;ILcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {v3, v2, v4}, Lcom/crosspromotion/sdk/utils/DownloadManager;->downloadFile(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/DownloadManager$OnResDownloaded;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "AdManager loadAd res exception : "

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/16 p1, 0xd6

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_8
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/a/g;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdsLoadFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/crosspromotion/sdk/core/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->o()V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/utils/error/Error;)V

    :cond_1
    return-void
.end method

.method protected d(Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdsShowFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossPromotionManager"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/core/a;->e:Z

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a;->b(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->h:Lcom/crosspromotion/sdk/core/a$c;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/a;->h:Lcom/crosspromotion/sdk/core/a$c;

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/a;->g:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    return-void
.end method

.method protected abstract g()I
.end method

.method protected h()Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/model/PlacementInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getPlacementInfo(I)Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object v0

    return-object v0
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()Z
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdsClicked : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossPromotionManager"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->a()V

    return-void
.end method

.method protected m()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdsClosed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossPromotionManager"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/core/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->b()V

    return-void
.end method

.method public n()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdsShowed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrossPromotionManager"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crosspromotion/sdk/core/a;->e:Z

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/a/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-direct {p0}, Lcom/crosspromotion/sdk/core/a;->d()V

    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const/16 p1, 0xd0

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method

.method public onRequestSuccess(Lcom/openmediation/sdk/utils/request/network/Response;)V
    .locals 2

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/network/Response;->body()Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    move-result-object v1

    invoke-interface {v1}, Lcom/openmediation/sdk/utils/request/network/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "campaigns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/ResponseUtil;->transformResponse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    :goto_0
    const/16 v0, 0xd3

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    goto :goto_3

    :cond_4
    :goto_1
    const/16 v0, 0xd1

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_5
    :goto_2
    const/16 v0, 0xd0

    :try_start_1
    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const/16 v0, 0xd4

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_4
    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected p()V
    .locals 0

    return-void
.end method
