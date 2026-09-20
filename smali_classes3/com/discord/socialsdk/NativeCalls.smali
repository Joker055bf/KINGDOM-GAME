.class public Lcom/discord/socialsdk/NativeCalls;
.super Ljava/lang/Object;
.source "NativeCalls.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscordSocialSdk"

.field private static audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorize(Ljava/lang/String;Lcom/discord/socialsdk/AuthenticationClientCallback;)Z
    .locals 2

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/discord/socialsdk/AuthenticationClientCallback;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static initializeAudioManager()V
    .locals 2

    .line 19
    sget-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    if-nez v0, :cond_1

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 21
    invoke-static {}, Lcom/discord/socialsdk/DiscordSocialSdkInit;->getEngineActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/socialsdk/DiscordAudioManager;->getInstance(Landroid/content/Context;)Lcom/discord/socialsdk/DiscordAudioManager;

    move-result-object v0

    sput-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/discord/socialsdk/DiscordSocialSdkInit;->getEngineActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->getInstance(Landroid/content/Context;)Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    move-result-object v0

    sput-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$authorize$2(Ljava/lang/String;Lcom/discord/socialsdk/AuthenticationClientCallback;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/discord/socialsdk/DiscordSocialSdkInit;->getEngineActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    invoke-static {v0, p0, p1}, Lcom/discord/socialsdk/AuthenticationActivity;->authorize(Landroid/app/Activity;Ljava/lang/String;Lcom/discord/socialsdk/AuthenticationClientCallback;)V

    return-void
.end method

.method static synthetic lambda$openUrl$5(Ljava/lang/String;)V
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    invoke-static {}, Lcom/discord/socialsdk/DiscordSocialSdkInit;->getEngineActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$setActiveCall$0(Z)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/discord/socialsdk/NativeCalls;->setActiveCallOnMainThread(Z)V

    return-void
.end method

.method static synthetic lambda$setPreventCommsForBluetooth$1(Z)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/discord/socialsdk/NativeCalls;->setPreventCommsForBluetoothOnMainThread(Z)V

    return-void
.end method

.method static synthetic lambda$startForegroundService$3()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/discord/socialsdk/DiscordSocialSdkInit;->getEngineActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/socialsdk/ForegroundService;->start(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$stopForegroundService$4()V
    .locals 1

    .line 69
    invoke-static {}, Lcom/discord/socialsdk/DiscordSocialSdkInit;->getEngineActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/discord/socialsdk/ForegroundService;->stop(Landroid/app/Activity;)V

    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 2

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setActiveCall(Z)V
    .locals 2

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setActiveCallOnMainThread(Z)V
    .locals 1

    .line 34
    sget-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/discord/socialsdk/NativeCalls;->initializeAudioManager()V

    .line 38
    :cond_0
    sget-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-virtual {v0, p0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->setActiveCall(Z)V

    return-void
.end method

.method public static setPreventCommsForBluetooth(Z)V
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setPreventCommsForBluetoothOnMainThread(Z)V
    .locals 1

    .line 47
    sget-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/discord/socialsdk/NativeCalls;->initializeAudioManager()V

    .line 51
    :cond_0
    sget-object v0, Lcom/discord/socialsdk/NativeCalls;->audioManager:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-virtual {v0, p0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->setPreventCommsForBluetooth(Z)V

    return-void
.end method

.method public static startForegroundService()V
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda1;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stopForegroundService()V
    .locals 2

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/discord/socialsdk/NativeCalls$$ExternalSyntheticLambda2;-><init>()V

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
