.class public Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TgsVKLoginActivity.java"


# static fields
.field static TAG:Ljava/lang/String; = "TgsVKLoginActivity"

.field private static vkAuthCallback:Lcom/vk/id/auth/VKIDAuthCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private failAndFinish(Ljava/lang/String;)V
    .locals 3

    .line 99
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-object p1, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/t4f/sdkauth/vk/VKLogin;->ensureInit(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    sget-object p1, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "login failed.vkid init failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "vk login failed,vkid init failed"

    .line 35
    invoke-direct {p0, p1}, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->failAndFinish(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    new-instance p1, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity$1;

    invoke-direct {p1, p0}, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity$1;-><init>(Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;)V

    sput-object p1, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->vkAuthCallback:Lcom/vk/id/auth/VKIDAuthCallback;

    .line 90
    sget-object p1, Lcom/vk/id/VKID;->Companion:Lcom/vk/id/VKID$Companion;

    invoke-virtual {p1}, Lcom/vk/id/VKID$Companion;->getInstance()Lcom/vk/id/VKID;

    move-result-object p1

    sget-object v0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->vkAuthCallback:Lcom/vk/id/auth/VKIDAuthCallback;

    new-instance v1, Lcom/vk/id/auth/VKIDAuthParams$Builder;

    invoke-direct {v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->build()Lcom/vk/id/auth/VKIDAuthParams;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/vk/id/VKID;->authorize(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/auth/VKIDAuthCallback;Lcom/vk/id/auth/VKIDAuthParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 93
    sget-object v0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "login failed."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vk login failed,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->failAndFinish(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
