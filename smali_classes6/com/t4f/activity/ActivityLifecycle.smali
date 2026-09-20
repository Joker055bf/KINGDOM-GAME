.class public Lcom/t4f/activity/ActivityLifecycle;
.super Ljava/lang/Object;
.source "ActivityLifecycle.java"


# static fields
.field private static instance:Lcom/t4f/activity/ActivityLifecycle;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mActivityLifecycleCallbacks:Lcom/t4f/activity/ActivityLifecycleCallbacks;

.field private final mApplication:Landroid/app/Application;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/t4f/activity/Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/t4f/unity/UnityPlayer;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4f/activity/ActivityLifecycle;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/t4f/activity/ActivityLifecycle;-><init>(Landroid/app/Application;)V

    .line 61
    iput-object p1, p0, Lcom/t4f/activity/ActivityLifecycle;->mActivity:Landroid/app/Activity;

    .line 62
    sput-object p0, Lcom/t4f/activity/ActivityLifecycle;->instance:Lcom/t4f/activity/ActivityLifecycle;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/t4f/activity/ActivityLifecycle$1;

    invoke-direct {v0, p0}, Lcom/t4f/activity/ActivityLifecycle$1;-><init>(Lcom/t4f/activity/ActivityLifecycle;)V

    iput-object v0, p0, Lcom/t4f/activity/ActivityLifecycle;->mActivityLifecycleCallbacks:Lcom/t4f/activity/ActivityLifecycleCallbacks;

    .line 66
    iput-object p1, p0, Lcom/t4f/activity/ActivityLifecycle;->mApplication:Landroid/app/Application;

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/activity/ActivityLifecycle;)Ljava/util/Map;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/t4f/activity/ActivityLifecycle;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/t4f/activity/ActivityLifecycle;)Landroid/app/Activity;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/t4f/activity/ActivityLifecycle;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static getInstance()Lcom/t4f/activity/ActivityLifecycle;
    .locals 1

    .line 16
    sget-object v0, Lcom/t4f/activity/ActivityLifecycle;->instance:Lcom/t4f/activity/ActivityLifecycle;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/t4f/activity/ActivityLifecycle;

    invoke-direct {v0}, Lcom/t4f/activity/ActivityLifecycle;-><init>()V

    sput-object v0, Lcom/t4f/activity/ActivityLifecycle;->instance:Lcom/t4f/activity/ActivityLifecycle;

    .line 19
    :cond_0
    sget-object v0, Lcom/t4f/activity/ActivityLifecycle;->instance:Lcom/t4f/activity/ActivityLifecycle;

    return-object v0
.end method


# virtual methods
.method public checkRegister()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/t4f/activity/ActivityLifecycle;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/t4f/activity/ActivityLifecycle;->mActivityLifecycleCallbacks:Lcom/t4f/activity/ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 103
    iget-object v1, p0, Lcom/t4f/activity/ActivityLifecycle;->mListeners:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/t4f/activity/ActivityLifecycle;->mActivityLifecycleCallbacks:Lcom/t4f/activity/ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/t4f/activity/ActivityLifecycle;->mActivityLifecycleCallbacks:Lcom/t4f/activity/ActivityLifecycleCallbacks;

    invoke-virtual {v0}, Lcom/t4f/activity/ActivityLifecycleCallbacks;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/t4f/activity/Listener;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/t4f/activity/ActivityLifecycle;->put(Ljava/lang/Object;Lcom/t4f/activity/Listener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Lcom/t4f/activity/Listener;)Ljava/lang/Object;
    .locals 1

    if-eqz p2, :cond_2

    .line 75
    iget-object v0, p0, Lcom/t4f/activity/ActivityLifecycle;->mListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/t4f/activity/ActivityLifecycle;->mListeners:Ljava/util/Map;

    :cond_0
    monitor-enter v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 77
    :goto_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/t4f/activity/ActivityLifecycle;->checkRegister()Z

    .line 79
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcom/t4f/activity/Listener;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/t4f/activity/ActivityLifecycle;->mListeners:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 87
    monitor-enter v1

    .line 88
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/t4f/activity/Listener;

    .line 89
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 90
    iput-object v0, p0, Lcom/t4f/activity/ActivityLifecycle;->mListeners:Ljava/util/Map;

    .line 91
    invoke-virtual {p0}, Lcom/t4f/activity/ActivityLifecycle;->checkRegister()Z

    .line 93
    :cond_1
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-object v0
.end method
