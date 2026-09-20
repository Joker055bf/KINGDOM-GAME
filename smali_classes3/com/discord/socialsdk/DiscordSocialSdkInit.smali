.class public Lcom/discord/socialsdk/DiscordSocialSdkInit;
.super Ljava/lang/Object;
.source "DiscordSocialSdkInit.java"


# static fields
.field private static engineActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DiscordSocialSdk"

    const-string v1, "Loading native library"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "discord_partner_sdk"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/discord/socialsdk/DiscordSocialSdkInit;->engineActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getEngineActivity()Landroid/app/Activity;
    .locals 1

    .line 35
    sget-object v0, Lcom/discord/socialsdk/DiscordSocialSdkInit;->engineActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static setEngineActivity(Landroid/app/Activity;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/discord/socialsdk/DiscordSocialSdkInit;->engineActivity:Landroid/app/Activity;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/discord/org/webrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    return-void
.end method
