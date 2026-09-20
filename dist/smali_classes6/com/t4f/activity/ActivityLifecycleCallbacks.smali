.class public Lcom/t4f/activity/ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backgroundCurrent(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/t4f/activity/ActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    .line 59
    iput-object v2, p0, Lcom/t4f/activity/ActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/t4f/activity/ActivityLifecycleCallbacks;->onActivityBackgroundChange(ZLandroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/t4f/activity/ActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onActivityBackgroundChange(ZLandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/t4f/activity/ActivityLifecycleCallbacks;->backgroundCurrent(Landroid/app/Activity;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/t4f/activity/ActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 25
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/t4f/activity/ActivityLifecycleCallbacks;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/t4f/activity/ActivityLifecycleCallbacks;->onActivityBackgroundChange(ZLandroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/t4f/activity/ActivityLifecycleCallbacks;->backgroundCurrent(Landroid/app/Activity;)Z

    return-void
.end method
