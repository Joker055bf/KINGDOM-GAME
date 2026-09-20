.class public abstract Lcom/applovin/impl/mediation/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/b/b$a;
    }
.end annotation


# static fields
.field private static d:Lorg/json/JSONObject;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/p;

.field protected final b:Ljava/lang/String;

.field protected final c:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/applovin/impl/mediation/b/b;->b:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    .line 49
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/b;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6

    .line 98
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v3, 0x0

    const-string v5, "bidfloor"

    .line 104
    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v2, v5, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putDouble(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 105
    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v3

    const-string/jumbo v4, "width"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "w"

    invoke-static {v2, v5, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "h"

    invoke-static {v2, p2, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 108
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x3

    .line 109
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 p2, 0x5

    .line 110
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 p2, 0x6

    .line 111
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string p2, "api"

    .line 112
    invoke-static {v2, p2, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "banner"

    .line 114
    invoke-static {v1, p1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    const-string p1, "ext"

    .line 117
    invoke-static {v1, p1, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 118
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .line 248
    sget-object v0, Lcom/applovin/impl/mediation/b/b;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 256
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 260
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "name"

    invoke-static {v2, v3, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bundle"

    .line 262
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 263
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const-string/jumbo v0, "ver"

    invoke-static {v2, v0, p0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sput-object v2, Lcom/applovin/impl/mediation/b/b;->d:Lorg/json/JSONObject;

    return-object v2
.end method

.method private a(Landroid/os/Bundle;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 124
    invoke-static {p3}, Lcom/applovin/impl/mediation/b/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "domain"

    const-string v1, ""

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "storeurl"

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ext"

    .line 129
    invoke-static {p3, p1, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p3
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "dx"

    .line 184
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "w"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "dy"

    .line 185
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "h"

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ext"

    .line 156
    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    .line 169
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 171
    invoke-static {}, Lcom/applovin/impl/b/a;->a()Lcom/applovin/impl/b/a$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/applovin/impl/b/a$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "coppa"

    .line 174
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, v1, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_0
    const-string p2, "ext"

    .line 177
    invoke-static {v0, p2, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/impl/sdk/p;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "ua"

    .line 136
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dnt"

    .line 137
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 138
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "lmt"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v1, "idfa"

    .line 139
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ifa"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "brand_name"

    .line 140
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "make"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model"

    .line 141
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android"

    const-string v2, "os"

    .line 142
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osv"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "devicetype"

    const/4 v2, 0x1

    .line 144
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "connectiontype"

    .line 145
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/i;->g(Lcom/applovin/impl/sdk/p;)I

    move-result p3

    invoke-static {v0, v1, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string p3, "dx"

    .line 146
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const-string/jumbo v1, "w"

    invoke-static {v0, v1, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string p3, "dy"

    .line 147
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "h"

    invoke-static {v0, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string p2, "ext"

    .line 149
    invoke-static {v0, p2, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ext"

    .line 163
    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/b/b$a;Ljava/util/Map;ZLcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "Lcom/applovin/impl/mediation/b/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/applovin/impl/sdk/p;",
            ")",
            "Lcom/applovin/impl/sdk/network/c;"
        }
    .end annotation

    .line 56
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p8}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating OpenRTB request with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-interface {p3}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getCustomParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v1

    .line 61
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/r;->b()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/q;->a(Z)Ljava/util/Map;

    move-result-object v2

    .line 70
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    .line 71
    invoke-static {v4, v5, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "test"

    .line 72
    invoke-interface {p3}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->isTesting()Z

    move-result p3

    invoke-static {v4, p2, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 74
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->a(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v0, p4, p2}, Lcom/applovin/impl/mediation/b/b;->a(Landroid/os/Bundle;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p2

    const-string p3, "imp"

    invoke-static {v4, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJsonArrayIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 75
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->b(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v0, p2, v1}, Lcom/applovin/impl/mediation/b/b;->a(Landroid/os/Bundle;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "app"

    invoke-static {v4, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->c(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2, v2, p8}, Lcom/applovin/impl/mediation/b/b;->a(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/impl/sdk/p;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "device"

    invoke-static {v4, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->d(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/b/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo p3, "user"

    invoke-static {v4, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 78
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->e(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/b/b;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string/jumbo p3, "source"

    invoke-static {v4, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 79
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->f(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lcom/applovin/impl/mediation/b/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "regs"

    invoke-static {v4, p3, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p2, "format"

    .line 80
    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/b/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {v4, p2, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p2, "ext"

    .line 81
    invoke-static {p5}, Lcom/applovin/impl/mediation/b/b$a;->g(Lcom/applovin/impl/mediation/b/b$a;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {v4, p2, p3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObjectIfValid(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 83
    invoke-static {p8}, Lcom/applovin/impl/sdk/network/c;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p2

    .line 84
    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    const-string p2, "POST"

    .line 85
    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p6}, Lcom/applovin/impl/sdk/network/c$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v4}, Lcom/applovin/impl/sdk/network/c$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/network/c$a;->c(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p7}, Lcom/applovin/impl/sdk/network/c$a;->d(Z)Lcom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c$a;->a()Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lorg/json/JSONObject;
    .locals 3

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/r;->d()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/q;->h()Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v2, "IABTCF_gdprApplies"

    .line 207
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gdpr"

    .line 208
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/applovin/impl/b/a;->c()Lcom/applovin/impl/b/a$a;

    move-result-object v1

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/b/a$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1YY-"

    goto :goto_1

    :cond_1
    const-string v1, "1YN-"

    :goto_1
    const-string/jumbo v2, "us_privacy"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 3

    .line 221
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/b;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-static {}, Lcom/applovin/impl/b/a;->b()Lcom/applovin/impl/b/a$a;

    move-result-object v1

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/b/a$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "did_consent"

    .line 226
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 228
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->C()Lcom/applovin/impl/sdk/s$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$g;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/b/b;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/q;->h()Ljava/util/Map;

    move-result-object v1

    const-string v2, "IABTCF_TCString"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "consent"

    .line 236
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method protected c()Ljava/lang/Boolean;
    .locals 9

    .line 271
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    sget-object v1, Lcom/applovin/impl/sdk/c/d;->r:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/c/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v2, ""

    .line 276
    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v0, "1"

    .line 279
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const v2, 0x7fffffff

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v6, Ljava/lang/Integer;

    invoke-static {v1, v3, v6, v0}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 283
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v2, :cond_5

    .line 285
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5
    const-wide v2, 0x7fffffffffffffffL

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-class v7, Ljava/lang/Long;

    invoke-static {v1, v6, v7, v0}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_7

    .line 289
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v2

    if-eqz v2, :cond_7

    .line 291
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 294
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
