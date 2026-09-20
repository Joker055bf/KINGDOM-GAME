.class Lcom/t4f/sdkauth/vk/TgsVKLoginActivity$1;
.super Ljava/lang/Object;
.source "TgsVKLoginActivity.java"

# interfaces
.implements Lcom/vk/id/auth/VKIDAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;


# direct methods
.method constructor <init>(Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity$1;->this$0:Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuth(Lcom/vk/id/AccessToken;)V
    .locals 5

    .line 42
    sget-object v0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "login success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getIdToken()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getUserID()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    const/4 v2, 0x0

    const-string v3, "success"

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object p1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    if-eqz p1, :cond_1

    .line 52
    sget-object p1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    const/4 v0, -0x1

    const-string v1, "vk login failed,accessToken is empty"

    invoke-interface {p1, v0, v1, v2, v2}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity$1;->this$0:Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;

    invoke-virtual {p1}, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->finish()V

    return-void
.end method

.method public onAuthCode(Lcom/vk/id/auth/AuthCodeData;Z)V
    .locals 0

    return-void
.end method

.method public onFail(Lcom/vk/id/VKIDAuthFail;)V
    .locals 4

    .line 67
    instance-of v0, p1, Lcom/vk/id/VKIDAuthFail$Canceled;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 73
    sget-object p1, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "login failed.user canceled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object p1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    if-eqz p1, :cond_2

    .line 75
    sget-object p1, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    const/4 v0, 0x1

    const-string v2, "vk login canceled"

    invoke-interface {p1, v0, v2, v1, v1}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/vk/id/VKIDAuthFail;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "unknow error"

    .line 81
    :cond_1
    sget-object v0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login failed.error is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/t4f/sdkauth/vk/VKLogin;->mInterface:Lcom/t4f/sdkauth/vk/VKLoginInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vk login failed,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-interface {v0, v2, p1, v1, v1}, Lcom/t4f/sdkauth/vk/VKLoginInterface;->loginCallback(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity$1;->this$0:Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;

    invoke-virtual {p1}, Lcom/t4f/sdkauth/vk/TgsVKLoginActivity;->finish()V

    return-void
.end method
