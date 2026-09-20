.class Lcom/mobgame/MobGameSDK$6;
.super Landroid/content/BroadcastReceiver;
.source "MobGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/MobGameSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$6;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string p1, "id"

    const-string v0, "gif_data"

    const-string v1, "shared_pref_hide_float_button"

    const-string v2, "shared_pref_show_dashboard"

    const-string v3, "id gcm: "

    const-string v4, "khaitran "

    const-string v5, "category:"

    .line 710
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BroadcastReceiver::onReceive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v6, "category"

    .line 712
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 713
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/game/sdk/comon/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    .line 715
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "hide_float_button"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "float_button"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_2
    const-string v5, "mobOpenGroup"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_1

    :sswitch_3
    const-string v5, "forcelogout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v10

    goto :goto_1

    :sswitch_4
    const-string v5, "gcm"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v11

    goto :goto_1

    :sswitch_5
    const-string v5, "mobOpenBrowser"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_1

    :sswitch_6
    const-string v5, "mobOpenFanPage"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v5, :cond_0

    move v5, v9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_8

    if-eq v5, v11, :cond_4

    const-string p1, "data"

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    goto/16 :goto_3

    .line 774
    :cond_1
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 775
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p2

    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenBrowser(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 777
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_3

    .line 766
    :cond_2
    :try_start_3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 767
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p2

    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBGroup(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 769
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 758
    :cond_3
    :try_start_5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p2

    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBFanpage(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p1

    .line 761
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 721
    :cond_4
    :try_start_7
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v4, v2, v10}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v11

    goto :goto_2

    :cond_5
    move v4, v10

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 722
    invoke-static {v6, v1, v11}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAuthenConfigObj()Lcom/game/sdk/comon/object/AuthenConfigObj;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/mobgame/MobGameSDK$6;->this$0:Lcom/mobgame/MobGameSDK;

    .line 724
    invoke-virtual {v4}, Lcom/mobgame/MobGameSDK;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 725
    invoke-static {v4}, Lcom/game/sdk/comon/utils/Utils;->isDashboardEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 726
    invoke-static {v4, v2, v10}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 727
    invoke-static {v2, v1, v11}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 728
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "title"

    .line 730
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noti"

    .line 731
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 733
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v4, Lcom/mobgame/model/NtfModel;

    invoke-direct {v4}, Lcom/mobgame/model/NtfModel;-><init>()V

    .line 735
    invoke-virtual {v4, p1}, Lcom/mobgame/model/NtfModel;->setId(I)V

    .line 736
    invoke-virtual {v4, v1}, Lcom/mobgame/model/NtfModel;->setTitle(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v4, v2}, Lcom/mobgame/model/NtfModel;->setNoti(Z)V

    .line 739
    invoke-virtual {v4}, Lcom/mobgame/model/NtfModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 740
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p1, "play_gif"

    .line 743
    invoke-virtual {p2, p1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 744
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/mobgame/utils/GifHelper;->playGif(Landroid/content/Context;)V

    .line 747
    :cond_7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 748
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 749
    sget-object p2, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/mobgame/model/giftimage/GifData;->parse(Ljava/lang/String;)Lcom/mobgame/model/giftimage/GifData;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mobgame/utils/GifHelper;->fetchFramesImage(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V

    .line 750
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/mobgame/utils/GifHelper;->playGif(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 753
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 717
    :cond_8
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 787
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x609c1488 -> :sswitch_6
        -0x171289a2 -> :sswitch_5
        0x18f11 -> :sswitch_4
        0xef28435 -> :sswitch_3
        0x2c349735 -> :sswitch_2
        0x5c63e275 -> :sswitch_1
        0x5f0f8a52 -> :sswitch_0
    .end sparse-switch
.end method
