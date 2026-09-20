.class public Lcom/mobgame/utils/FloatButtonTimerHelper;
.super Ljava/lang/Object;
.source "FloatButtonTimerHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "FloatButtonTimerHelper"

.field private static isOpenedTimer:Z

.field private static isRuningTimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRunTimer()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/mobgame/utils/FloatButtonTimerHelper;->isOpenedTimer:Z

    return v0
.end method

.method public static enableFloatButtonTimer(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "enable_timer"

    .line 33
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-static {p0, v0, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static getFloatButtonTimerData(Landroid/content/Context;)Lcom/mobgame/model/TimerData;
    .locals 2

    const-string v0, "timer"

    .line 23
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dkm : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFloatButtonTimerData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{\"listTimerObject\":[]}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mobgame/model/TimerData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobgame/model/TimerData;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEnableFloatButtonTimer(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "enable_timer"

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 39
    sget-object v0, Lcom/mobgame/utils/FloatButtonTimerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isEnableFloatButtonTimer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isRuningTimer()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/mobgame/utils/FloatButtonTimerHelper;->isRuningTimer:Z

    return v0
.end method

.method public static saveFloatButtonTimer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 16
    sget-object v0, Lcom/mobgame/utils/FloatButtonTimerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "timer"

    .line 17
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, v0, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setcanRunTimer(Z)V
    .locals 0

    .line 50
    sput-boolean p0, Lcom/mobgame/utils/FloatButtonTimerHelper;->isOpenedTimer:Z

    return-void
.end method

.method public static setisRuningTimer(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lcom/mobgame/utils/FloatButtonTimerHelper;->isRuningTimer:Z

    return-void
.end method
