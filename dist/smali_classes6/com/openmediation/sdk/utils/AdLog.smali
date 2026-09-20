.class public Lcom/openmediation/sdk/utils/AdLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/AdLog$AdLogHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OmAds"


# instance fields
.field private isDebug:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/AdLog$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/AdLog;-><init>()V

    return-void
.end method

.method public static getSingleton()Lcom/openmediation/sdk/utils/AdLog;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdLog$AdLogHolder;->access$100()Lcom/openmediation/sdk/utils/AdLog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public LogD(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OmAds"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OmAds:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public LogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OmAds"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public LogE(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OmAds"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public LogE(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OmAds"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public LogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OmAds:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OmAds"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public isDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/utils/AdLog;->isDebug:Z

    return-void
.end method
