.class public Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;
.super Ljava/lang/Object;
.source "TGSGLoginInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "tgsLog:SDKAuthGoogle"

.field private static credentialManager:Landroidx/credentials/CredentialManager; = null

.field private static final loginCancel:I = 0x1

.field private static final loginFailed:I = 0x2

.field private static final loginSuccess:I

.field private static mActivity:Landroid/app/Activity;

.field private static mClientId:Ljava/lang/String;

.field private static mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;)V
    .locals 2

    .line 45
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v1, "Native Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 47
    sget-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error activity is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    sput-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_1

    .line 53
    sget-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error listener is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_1
    sput-object p2, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 59
    sget-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string p1, "Initialize: error AppKey(ClientId) is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    const-string p1, "google login Initialize error: AppKey(ClientId) is empty"

    invoke-interface {p0, p2, p1, v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onInitResult(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_2
    sput-object p1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mClientId:Ljava/lang/String;

    .line 67
    :try_start_0
    sget-object p0, Landroidx/credentials/CredentialManager;->Companion:Landroidx/credentials/CredentialManager$Companion;

    sget-object p1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialManager$Companion;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object p0

    sput-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->credentialManager:Landroidx/credentials/CredentialManager;

    .line 69
    sget-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    const-string p1, "success"

    const/4 v1, 0x1

    invoke-interface {p0, v1, p1, v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onInitResult(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0, v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onInitResult(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static Login(Z)V
    .locals 3

    .line 94
    :try_start_0
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v1, "Native Login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 102
    new-instance p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleClearCredential(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V

    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleLogin()V

    .line 109
    sget-object p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v0, "Native Login end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "SDKAuthGoogle"

    const-string v0, "Login: do not Init!"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 111
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native Login e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static Logout()V
    .locals 4

    .line 116
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v1, "Native Logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_0
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v1, "Native Logout...signOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleClearCredential(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Native Logout e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static SwitchAccount()V
    .locals 4

    .line 81
    :try_start_0
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v1, "Native SwitchAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleClearCredential(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Native SwitchAccount e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;
    .locals 1

    .line 28
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    return-object v0
.end method

.method private static googleClearCredential(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V
    .locals 6

    .line 131
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->credentialManager:Landroidx/credentials/CredentialManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    const-string v2, "googleClearCredential credentialManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 134
    invoke-interface {p0, v1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;->onResult(Z)V

    :cond_0
    return-void

    .line 140
    :cond_1
    :try_start_0
    new-instance v0, Landroidx/credentials/ClearCredentialStateRequest;

    invoke-direct {v0}, Landroidx/credentials/ClearCredentialStateRequest;-><init>()V

    .line 143
    sget-object v2, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->credentialManager:Landroidx/credentials/CredentialManager;

    new-instance v3, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;

    invoke-direct {v4, p0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;-><init>(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V

    const/4 v5, 0x0

    invoke-interface {v2, v0, v5, v3, v4}, Landroidx/credentials/CredentialManager;->clearCredentialStateAsync(Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    sget-object v2, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "googleClearCredential e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 168
    invoke-interface {p0, v1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;->onResult(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static googleLogin()V
    .locals 7

    .line 178
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;

    sget-object v1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;->build()Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption;

    move-result-object v0

    .line 186
    new-instance v1, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v1}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    .line 187
    invoke-virtual {v1, v0}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v3

    .line 190
    sget-object v1, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->credentialManager:Landroidx/credentials/CredentialManager;

    sget-object v2, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    .line 194
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$2;

    invoke-direct {v6}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$2;-><init>()V

    .line 190
    invoke-interface/range {v1 .. v6}, Landroidx/credentials/CredentialManager;->getCredentialAsync(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method static synthetic lambda$Login$1(Z)V
    .locals 0

    .line 104
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleLogin()V

    return-void
.end method

.method static synthetic lambda$Logout$2(Z)V
    .locals 2

    .line 120
    sget-object v0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->mListener:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 121
    invoke-interface {v0, p0, v1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginListener;->onLogoutResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$SwitchAccount$0(Z)V
    .locals 0

    .line 85
    invoke-static {}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleLogin()V

    return-void
.end method
