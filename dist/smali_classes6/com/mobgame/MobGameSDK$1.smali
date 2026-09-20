.class Lcom/mobgame/MobGameSDK$1;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 135
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$1;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const-string v0, "shared_pref_show_dashboard"

    const-string v1, "shared_pref_show_confirm_dialog_hide_float"

    .line 147
    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 148
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 149
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget p1, p1, v5

    .line 150
    iget-object v5, p0, Lcom/mobgame/MobGameSDK$1;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v5}, Lcom/mobgame/MobGameSDK;->access$000(Lcom/mobgame/MobGameSDK;)F

    move-result v5

    .line 151
    iget-object v6, p0, Lcom/mobgame/MobGameSDK$1;->this$0:Lcom/mobgame/MobGameSDK;

    mul-float/2addr v2, v2

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float p1, v7

    invoke-static {v6, p1}, Lcom/mobgame/MobGameSDK;->access$002(Lcom/mobgame/MobGameSDK;F)F

    .line 152
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$1;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {p1}, Lcom/mobgame/MobGameSDK;->access$000(Lcom/mobgame/MobGameSDK;)F

    move-result p1

    sub-float/2addr p1, v5

    .line 153
    iget-object v2, p0, Lcom/mobgame/MobGameSDK$1;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v2}, Lcom/mobgame/MobGameSDK;->access$100(Lcom/mobgame/MobGameSDK;)F

    move-result v4

    const v5, 0x3f666666

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    invoke-static {v2, v4}, Lcom/mobgame/MobGameSDK;->access$102(Lcom/mobgame/MobGameSDK;F)F

    .line 154
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$1;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {p1}, Lcom/mobgame/MobGameSDK;->access$100(Lcom/mobgame/MobGameSDK;)F

    move-result p1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 155
    invoke-static {p1, v1, v3}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 156
    invoke-static {p1, v0, v3}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VAO SENSOR"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v2, "shared_pref_float_button_dismiss_time"

    invoke-static {p1, v2}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v2, "shared_pref_hide_float_button"

    invoke-static {p1, v2}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.mobgame.broadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "category"

    const-string v1, "show_float_button"

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
