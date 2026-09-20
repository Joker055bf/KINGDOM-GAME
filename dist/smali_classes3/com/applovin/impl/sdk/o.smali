.class public Lcom/applovin/impl/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/n$a;
.implements Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/sdk/AppLovinWebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/applovin/impl/sdk/p;

.field private final d:Lcom/applovin/impl/sdk/y;

.field private e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

.field private f:Lcom/applovin/impl/sdk/n;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/applovin/impl/sdk/utils/a;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->g:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    .line 54
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Lcom/applovin/impl/sdk/y;

    .line 56
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->t()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->t()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->g:Ljava/lang/ref/WeakReference;

    .line 62
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/o$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/o$1;-><init>(Lcom/applovin/impl/sdk/o;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    .line 71
    new-instance v0, Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/n;-><init>(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->f:Lcom/applovin/impl/sdk/n;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/o;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/utils/a;)Lcom/applovin/impl/sdk/utils/a;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->h:Lcom/applovin/impl/sdk/utils/a;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/o;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/o;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 26
    sput-object p0, Lcom/applovin/impl/sdk/o;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(ZJ)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/applovin/impl/sdk/o;->g()V

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0, p2, p3}, Lcom/applovin/impl/sdk/o;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/o;->a(Lcom/applovin/impl/sdk/p;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/applovin/impl/sdk/p;)Z
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/o;->d()Z

    move-result v0

    const-string v1, "AppLovinSdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Consent dialog already showing"

    .line 247
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 252
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "No internet available, skip showing of consent dialog"

    .line 254
    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 259
    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aF:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ConsentDialogManager"

    if-nez v0, :cond_3

    .line 261
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->d:Lcom/applovin/impl/sdk/y;

    const-string v0, "Blocked publisher from showing consent dialog"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    .line 266
    :cond_3
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 267
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 269
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->d:Lcom/applovin/impl/sdk/y;

    const-string v0, "AdServer returned empty consent dialog URL"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/o;)Lcom/applovin/impl/sdk/utils/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/o;->h:Lcom/applovin/impl/sdk/utils/a;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/o;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/o;->d:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/o;)Lcom/applovin/impl/sdk/n;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/o;->f:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 26
    sget-object v0, Lcom/applovin/impl/sdk/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 26
    sget-object v0, Lcom/applovin/impl/sdk/o;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->h:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    .line 280
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/applovin/impl/sdk/o;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinWebViewActivity;

    const/4 v1, 0x0

    .line 283
    sput-object v1, Lcom/applovin/impl/sdk/o;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->finish()V

    .line 289
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;->onDismiss()V

    .line 292
    iput-object v1, p0, Lcom/applovin/impl/sdk/o;->e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aI:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 217
    new-instance v3, Lcom/applovin/impl/sdk/o$5;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/o$5;-><init>(Lcom/applovin/impl/sdk/o;Landroid/app/Activity;)V

    invoke-static {v3, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 151
    new-instance v0, Lcom/applovin/impl/sdk/o$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/o$4;-><init>(Lcom/applovin/impl/sdk/o;J)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/applovin/impl/sdk/o$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/sdk/o$3;-><init>(Lcom/applovin/impl/sdk/o;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    new-instance v1, Lcom/applovin/impl/sdk/o$2;

    invoke-direct {v1, p0, v0}, Lcom/applovin/impl/sdk/o$2;-><init>(Lcom/applovin/impl/sdk/o;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method d()Z
    .locals 1

    .line 239
    sget-object v0, Lcom/applovin/impl/sdk/o;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceivedEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accepted"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 169
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    .line 171
    invoke-direct {p0}, Lcom/applovin/impl/sdk/o;->g()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "rejected"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 176
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    .line 179
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aO:Lcom/applovin/impl/sdk/c/b;

    .line 180
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 179
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(ZJ)V

    goto :goto_0

    :cond_1
    const-string v0, "closed"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aK:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aP:Lcom/applovin/impl/sdk/c/b;

    .line 186
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 185
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(ZJ)V

    goto :goto_0

    :cond_2
    const-string v0, "dismissed_via_back_button"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aL:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aQ:Lcom/applovin/impl/sdk/c/b;

    .line 193
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 192
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/o;->a(ZJ)V

    :cond_3
    :goto_0
    return-void
.end method
