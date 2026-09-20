.class public Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;
.super Ljava/lang/Object;
.source "GooglePlayGames.java"


# instance fields
.field private mClientId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 1

    if-eqz p4, :cond_2

    const-string v0, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 125
    :goto_1
    invoke-interface {p4, p1, p2, p3}, Lcom/t4f/sdk/core/OnAndroidNativeCallback;->OnAndroidNativeCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkAuthenticated(Landroid/app/Activity;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail check is google play games is authenticated while arg activity is null."

    .line 80
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Arg activity is null."

    .line 81
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return v0

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Fail check is google play games is authenticated while client task is null."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Client games sign client task is null."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v2, p2}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return v4

    .line 91
    :cond_2
    new-instance p1, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_3

    move v0, v4

    :cond_3
    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/t4f/unity/UnityPlayer;->getApplication()Landroid/app/Application;

    move-result-object p1

    :goto_0
    const/16 v0, 0x7d5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "Fail init google play games while context invalid."

    .line 26
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Android context invalid."

    .line 27
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    .line 30
    :cond_1
    invoke-static {p2}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "Fail init google play games while init arg json invalid."

    .line 32
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Init arg json invalid."

    .line 33
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    :cond_2
    const-string v2, "id"

    .line 35
    invoke-virtual {p2, v2}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->mClientId:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "Initial google play games."

    .line 40
    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    const/16 p1, 0x7d0

    const-string p2, "Init succeed"

    .line 42
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "Fail init google play games while init arg client id invalid."

    .line 36
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Init arg client id invalid."

    .line 37
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method synthetic lambda$checkAuthenticated$1$com-t4f-sdkauth-googleplaygames-GooglePlayGames(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/AuthenticationResult;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7d0

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d1

    :goto_1
    if-eqz p2, :cond_2

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v0

    .line 93
    :goto_2
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method synthetic lambda$loadCurrentPlayer$0$com-t4f-sdkauth-googleplaygames-GooglePlayGames(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    const-string v0, ""

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/Player;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_5

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 67
    new-instance v4, Lcom/t4f/json/Json;

    invoke-direct {v4}, Lcom/t4f/json/Json;-><init>()V

    const-string v5, "id"

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v3}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_2

    const/16 v3, 0x7d0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz p2, :cond_3

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    move-object p2, v2

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/t4f/json/Json;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    invoke-direct {p0, v3, p2, v0, p1}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 71
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Exception get google play games current player.e="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2, v2, p1}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_6
    return-void
.end method

.method synthetic lambda$requestServerSideAccess$2$com-t4f-sdkauth-googleplaygames-GooglePlayGames(Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 107
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "Succeed request google play games server side access."

    .line 112
    invoke-static {p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p3, 0x7d0

    const-string v0, "Succeed."

    .line 113
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail request google play games server side access.clientId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " exception="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fail."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/16 v0, 0x7d1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    :goto_1
    return-void
.end method

.method public loadCurrentPlayer(Landroid/app/Activity;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail get google play games current player while arg activity is null."

    .line 51
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Arg activity is null."

    .line 52
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return v0

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    const/4 v3, 0x1

    if-nez p1, :cond_2

    const-string p1, "Fail get google play games current player while player client task is null."

    .line 58
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Client player client task is null."

    .line 59
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return v3

    .line 62
    :cond_2
    new-instance v1, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method public requestServerSideAccess(Landroid/app/Activity;ZLcom/t4f/sdk/core/OnAndroidNativeCallback;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->mClientId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting google play games server side access."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    .line 106
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3, v0}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;Lcom/t4f/sdk/core/OnAndroidNativeCallback;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_1
    :goto_0
    const-string p1, "Client id invalid."

    const/4 p2, 0x0

    const/16 v0, 0x7d5

    .line 101
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/t4f/sdkauth/googleplaygames/GooglePlayGames;->notifyNativeCallback(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnAndroidNativeCallback;)V

    return-void
.end method

.method public test(Landroid/app/Activity;)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    return-void
.end method
