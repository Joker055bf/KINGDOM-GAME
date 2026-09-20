.class public Lcom/t4f/anim/AnimLifecycleManager;
.super Ljava/lang/Object;
.source "AnimLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimLifecycleManager"


# instance fields
.field private isRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/t4f/anim/AnimLifecycleManager;->isRegistered:Z

    return-void
.end method

.method private isUnityPlayerActivity(Landroid/app/Activity;)Z
    .locals 0

    .line 107
    instance-of p1, p1, Lcom/unity3d/player/UnityPlayerActivity;

    return p1
.end method

.method private releaseAnimResourcesForActivity(Landroid/app/Activity;)V
    .locals 2

    .line 149
    invoke-static {}, Lcom/t4f/anim/AnimManager;->getInstance()Lcom/t4f/anim/AnimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    const-string v0, "AnimLifecycleManager"

    if-nez p1, :cond_0

    const-string p1, "releaseAnimResourcesForActivity: animView not found"

    .line 151
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    instance-of v1, p1, Lcom/t4f/anim/view/IAnimView;

    if-eqz v1, :cond_1

    .line 157
    check-cast p1, Lcom/t4f/anim/view/IAnimView;

    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->handleDestroy()V

    const-string p1, "releaseAnimResourcesForActivity: handleDestroy called"

    .line 158
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/t4f/anim/AnimLifecycleManager;->isRegistered:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onActivityDestroyed: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimLifecycleManager"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->isUnityPlayerActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->releaseAnimResourcesForActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onActivityPaused: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimLifecycleManager"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->isUnityPlayerActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->pauseAnimForActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onActivityResumed: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimLifecycleManager"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->isUnityPlayerActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->resumeAnimForActivity(Landroid/app/Activity;)V

    :cond_0
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

    return-void
.end method

.method public pauseAnimForActivity(Landroid/app/Activity;)V
    .locals 2

    .line 115
    invoke-static {}, Lcom/t4f/anim/AnimManager;->getInstance()Lcom/t4f/anim/AnimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    const-string v0, "AnimLifecycleManager"

    if-nez p1, :cond_0

    const-string p1, "pauseAnimForActivity: animView not found"

    .line 117
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_0
    instance-of v1, p1, Lcom/t4f/anim/view/IAnimView;

    if-eqz v1, :cond_1

    .line 122
    check-cast p1, Lcom/t4f/anim/view/IAnimView;

    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->handlePause()V

    const-string p1, "pauseAnimForActivity: handlePause called"

    .line 123
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public registerLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/t4f/anim/AnimLifecycleManager;->isRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/t4f/anim/AnimLifecycleManager;->isRegistered:Z

    const-string p1, "AnimLifecycleManager"

    const-string v0, "registerLifecycleCallbacks: registered"

    .line 32
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeAnimForActivity(Landroid/app/Activity;)V
    .locals 2

    .line 132
    invoke-static {}, Lcom/t4f/anim/AnimManager;->getInstance()Lcom/t4f/anim/AnimManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    const-string v0, "AnimLifecycleManager"

    if-nez p1, :cond_0

    const-string p1, "resumeAnimForActivity: animView not found"

    .line 134
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/t4f/anim/view/IAnimView;

    if-eqz v1, :cond_1

    .line 139
    check-cast p1, Lcom/t4f/anim/view/IAnimView;

    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->handleResume()V

    const-string p1, "resumeAnimForActivity: handleResume called"

    .line 140
    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unregisterLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 40
    iget-boolean v0, p0, Lcom/t4f/anim/AnimLifecycleManager;->isRegistered:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/t4f/anim/AnimLifecycleManager;->isRegistered:Z

    const-string p1, "AnimLifecycleManager"

    const-string v0, "unregisterLifecycleCallbacks: unregistered"

    .line 46
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
