.class public Lcom/t4ftgs/channel/global/GlobalSDK;
.super Ljava/lang/Object;
.source "GlobalSDK.java"


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final Only_Bind_Platform:Ljava/lang/String; = "only_bind_platform"

.field private static final SUPPORT_PLATFORM:Ljava/lang/String; = "support_platform"

.field public static final TAG:Ljava/lang/String; = "[sdktgs.globalsdk]"

.field private static final TOAST_LOGIN_FAILED:Ljava/lang/String; = "LoginFailed"

.field private static final mGlobalSDK:Lcom/t4ftgs/channel/global/GlobalSDK;


# instance fields
.field private getCodeListener:Lcom/t4ftgs/channel/global/listener/IGetCodeListener;

.field private mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

.field private mLocale:Ljava/util/Locale;

.field private final mLoginSelection:Lcom/t4ftgs/channel/global/ui/LoginSelection;

.field private final mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field private mXmlConfigMap:Lcom/t4ftgs/channel/global/ConfigMap;


# direct methods
.method public static synthetic $r8$lambda$x7NqrQ_C8pY478e-LsT2gXb8MOA(Lcom/t4ftgs/channel/global/GlobalSDK;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/GlobalSDK;->lambda$toast$4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/t4ftgs/channel/global/GlobalSDK;

    invoke-direct {v0}, Lcom/t4ftgs/channel/global/GlobalSDK;-><init>()V

    sput-object v0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalSDK:Lcom/t4ftgs/channel/global/GlobalSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-direct {v0}, Lcom/t4ftgs/channel/global/ui/LoginSelection;-><init>()V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mLoginSelection:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    .line 36
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-direct {v0}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;-><init>()V

    iput-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    return-void
.end method

.method private convertLanguageLocal(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "cn"

    .line 333
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object p1

    :cond_1
    const-string v1, "de"

    .line 335
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v1, "fr"

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v1, "po"

    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "pt"

    if-nez v1, :cond_16

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v1, "pl"

    .line 344
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string v1, "zh"

    .line 347
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    const-string v1, "id"

    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 352
    new-instance p1, Ljava/util/Locale;

    const-string v0, "in"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_7
    const-string v1, "sp"

    .line 353
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "es"

    if-nez v1, :cond_15

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const-string v1, "ru"

    .line 356
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 358
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_9
    const-string v1, "ar"

    .line 359
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 361
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_a
    const-string v1, "tr"

    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 364
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_b
    const-string v1, "vi"

    .line 365
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 367
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_c
    const-string v1, "th"

    .line 368
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 370
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_d
    const-string v1, "it"

    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 373
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_e
    const-string v1, "en"

    .line 374
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 376
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_f
    const-string v1, "jp"

    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ja"

    if-nez v1, :cond_14

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    :cond_10
    const-string v1, "kr"

    .line 380
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 382
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ko"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_11
    const-string v1, "uk"

    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 385
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_12
    const-string v1, "nl"

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 388
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_13
    return-object v0

    .line 379
    :cond_14
    :goto_0
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 355
    :cond_15
    :goto_1
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 343
    :cond_16
    :goto_2
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getInstance()Lcom/t4ftgs/channel/global/GlobalSDK;
    .locals 1

    .line 52
    sget-object v0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalSDK:Lcom/t4ftgs/channel/global/GlobalSDK;

    return-object v0
.end method

.method private getXmlConfig(Landroid/app/Activity;Z)Lcom/t4ftgs/channel/global/ConfigMap;
    .locals 1

    if-eqz p1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mXmlConfigMap:Lcom/t4ftgs/channel/global/ConfigMap;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-static {}, Lcom/t4f/config/TgsConfig;->getInstance()Lcom/t4f/config/TgsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/t4f/config/TgsConfig;->getConfig(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 175
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    new-instance p2, Lcom/t4ftgs/channel/global/ConfigMap;

    invoke-direct {p2}, Lcom/t4ftgs/channel/global/ConfigMap;-><init>()V

    .line 179
    invoke-virtual {p2, p1}, Lcom/t4ftgs/channel/global/ConfigMap;->putAll(Ljava/util/Map;)V

    .line 180
    iput-object p2, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mXmlConfigMap:Lcom/t4ftgs/channel/global/ConfigMap;

    return-object p2

    .line 176
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mXmlConfigMap:Lcom/t4ftgs/channel/global/ConfigMap;

    return-object p1

    .line 172
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mXmlConfigMap:Lcom/t4ftgs/channel/global/ConfigMap;

    return-object p1
.end method

.method private initial(Landroid/app/Activity;Ljava/lang/Object;ZLcom/t4f/sdk/core/OnFinish;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/t4f/sdk/core/OnFinish<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "[sdktgs.globalsdk]"

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 142
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/t4ftgs/channel/global/GlobalSDK;->getXmlConfig(Landroid/app/Activity;Z)Lcom/t4ftgs/channel/global/ConfigMap;

    move-result-object p3

    if-nez p3, :cond_1

    .line 144
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-class v2, Lcom/t4ftgs/channel/global/EmptyActivity;

    invoke-direct {p3, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string p3, "Initial android global channel.AAR version=3.2.14.k1d2"

    .line 146
    invoke-static {p2, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p3, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-virtual {p3, p1, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->initial(Landroid/app/Activity;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z

    const-string p3, "Succeed"

    const/16 v2, 0x7d0

    .line 148
    invoke-static {p1, v2, p3, v1, p4}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    .line 150
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception init android channel selection.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Exception.e="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x7d1

    invoke-static {p1, p3, p2, v1, p4}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return v0
.end method

.method private initialForAuth(Landroid/app/Activity;Ljava/lang/Object;ZLcom/t4f/sdk/core/OnFinish;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/t4f/sdk/core/OnFinish<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "[sdktgs.globalsdk]"

    if-nez p3, :cond_0

    .line 103
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/t4ftgs/channel/global/GlobalSDK;->getXmlConfig(Landroid/app/Activity;Z)Lcom/t4ftgs/channel/global/ConfigMap;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_0
    :goto_0
    const-string p3, "Start EmptyActivity for auth init (fix display issue on Honor X20)."

    .line 105
    invoke-static {v1, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p3, Landroid/content/Intent;

    const-class v2, Lcom/t4ftgs/channel/global/EmptyActivity;

    invoke-direct {p3, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string p3, "Auth init succeed (no pay init)."

    .line 108
    invoke-static {v1, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Auth init succeed"

    const/16 v2, 0x7d0

    .line 109
    invoke-static {p1, v2, p3, p2, p4}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 111
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception init android channel auth.e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x7d1

    invoke-static {p1, v1, p3, p2, p4}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return v0
.end method

.method private initialForPay(Landroid/app/Activity;Lcom/t4f/sdk/core/OnFinish;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/t4f/sdk/core/OnFinish<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/t4ftgs/channel/global/GlobalSDK;->getXmlConfig(Landroid/app/Activity;Z)Lcom/t4ftgs/channel/global/ConfigMap;

    .line 126
    iget-object v2, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-virtual {v2, p1, v1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->initial(Landroid/app/Activity;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Z

    const-string v2, "Pay init succeed"

    const/16 v3, 0x7d0

    .line 127
    invoke-static {p1, v3, v2, v1, p2}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception init android channel pay.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[sdktgs.globalsdk]"

    invoke-static {v4, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-static {p1, v3, v2, v1, p2}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return v0
.end method

.method static synthetic lambda$init$2(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-static {p0, p2, p3, p4, p1}, Lcom/t4f/utils/Utils;->notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method static synthetic lambda$initForAuth$0(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p0, p2, p3, p4, p1}, Lcom/t4f/utils/Utils;->notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method static synthetic lambda$initForPay$1(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-static {p0, p2, p3, p4, p1}, Lcom/t4f/utils/Utils;->notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method static synthetic lambda$selectLoginPlatform$3(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;ILjava/lang/String;Lcom/t4ftgs/channel/global/ui/LoginPlatform;)V
    .locals 4

    .line 235
    new-instance v0, Lcom/t4f/json/Json;

    invoke-direct {v0}, Lcom/t4f/json/Json;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 236
    invoke-virtual {p4}, Lcom/t4ftgs/channel/global/ui/LoginPlatform;->getPlatform()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "platform"

    .line 235
    invoke-virtual {v0, v3, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 237
    invoke-virtual {p4}, Lcom/t4ftgs/channel/global/ui/LoginPlatform;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object v0

    if-eqz p4, :cond_2

    .line 238
    invoke-virtual {p4}, Lcom/t4ftgs/channel/global/ui/LoginPlatform;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string v3, "emailAddress"

    invoke-virtual {v0, v3, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object v0

    if-eqz p4, :cond_3

    .line 239
    invoke-virtual {p4}, Lcom/t4ftgs/channel/global/ui/LoginPlatform;->getEmailCode()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string p4, "emailCode"

    invoke-virtual {v0, p4, v1}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p4

    .line 240
    invoke-virtual {p4}, Lcom/t4f/json/Json;->toString()Ljava/lang/String;

    move-result-object p4

    .line 235
    invoke-static {p0, p2, p3, p4, p1}, Lcom/t4f/utils/Utils;->notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method private synthetic lambda$toast$4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/GlobalSDK;->toast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private test(Landroid/app/Activity;)V
    .locals 4

    .line 314
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, "pl"

    .line 317
    invoke-direct {p0, v2}, Lcom/t4ftgs/channel/global/GlobalSDK;->convertLanguageLocal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :goto_0
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const-string v1, "LoginFailed"

    const-string v2, ""

    .line 320
    invoke-virtual {p0, p1, v1, v2}, Lcom/t4ftgs/channel/global/GlobalSDK;->toast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "[sdktgs.globalsdk]"

    const-string v1, "<<<<<<<<<<<<"

    .line 322
    invoke-static {p1, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<< login="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/t4f/channel/global/R$string;->login:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<< bind="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/t4f/channel/global/R$string;->bind:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<< switchAccount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/t4f/channel/global/R$string;->switchAccount:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<< anonymous="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/t4f/channel/global/R$string;->anonymous:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<< loginFailed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/t4f/channel/global/R$string;->loginFailed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {p1, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static uploadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 394
    invoke-static {}, Lcom/t4ftgs/channel/global/GlobalSDK;->getInstance()Lcom/t4ftgs/channel/global/GlobalSDK;

    move-result-object v0

    iget-object v1, v0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    if-eqz v1, :cond_5

    const-string v0, ""

    if-eqz p0, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz p2, :cond_2

    move-object v4, p2

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    if-eqz p3, :cond_3

    move-object v5, p3

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_3
    if-eqz p4, :cond_4

    move-object v6, p4

    goto :goto_4

    :cond_4
    move-object v6, v0

    .line 396
    :goto_4
    invoke-interface/range {v1 .. v6}, Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;->uploadCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public callGetCodeListener(ZILjava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->getCodeListener:Lcom/t4ftgs/channel/global/listener/IGetCodeListener;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1, p2, p3}, Lcom/t4ftgs/channel/global/listener/IGetCodeListener;->onResult(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public consumePurchaseProduct(Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-virtual {v0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->consumePurchaseProduct(Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    move-result p1

    return p1
.end method

.method public dismissLoginPlatforms(Landroid/app/Activity;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mLoginSelection:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-virtual {v0, p1}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->dismissLoginPlatforms(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public getCurrentLocal()Ljava/util/Locale;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getCustomParams(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p2}, Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "[sdktgs.globalsdk]"

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Get global custom params from c#.key="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/t4ftgs/channel/global/GlobalSDK;->getXmlConfig(Landroid/app/Activity;Z)Lcom/t4ftgs/channel/global/ConfigMap;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 292
    invoke-virtual {p1, p2}, Lcom/t4ftgs/channel/global/ConfigMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get global custom params from xml.key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " valueLength="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz v1, :cond_3

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " xmlParsed="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getGlobalCSharpInvoker()Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    return-object v0
.end method

.method public getPayProvider(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string p1, "[sdktgs.globalsdk]"

    const-string v0, "Got tgs global pay provider.googleChannelPay"

    .line 185
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "googleChannelPay"

    return-object p1
.end method

.method public getXmlConfigString(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/t4ftgs/channel/global/GlobalSDK;->getXmlConfig(Landroid/app/Activity;Z)Lcom/t4ftgs/channel/global/ConfigMap;

    move-result-object p1

    .line 304
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 305
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 309
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getXmlConfigString result is : \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[sdktgs.globalsdk]"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;ZLcom/t4f/sdk/core/OnSDKFinish;Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "[sdktgs.globalsdk]"

    const-string v1, "GlobalSDK.init called (deprecated, recommend using initForAuth or initForPay)."

    .line 91
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p5, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    :goto_0
    iput-object p5, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    if-eqz p4, :cond_1

    .line 93
    new-instance p5, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda3;

    invoke-direct {p5, p1, p4}, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;)V

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/t4ftgs/channel/global/GlobalSDK;->initial(Landroid/app/Activity;Ljava/lang/Object;ZLcom/t4f/sdk/core/OnFinish;)Z

    move-result p1

    return p1
.end method

.method public initForAuth(Landroid/app/Activity;Ljava/lang/String;ZLcom/t4f/sdk/core/OnSDKFinish;Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;)Z
    .locals 0

    if-eqz p5, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p5, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    :goto_0
    iput-object p5, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    if-eqz p4, :cond_1

    .line 67
    new-instance p5, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda2;

    invoke-direct {p5, p1, p4}, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;)V

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/t4ftgs/channel/global/GlobalSDK;->initialForAuth(Landroid/app/Activity;Ljava/lang/Object;ZLcom/t4f/sdk/core/OnFinish;)Z

    move-result p1

    return p1
.end method

.method public initForPay(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;)Z
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p3, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    :goto_0
    iput-object p3, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mGlobalCSharpInvoker:Lcom/t4ftgs/channel/global/GlobalCSharpInvoker;

    if-eqz p2, :cond_1

    .line 81
    new-instance p3, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/t4ftgs/channel/global/GlobalSDK;->initialForPay(Landroid/app/Activity;Lcom/t4f/sdk/core/OnFinish;)Z

    move-result p1

    return p1
.end method

.method public selectLoginPlatform(Landroid/app/Activity;Lcom/t4ftgs/channel/global/auth/SelectOption;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 12

    const-string v0, "support_platform"

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/t4ftgs/channel/global/GlobalSDK;->getCustomParams(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ","

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_1

    .line 196
    array-length v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 v3, 0x0

    const-string v4, "[sdktgs.globalsdk]"

    if-gtz v2, :cond_2

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Fail login android channel while support platforms empty.NOT initialed?.length="

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "support platforms empty.NOT initialed?.length="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x7d5

    invoke-static {p1, v0, p2, v1, p3}, Lcom/t4f/utils/Utils;->notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v3

    :cond_2
    if-eqz p2, :cond_3

    .line 202
    invoke-virtual {p2}, Lcom/t4ftgs/channel/global/auth/SelectOption;->getLanguage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    const-string v6, " local="

    if-eqz v2, :cond_5

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 205
    invoke-direct {p0, v2}, Lcom/t4ftgs/channel/global/GlobalSDK;->convertLanguageLocal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    if-nez v7, :cond_4

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fail convert language to local with language.language="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 208
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Converted language to local with language.language="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v7, v1

    :goto_3
    if-eqz p1, :cond_6

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v1

    :goto_4
    if-eqz v8, :cond_7

    .line 212
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    goto :goto_5

    :cond_7
    move-object v9, v1

    :goto_5
    if-nez v7, :cond_9

    if-eqz v9, :cond_9

    .line 215
    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 216
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v7, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v1

    .line 220
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Fetch setting language config.sdkInt="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v7, :cond_a

    goto :goto_7

    .line 222
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    :goto_7
    if-eqz v9, :cond_b

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Update language config.language="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-object v7, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 226
    iput-object v7, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mLocale:Ljava/util/Locale;

    .line 227
    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_8

    .line 229
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fail update language config while config invalid.language="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "To show select android channel login platform before login.option="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supportPlatformsText"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mLoginSelection:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    if-nez p3, :cond_d

    goto :goto_9

    .line 234
    :cond_d
    new-instance v1, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3}, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;)V

    :goto_9
    move-object v8, v1

    move-object v4, p1

    move-object v6, p0

    move-object v7, p2

    .line 233
    invoke-virtual/range {v3 .. v8}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->selectLoginPlatformByNames(Landroid/app/Activity;[Ljava/lang/String;Lcom/t4ftgs/channel/global/GlobalSDK;Lcom/t4ftgs/channel/global/auth/SelectOption;Lcom/t4f/sdk/core/OnFinish;)Z

    move-result p1

    return p1
.end method

.method public selectLoginPlatform(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p2}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 190
    new-instance v0, Lcom/t4ftgs/channel/global/auth/SelectOption;

    invoke-direct {v0, p2}, Lcom/t4ftgs/channel/global/auth/SelectOption;-><init>(Lorg/json/JSONObject;)V

    .line 191
    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lcom/t4ftgs/channel/global/GlobalSDK;->selectLoginPlatform(Landroid/app/Activity;Lcom/t4ftgs/channel/global/auth/SelectOption;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    move-result p1

    return p1
.end method

.method public setGetCodeListener(Lcom/t4ftgs/channel/global/listener/IGetCodeListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->getCodeListener:Lcom/t4ftgs/channel/global/listener/IGetCodeListener;

    return-void
.end method

.method public tgsLaunchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;)Z
    .locals 6

    .line 253
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->tgsLaunchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public tgsQueryProductDetailsAsync([Ljava/lang/String;[Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mTGSGooglePay:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->tgsQueryProductDetailsAsync([Ljava/lang/String;[Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    move-result p1

    return p1
.end method

.method public toast(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, " "

    const-string v1, "[sdktgs.globalsdk]"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 265
    :cond_0
    invoke-static {}, Lcom/t4f/utils/Utils;->isUiThread()Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "To runInUiThread toast android channel login.key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/GlobalSDK$$ExternalSyntheticLambda4;-><init>(Lcom/t4ftgs/channel/global/GlobalSDK;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v3

    :cond_2
    const-string p3, "LoginFailed"

    .line 269
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 270
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 271
    iget-object p3, p0, Lcom/t4ftgs/channel/global/GlobalSDK;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 272
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    if-eqz p3, :cond_5

    if-eqz v2, :cond_5

    .line 273
    iget-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 274
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update resource language config while toast."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput-object p3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 276
    invoke-virtual {p2, v2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 278
    sget p3, Lcom/t4f/channel/global/R$string;->loginFailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, ""

    .line 279
    :goto_1
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v3

    :cond_8
    return v2

    .line 263
    :cond_9
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "Fail toast android channel login while activity or key invalid.key="

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
