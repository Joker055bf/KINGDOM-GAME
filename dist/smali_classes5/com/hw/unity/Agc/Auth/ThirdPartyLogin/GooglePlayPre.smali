.class public Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;
.super Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.source "GooglePlayPre.java"


# static fields
.field public static TAG:Ljava/lang/String; = "GoogleGameLogin"

.field private static failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private static playclient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private static successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;-><init>()V

    return-void
.end method

.method public static Login(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 2

    .line 28
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    sput-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->playclient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 33
    sput-object p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    .line 34
    sput-object p3, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x26b3

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception p0

    .line 37
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 41
    :cond_0
    throw p0
.end method

.method static synthetic lambda$Login$0(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Token"

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :goto_0
    sget-object p1, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->successCallback:Lcom/huawei/hmf/tasks/OnSuccessListener;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":error in success Callback!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$Login$1(Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->failCallback:Lcom/huawei/hmf/tasks/OnFailureListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":error in fail Callback!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/GooglePlayPre;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
