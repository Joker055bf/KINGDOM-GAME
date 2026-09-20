.class public final Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;
.super Landroid/app/Activity;
.source "LineSdkWrapperActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;,
        Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineSdkWrapperActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineSdkWrapperActivity.kt\ncom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,125:1\n1275#2,2:126\n*S KotlinDebug\n*F\n+ 1 LineSdkWrapperActivity.kt\ncom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity\n*L\n88#1:126,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;",
        "Landroid/app/Activity;",
        "()V",
        "identifier",
        "",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "parseBotPrompt",
        "Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;",
        "name",
        "startLineSdkLoginActivity",
        "Companion",
        "line_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;

.field private static final KEY_BOT_PROMPT:Ljava/lang/String; = "botPrompt"

.field private static final KEY_CHANNEL_ID:Ljava/lang/String; = "channelId"

.field private static final KEY_IDENTIFIER:Ljava/lang/String; = "identifier"

.field private static final KEY_ONLY_WEB_LOGIN:Ljava/lang/String; = "onlyWebLogin"

.field private static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final REQUEST_CODE_LOGIN:I = 0x4d2

.field private static final TAG:Ljava/lang/String; = "LineSdkWrapperActivity"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->Companion:Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$Companion;

    .line 102
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final parseBotPrompt(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->values()[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object v1

    .line 126
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 89
    invoke-virtual {v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final startLineSdkLoginActivity()V
    .locals 7

    .line 58
    invoke-virtual {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "onlyWebLogin"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    invoke-virtual {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "botPrompt"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->parseBotPrompt(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object v3

    .line 62
    invoke-virtual {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "scope"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 63
    :goto_0
    sget-object v4, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string v5, "LineSdkWrapperActivity"

    invoke-virtual {v4, v5, v1}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Lcom/linecorp/linesdk/Scope;->parseToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 66
    sget-object v4, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v4, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    .line 69
    invoke-virtual {v4, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v4, v3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->botPrompt(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    .line 74
    :cond_2
    invoke-virtual {v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object v1

    if-eqz v2, :cond_3

    .line 77
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntentWithoutLineAppAuth(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_3
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    const-string v1, "if (onlyWebLogin) {\n            LineLoginApi.getLoginIntentWithoutLineAppAuth(this, channelId, lineAuthenticationParams)\n        } else {\n            LineLoginApi.getLoginIntent(this, channelId, lineAuthenticationParams)\n        }"

    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x4d2

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0x4d2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-string v0, "login error"

    const/4 v1, 0x0

    const-string v2, "identifier"

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_2

    .line 31
    :cond_1
    new-instance p2, Lcom/linecorp/linesdk/unitywrapper/model/ErrorForUnity;

    invoke-direct {p2, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/model/ErrorForUnity;-><init>(ILjava/lang/String;)V

    .line 32
    new-instance p1, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    iget-object v3, p0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_9

    sget-object v4, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "gson.toJson(errorForUnity)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v3, p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageError()V

    .line 35
    :cond_2
    invoke-static {p3}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginResultFromIntent(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    const-string p2, "getLoginResultFromIntent(data)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string p3, "login result:"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "LineSdkWrapperActivity"

    invoke-virtual {p2, v3, p3}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p2

    sget-object p3, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponseCode;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_7

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    .line 49
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    invoke-virtual {p2, v3, v0}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    iget-object p3, p0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->identifier:Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    invoke-virtual {p2, p3, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineLoginResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_5
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string p3, "login canceled"

    invoke-virtual {p2, v3, p3}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->Companion:Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;

    iget-object p3, p0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->identifier:Ljava/lang/String;

    if-eqz p3, :cond_6

    const-string v0, "login is canceled"

    invoke-virtual {p2, p3, p1, v0}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload$Companion;->sendMessageError(Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineLoginResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_7
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/util/Log;->INSTANCE:Lcom/linecorp/linesdk/unitywrapper/util/Log;

    const-string p3, "login success"

    invoke-virtual {p2, v3, p3}, Lcom/linecorp/linesdk/unitywrapper/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object p2, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->gson:Lcom/google/gson/Gson;

    sget-object p3, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;->Companion:Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;

    invoke-virtual {p3, p1}, Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity$Companion;->convertLineResult(Lcom/linecorp/linesdk/auth/LineLoginResult;)Lcom/linecorp/linesdk/unitywrapper/model/LoginResultForUnity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;

    iget-object p3, p0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->identifier:Ljava/lang/String;

    if-eqz p3, :cond_8

    const-string v0, "resultJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3, p1}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/linecorp/linesdk/unitywrapper/CallbackPayload;->sendMessageOk()V

    .line 54
    :goto_1
    invoke-virtual {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->finish()V

    return-void

    .line 42
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->identifier:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/linecorp/linesdk/unitywrapper/activity/LineSdkWrapperActivity;->startLineSdkLoginActivity()V

    return-void
.end method
