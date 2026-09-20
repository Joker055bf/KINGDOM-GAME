.class Lcom/t4f/activity/ActivityLifecycle$1;
.super Lcom/t4f/activity/ActivityLifecycleCallbacks;
.source "ActivityLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/activity/ActivityLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/activity/ActivityLifecycle;


# direct methods
.method constructor <init>(Lcom/t4f/activity/ActivityLifecycle;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/t4f/activity/ActivityLifecycle$1;->this$0:Lcom/t4f/activity/ActivityLifecycle;

    invoke-direct {p0}, Lcom/t4f/activity/ActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityBackgroundChange(ZLandroid/app/Activity;)V
    .locals 5

    .line 28
    invoke-super {p0, p1, p2}, Lcom/t4f/activity/ActivityLifecycleCallbacks;->onActivityBackgroundChange(ZLandroid/app/Activity;)V

    .line 29
    iget-object v0, p0, Lcom/t4f/activity/ActivityLifecycle$1;->this$0:Lcom/t4f/activity/ActivityLifecycle;

    invoke-static {v0}, Lcom/t4f/activity/ActivityLifecycle;->access$000(Lcom/t4f/activity/ActivityLifecycle;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    instance-of v3, v2, Lcom/t4f/activity/OnForegroundChange;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 38
    check-cast v2, Lcom/t4f/activity/OnForegroundChange;

    invoke-interface {v2, p1, p2}, Lcom/t4f/activity/OnForegroundChange;->OnForegroundChanged(ZLandroid/app/Activity;)V

    .line 39
    iget-object v2, p0, Lcom/t4f/activity/ActivityLifecycle$1;->this$0:Lcom/t4f/activity/ActivityLifecycle;

    invoke-static {v2}, Lcom/t4f/activity/ActivityLifecycle;->access$100(Lcom/t4f/activity/ActivityLifecycle;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/unity3d/player/UnityPlayerActivity;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 40
    iget-object v2, p0, Lcom/t4f/activity/ActivityLifecycle$1;->this$0:Lcom/t4f/activity/ActivityLifecycle;

    invoke-static {v2}, Lcom/t4f/activity/ActivityLifecycle;->access$100(Lcom/t4f/activity/ActivityLifecycle;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/t4f/activity/OnForegroundChange;

    if-eqz v3, :cond_0

    .line 43
    check-cast v2, Lcom/t4f/activity/OnForegroundChange;

    invoke-interface {v2, p1, p2}, Lcom/t4f/activity/OnForegroundChange;->OnForegroundChanged(ZLandroid/app/Activity;)V

    .line 44
    iget-object v2, p0, Lcom/t4f/activity/ActivityLifecycle$1;->this$0:Lcom/t4f/activity/ActivityLifecycle;

    invoke-static {v2}, Lcom/t4f/activity/ActivityLifecycle;->access$100(Lcom/t4f/activity/ActivityLifecycle;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/unity3d/player/UnityPlayerActivity;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/t4f/activity/ActivityLifecycle$1;->this$0:Lcom/t4f/activity/ActivityLifecycle;

    invoke-static {v2}, Lcom/t4f/activity/ActivityLifecycle;->access$100(Lcom/t4f/activity/ActivityLifecycle;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 50
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
