.class public Lcom/tap4fun/k1/CustomUnityPlayerActivity;
.super Lcom/tap4fun/framework/activity/MainPlayerActivity;
.source "CustomUnityPlayerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomUnityPlayerActivity"


# instance fields
.field private final m_ConfigureSurfaceRunnable:Ljava/lang/Runnable;

.field private final m_MainHandler:Landroid/os/Handler;

.field private m_SurfaceConfigured:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_MainHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/tap4fun/k1/CustomUnityPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity$1;-><init>(Lcom/tap4fun/k1/CustomUnityPlayerActivity;)V

    iput-object v0, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_ConfigureSurfaceRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tap4fun/k1/CustomUnityPlayerActivity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->configureUnitySurfaceViewForNativeLoading()V

    return-void
.end method

.method private configureUnitySurfaceViewForNativeLoading()V
    .locals 6

    const-string v0, "CustomUnityPlayerActivity"

    const-string v1, "native loading surface configured: "

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->findUnitySurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "native loading surface setup skipped: Unity SurfaceView not found"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 60
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v5, -0x3

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 63
    iget-boolean v4, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_SurfaceConfigured:Z

    if-nez v4, :cond_1

    .line 64
    iput-boolean v3, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_SurfaceConfigured:Z

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "native loading surface setup"

    .line 68
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private findUnitySurfaceView()Landroid/view/SurfaceView;
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unitySurfaceView"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->isUnitySurfaceView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Landroid/view/SurfaceView;

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->findUnitySurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method private findUnitySurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;
    .locals 3

    .line 85
    invoke-direct {p0, p1}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->isUnitySurfaceView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Landroid/view/SurfaceView;

    return-object p1

    .line 89
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 93
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->findUnitySurfaceView(Landroid/view/View;)Landroid/view/SurfaceView;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private isUnitySurfaceView(Landroid/view/View;)Z
    .locals 2

    .line 105
    instance-of v0, p1, Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.t4f.anim"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CropVideoView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private scheduleConfigureUnitySurfaceViewForNativeLoading()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_MainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_ConfigureSurfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_MainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_ConfigureSurfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    iget-object v0, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_MainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_ConfigureSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object v0, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_MainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->m_ConfigureSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-direct {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->scheduleConfigureUnitySurfaceViewForNativeLoading()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->onResume()V

    .line 26
    invoke-direct {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->scheduleConfigureUnitySurfaceViewForNativeLoading()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/tap4fun/framework/activity/MainPlayerActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/tap4fun/k1/CustomUnityPlayerActivity;->scheduleConfigureUnitySurfaceViewForNativeLoading()V

    :cond_0
    return-void
.end method
