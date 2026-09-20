.class Lcom/mobgame/MobGameSDK$5;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/MobGameSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field count:I

.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 538
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/MobGameSDK$5;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 540
    iput p1, p0, Lcom/mobgame/MobGameSDK$5;->count:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "onActivityDestroyed:"

    .line 636
    :try_start_0
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobGameActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobGameLoginActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookActivity"

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobGameImageGaleryActivity"

    .line 644
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 650
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onActivityPaused:"

    .line 597
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget v0, p0, Lcom/mobgame/MobGameSDK$5;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobgame/MobGameSDK$5;->count:I

    .line 601
    sput-object p1, Lcom/mobgame/MobGameSDK;->currentActivity:Landroid/app/Activity;

    .line 603
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    iget-object v0, v0, Lcom/mobgame/MobGameSDK;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    iget-object v0, v0, Lcom/mobgame/MobGameSDK;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mobgame/MobGameSDK;->countDownTimer:Landroid/os/CountDownTimer;

    .line 606
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0, v1}, Lcom/mobgame/MobGameSDK;->access$502(Lcom/mobgame/MobGameSDK;Z)Z

    .line 608
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0, v3}, Lcom/mobgame/MobGameSDK;->access$1000(Lcom/mobgame/MobGameSDK;Z)V

    .line 609
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/mobgame/MobGameSDK;->access$400(Lcom/mobgame/MobGameSDK;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$1300(Lcom/mobgame/MobGameSDK;)V

    .line 611
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    iput-boolean v3, v0, Lcom/mobgame/MobGameSDK;->checkTimeInited:Z

    .line 614
    :cond_1
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 615
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 616
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    .line 617
    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$1100(Lcom/mobgame/MobGameSDK;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_hide_float_button"

    invoke-static {p1, v0, v3}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 619
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->unRegisterSensor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "com.mobgame.broadcast"

    .line 552
    invoke-static {p1}, Lcom/game/sdk/comon/game/LifeCycleActivity;->getInstance(Landroid/app/Activity;)Lcom/game/sdk/comon/game/LifeCycleActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/game/LifeCycleActivity;->onResume()V

    .line 553
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v1

    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    .line 554
    invoke-static {}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->getInstance()Lcom/game/sdk/comon/forcelogout/ForceLogout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/forcelogout/ForceLogout;->onResume()V

    .line 555
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    iget-boolean v1, v1, Lcom/mobgame/MobGameSDK;->checkTimeInited:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/mobgame/MobGameSDK;->access$400(Lcom/mobgame/MobGameSDK;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobGameActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobGameLoginActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobGameImageGaleryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FacebookActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$300(Lcom/mobgame/MobGameSDK;)V

    .line 563
    :cond_1
    :try_start_0
    sput-object p1, Lcom/mobgame/MobGameSDK;->currentActivity:Landroid/app/Activity;

    .line 564
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mobgame/MobGameSDK;->access$502(Lcom/mobgame/MobGameSDK;Z)Z

    .line 565
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$600(Lcom/mobgame/MobGameSDK;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$700(Lcom/mobgame/MobGameSDK;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$800(Lcom/mobgame/MobGameSDK;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 567
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$700(Lcom/mobgame/MobGameSDK;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 568
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$900(Lcom/mobgame/MobGameSDK;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 569
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$700(Lcom/mobgame/MobGameSDK;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 573
    :cond_2
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1, v3}, Lcom/mobgame/MobGameSDK;->access$1000(Lcom/mobgame/MobGameSDK;Z)V

    .line 574
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 576
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    .line 577
    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$1100(Lcom/mobgame/MobGameSDK;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 579
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 580
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v1, "shared_pref_show_dashboard"

    invoke-static {p1, v1, v2}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mobgame/MobGameSDK$5;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {p1}, Lcom/mobgame/MobGameSDK;->access$1200(Lcom/mobgame/MobGameSDK;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 581
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "category"

    const-string v1, "float_button"

    .line 582
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 585
    :cond_3
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_hide_float_button"

    invoke-static {p1, v0, v2}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 586
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->registerSensor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 591
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
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
