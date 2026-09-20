.class public Lcom/t4f/sdkauth/vk/VKLogin;
.super Ljava/lang/Object;
.source "VKLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/sdkauth/vk/VKLogin$VKResultCode;
    }
.end annotation


# static fields
.field private static final INIT_LOCK:Ljava/lang/Object;

.field private static TAG:Ljava/lang/String; = "VKLogin"

.field public static volatile isInit:Z = false

.field public static mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

.field private static mUnityActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ensureInit(Landroid/content/Context;)Z
    .locals 3

    .line 40
    invoke-static {}, Lcom/t4f/sdkauth/vk/VKLogin;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 41
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-static {}, Lcom/t4f/sdkauth/vk/VKLogin;->isReady()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 45
    :try_start_1
    sget-object v1, Lcom/vk/id/VKID;->Companion:Lcom/vk/id/VKID$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vk/id/VKID$Companion;->init(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 48
    :try_start_2
    sget-object v1, Lcom/t4f/sdkauth/vk/VKLogin;->TAG:Ljava/lang/String;

    const-string v2, "VKID init failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 53
    :cond_1
    :goto_1
    invoke-static {}, Lcom/t4f/sdkauth/vk/VKLogin;->isReady()Z

    move-result p0

    sput-boolean p0, Lcom/t4f/sdkauth/vk/VKLogin;->isInit:Z

    .line 54
    sget-boolean p0, Lcom/t4f/sdkauth/vk/VKLogin;->isInit:Z

    return p0
.end method

.method public static initSDK(Landroid/app/Activity;Lcom/t4f/sdkauth/vk/VKLoginInterface;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->TAG:Ljava/lang/String;

    const-string v1, "initSDK: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sput-object p0, Lcom/t4f/sdkauth/vk/VKLogin;->mUnityActivity:Landroid/app/Activity;

    .line 23
    sput-object p1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    const/4 p0, 0x0

    const-string v0, "success"

    .line 29
    invoke-interface {p1, p0, v0}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->initCallback(ILjava/lang/String;)V

    return-void
.end method

.method private static isReady()Z
    .locals 1

    .line 60
    :try_start_0
    sget-object v0, Lcom/vk/id/VKID;->Companion:Lcom/vk/id/VKID$Companion;

    invoke-virtual {v0}, Lcom/vk/id/VKID$Companion;->getInstance()Lcom/vk/id/VKID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static login()V
    .locals 4

    .line 68
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->TAG:Ljava/lang/String;

    const-string v1, "login: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->mUnityActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/t4f/sdkauth/vk/VKLogin;->mUnityActivity:Landroid/app/Activity;

    const-class v3, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static logout()V
    .locals 3

    .line 75
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->TAG:Ljava/lang/String;

    const-string v1, "logout: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->logoutCallback(ILjava/lang/String;)V

    return-void
.end method
