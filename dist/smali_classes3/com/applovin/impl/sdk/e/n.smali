.class public Lcom/applovin/impl/sdk/e/n;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskInitializeSdk"

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 35
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/n;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ao()Lcom/applovin/impl/mediation/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->x()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ao()Lcom/applovin/impl/mediation/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/e;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    new-instance v3, Lcom/applovin/impl/sdk/e/n$2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/e/n$2;-><init>(Lcom/applovin/impl/sdk/e/n;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;ZLjava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 173
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 165
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 8

    .line 180
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->N()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c;->d()Z

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, " (use this for test devices)"

    const-string v3, "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>"

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/s;->d()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/r;->b()Ljava/util/Map;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/r;->g()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/q;->k()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/q;->d()Ljava/util/Map;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/q;->c()Ljava/util/Map;

    move-result-object v2

    .line 202
    :goto_0
    new-instance v4, Lcom/applovin/impl/sdk/utils/l;

    invoke-direct {v4}, Lcom/applovin/impl/sdk/utils/l;-><init>()V

    .line 204
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/utils/l;->a()Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    const-string v6, "=====AppLovin SDK====="

    .line 205
    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    const-string v5, "===SDK Versions==="

    .line 208
    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    const-string v6, "Version"

    sget-object v7, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 209
    invoke-virtual {v5, v6, v7}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v7, Lcom/applovin/impl/sdk/c/b;->dT:Lcom/applovin/impl/sdk/c/b;

    .line 210
    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Plugin Version"

    invoke-virtual {v5, v7, v6}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    const-string v6, "Ad Review Version"

    .line 211
    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    .line 212
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/a/f;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OM SDK Version"

    invoke-virtual {v5, v7, v6}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    const-string v5, "===Device Info==="

    .line 215
    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    const-string v6, "OS"

    .line 216
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->getAndroidOSInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v5

    const-string v6, "GAID"

    .line 217
    invoke-virtual {v5, v6, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v3

    const-string v5, "model"

    .line 218
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Model"

    invoke-virtual {v3, v6, v5}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v3

    const-string v5, "locale"

    .line 219
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Locale"

    invoke-virtual {v3, v6, v5}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v3

    const-string/jumbo v5, "sim"

    .line 220
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Emulator"

    invoke-virtual {v3, v6, v5}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v3

    const-string v5, "is_tablet"

    .line 221
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Tablet"

    invoke-virtual {v3, v5, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    const-string v1, "===App Info==="

    .line 224
    invoke-virtual {v4, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    const-string v3, "package_name"

    .line 225
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Application ID"

    invoke-virtual {v1, v5, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    const-string/jumbo v3, "target_sdk"

    .line 226
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Target SDK"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    .line 227
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->getExoPlayerVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ExoPlayer Version"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    const-string v1, "===SDK Settings==="

    .line 230
    invoke-virtual {v4, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    .line 231
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDK Key"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    .line 232
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->s()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mediation Provider"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    .line 233
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/q;->a(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TG"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ax:Lcom/applovin/impl/sdk/c/b;

    .line 234
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AEI"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ay:Lcom/applovin/impl/sdk/c/b;

    .line 235
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MEI"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    .line 236
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Test Mode On"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    const-string v2, "Verbose Logging On"

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    const-string v0, "===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies."

    .line 240
    invoke-virtual {v4, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 244
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "===Consent Flow Settings==="

    .line 248
    invoke-virtual {v4, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v2

    const-string v3, "Enabled"

    .line 249
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    const-string v2, "Privacy Policy URI"

    .line 250
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    move-result-object v1

    const-string v2, "Terms of Service URI"

    .line 251
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/l;

    .line 254
    :cond_3
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/utils/l;->a()Lcom/applovin/impl/sdk/utils/l;

    const-string v0, "AppLovinSdk"

    .line 256
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/utils/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "ms"

    const-string v1, " in "

    const-string/jumbo v2, "succeeded"

    const-string v3, "failed"

    const-string v4, " initialization "

    const-string v5, "AppLovin SDK "

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 41
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Initializing AppLovin SDK v"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/d/g;->d()V

    .line 47
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v8

    sget-object v9, Lcom/applovin/impl/sdk/d/f;->e:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/d/g;->c(Lcom/applovin/impl/sdk/d/f;)V

    .line 48
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object v8

    sget-object v9, Lcom/applovin/impl/sdk/d/f;->f:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/d/g;->c(Lcom/applovin/impl/sdk/d/f;)V

    .line 51
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->W()Lcom/applovin/impl/sdk/v;

    move-result-object v8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/n;->f()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/v;->a(Landroid/content/Context;)V

    .line 52
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->W()Lcom/applovin/impl/sdk/v;

    move-result-object v8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/n;->f()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/v;->b(Landroid/content/Context;)V

    .line 55
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v8

    new-instance v9, Lcom/applovin/impl/sdk/e/b;

    iget-object v10, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-direct {v9, v10}, Lcom/applovin/impl/sdk/e/b;-><init>(Lcom/applovin/impl/sdk/p;)V

    sget-object v10, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v8, v9, v10}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    .line 58
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 60
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/r;->c()V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/q;->e()V

    .line 67
    :goto_0
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->ac()Lcom/applovin/impl/sdk/utils/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/utils/o;->a()V

    .line 69
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/a/a/a;->a()V

    .line 71
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/n;->f()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v8, v9}, Lcom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->i()V

    .line 76
    :cond_2
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->ai()Lcom/applovin/impl/sdk/array/ArrayService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/array/ArrayService;->collectAppHubData()V

    .line 78
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/n;->b()V

    .line 80
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->eo:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    new-instance v8, Lcom/applovin/impl/sdk/e/n$1;

    invoke-direct {v8, p0}, Lcom/applovin/impl/sdk/e/n$1;-><init>(Lcom/applovin/impl/sdk/e/n;)V

    invoke-static {v8}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/n;->a()V

    .line 105
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Z)V

    .line 111
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->al()Lcom/applovin/impl/sdk/network/k;

    move-result-object v8

    invoke-interface {v8}, Lcom/applovin/impl/sdk/network/k;->c()V

    .line 113
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/EventServiceImpl;->maybeTrackAppOpenEvent()V

    .line 117
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->as()Lcom/applovin/impl/mediation/debugger/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/mediation/debugger/b;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->e()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/a;->h:Lcom/applovin/impl/sdk/c/b;

    .line 118
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v8, v9}, Lcom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->f()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 120
    :cond_5
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->as()Lcom/applovin/impl/mediation/debugger/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/mediation/debugger/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_6
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/a/f;->a()V

    .line 134
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->aM:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 136
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->aN:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 137
    iget-object v10, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v10, v8, v9}, Lcom/applovin/impl/sdk/p;->a(J)V

    .line 140
    :cond_7
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    :catchall_0
    move-exception v8

    :try_start_1
    const-string v9, "AppLovinSdk"

    const-string v10, "Failed to initialize SDK!"

    .line 125
    invoke-static {v9, v10, v8}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/a/f;->a()V

    .line 134
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->aM:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 136
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->aN:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 137
    iget-object v10, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v10, v8, v9}, Lcom/applovin/impl/sdk/p;->a(J)V

    .line 140
    :cond_8
    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_9
    move-object v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v8, v9, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_1
    move-exception v8

    .line 131
    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v9}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/applovin/impl/sdk/a/f;->a()V

    .line 134
    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v10, Lcom/applovin/impl/sdk/c/b;->aM:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 136
    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    sget-object v10, Lcom/applovin/impl/sdk/c/b;->aN:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 137
    iget-object v11, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v11, v9, v10}, Lcom/applovin/impl/sdk/p;->a(J)V

    .line 140
    :cond_b
    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/n;->h:Lcom/applovin/impl/sdk/y;

    iget-object v10, p0, Lcom/applovin/impl/sdk/e/n;->g:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/applovin/impl/sdk/e/n;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    move-object v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v9, v10, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_d
    throw v8
.end method
