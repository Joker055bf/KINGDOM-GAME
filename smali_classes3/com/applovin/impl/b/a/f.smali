.class public Lcom/applovin/impl/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/applovin/impl/b/a/f;->a:Lcom/applovin/impl/sdk/p;

    .line 46
    iput-object p1, p0, Lcom/applovin/impl/b/a/f;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/b/a/f;
    .locals 3

    const-string/jumbo v0, "title"

    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "key"

    .line 29
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TOS"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/b/a/b;->d()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "PP"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->c()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 40
    :cond_1
    new-instance v0, Lcom/applovin/impl/b/a/f;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/b/a/f;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/applovin/impl/b/a/f;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "replacements"

    .line 52
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "key"

    const-string v4, ""

    .line 53
    invoke-static {v0, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->optList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/applovin/impl/b/a/f$a;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/applovin/impl/b/a/f;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v0, Lcom/applovin/impl/b/a/f$a;->b:Lcom/applovin/impl/b/a/f$a;

    return-object v0

    :cond_0
    const-string v1, "destructive"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    sget-object v0, Lcom/applovin/impl/b/a/f$a;->a:Lcom/applovin/impl/b/a/f$a;

    return-object v0

    .line 66
    :cond_2
    :goto_0
    sget-object v0, Lcom/applovin/impl/b/a/f$a;->c:Lcom/applovin/impl/b/a/f$a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/applovin/impl/b/a/f;->b:Lorg/json/JSONObject;

    const-string v1, "destination_state_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/applovin/impl/b/a/f;->b:Lorg/json/JSONObject;

    const-string v1, "event"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConsentFlowStateAlertAction{title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "destinationStateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
