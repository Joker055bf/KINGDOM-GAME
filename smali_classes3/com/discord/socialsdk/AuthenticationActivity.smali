.class public Lcom/discord/socialsdk/AuthenticationActivity;
.super Landroid/app/Activity;
.source "AuthenticationActivity.java"


# static fields
.field private static final CALLBACK_PATH:Ljava/lang/String; = "/authorize/callback"

.field private static final CALLBACK_SCHEME_PREFIX:Ljava/lang/String; = "discord-"

.field private static currentCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;


# instance fields
.field private completed:Z

.field private hasResumedBefore:Z

.field private nativeCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/discord/socialsdk/AuthenticationActivity;->completed:Z

    .line 24
    iput-boolean v0, p0, Lcom/discord/socialsdk/AuthenticationActivity;->hasResumedBefore:Z

    return-void
.end method

.method public static authorize(Landroid/app/Activity;Ljava/lang/String;Lcom/discord/socialsdk/AuthenticationClientCallback;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/discord/socialsdk/AuthenticationActivity;->currentCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;

    if-eqz v0, :cond_0

    const-string v1, "canceled"

    const-string v2, ""

    .line 31
    invoke-virtual {v0, v1, v2, v2}, Lcom/discord/socialsdk/AuthenticationClientCallback;->onAuthorizationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    sput-object p2, Lcom/discord/socialsdk/AuthenticationActivity;->currentCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;

    .line 37
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/discord/socialsdk/AuthenticationActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleIntentReceived(Landroid/content/Intent;)Z
    .locals 3

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->completed:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "discord-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/authorize/callback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "code"

    .line 142
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    .line 143
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    .line 144
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 146
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/discord/socialsdk/AuthenticationActivity;->onAuthorizationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->completed:Z

    return p1

    :cond_4
    return v0
.end method

.method private launch(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, v0}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 160
    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 161
    invoke-virtual {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setBookmarksButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDownloadButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 163
    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 164
    invoke-virtual {v2, v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSendToExternalDefaultHandlerEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    int-to-float v0, v0

    const v5, 0x3f666666

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 166
    invoke-virtual {v2, v0, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityHeightPx(II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 169
    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 170
    iget-object p1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Lcom/discord/socialsdk/AuthenticationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v4
.end method

.method private onAuthorizationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    sput-object v0, Lcom/discord/socialsdk/AuthenticationActivity;->currentCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;

    .line 176
    iget-object v0, p0, Lcom/discord/socialsdk/AuthenticationActivity;->nativeCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1, p2, p3}, Lcom/discord/socialsdk/AuthenticationClientCallback;->onAuthorizationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    .line 48
    invoke-virtual {p0}, Lcom/discord/socialsdk/AuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 50
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 52
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 51
    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x1706

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 59
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    .line 60
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 63
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "has-resumed-before"

    .line 66
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/discord/socialsdk/AuthenticationActivity;->hasResumedBefore:Z

    const-string v2, "completed"

    .line 67
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->completed:Z

    goto :goto_1

    :cond_2
    move v4, v1

    .line 72
    :goto_1
    sget-object p1, Lcom/discord/socialsdk/AuthenticationActivity;->currentCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;

    iput-object p1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->nativeCallback:Lcom/discord/socialsdk/AuthenticationClientCallback;

    .line 75
    iget-boolean p1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->completed:Z

    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/discord/socialsdk/AuthenticationActivity;->finish()V

    return-void

    :cond_3
    if-nez v4, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/discord/socialsdk/AuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 83
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://discord.com/oauth2/authorize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://discord.com"

    const-string v4, "discord://action"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    :cond_4
    invoke-virtual {p0, v1}, Lcom/discord/socialsdk/AuthenticationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 95
    :catch_0
    invoke-direct {p0, p1}, Lcom/discord/socialsdk/AuthenticationActivity;->launch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/discord/socialsdk/AuthenticationActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/discord/socialsdk/AuthenticationActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/discord/socialsdk/AuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/discord/socialsdk/AuthenticationActivity;->handleIntentReceived(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/discord/socialsdk/AuthenticationActivity;->finish()V

    return-void

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/discord/socialsdk/AuthenticationActivity;->hasResumedBefore:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/discord/socialsdk/AuthenticationActivity;->hasResumedBefore:Z

    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/discord/socialsdk/AuthenticationActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has-resumed-before"

    .line 128
    iget-boolean v1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->hasResumedBefore:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "completed"

    .line 129
    iget-boolean v1, p0, Lcom/discord/socialsdk/AuthenticationActivity;->completed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
