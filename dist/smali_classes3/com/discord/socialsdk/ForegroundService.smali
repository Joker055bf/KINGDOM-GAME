.class public Lcom/discord/socialsdk/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "DiscordSocialSDKChannel"

.field private static final NOTIFICATION_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Discord Social SDK Service"

    const/4 v2, 0x2

    const-string v3, "DiscordSocialSDKChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 55
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/discord/socialsdk/ForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static start(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "DiscordSocialSdk"

    const-string v1, "Starting ForegroundService"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/discord/socialsdk/ForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static stop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "DiscordSocialSdk"

    const-string v1, "Stopping ForegroundService"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/discord/socialsdk/ForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/discord/socialsdk/ForegroundService;->createNotificationChannel()V

    .line 31
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    const-string p2, "DiscordSocialSDKChannel"

    invoke-direct {p1, p0, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "Discord Social SDK"

    .line 32
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "Voice connected"

    .line 33
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x108009b

    .line 34
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "android.permission.RECORD_AUDIO"

    .line 38
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x82

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 43
    :goto_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-lt p3, v0, :cond_1

    .line 44
    invoke-virtual {p0, v1, p1, p2}, Lcom/discord/socialsdk/ForegroundService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/discord/socialsdk/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    :goto_1
    return v1
.end method
