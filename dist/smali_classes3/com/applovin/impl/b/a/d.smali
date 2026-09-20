.class public Lcom/applovin/impl/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b/a/d$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/p;

.field protected final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/applovin/impl/b/a/d;->a:Lcom/applovin/impl/sdk/p;

    .line 45
    iput-object p1, p0, Lcom/applovin/impl/b/a/d;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/b/a/d;
    .locals 2

    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/b/a/d;->b(Ljava/lang/String;)Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/applovin/impl/b/a/d$a;->a:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Lcom/applovin/impl/b/a/e;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/b/a/e;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0

    .line 56
    :cond_0
    sget-object v1, Lcom/applovin/impl/b/a/d$a;->b:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v1, :cond_1

    .line 58
    new-instance v0, Lcom/applovin/impl/b/a/h;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/b/a/h;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0

    .line 60
    :cond_1
    sget-object v1, Lcom/applovin/impl/b/a/d$a;->c:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v1, :cond_2

    .line 62
    new-instance v0, Lcom/applovin/impl/b/a/g;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/b/a/g;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0

    .line 66
    :cond_2
    new-instance v0, Lcom/applovin/impl/b/a/d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/b/a/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/applovin/impl/b/a/d$a;
    .locals 3

    const-string v0, "alert"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->a:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    :cond_0
    const-string v0, "gdpr_alert"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->b:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    :cond_1
    const-string v0, "event"

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->c:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    :cond_2
    const-string/jumbo v0, "tos"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->d:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    :cond_3
    const-string v0, "pp"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->e:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    :cond_4
    const-string v0, "huc"

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->f:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    :cond_5
    const-string v0, "reinit"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    sget-object p0, Lcom/applovin/impl/b/a/d$a;->g:Lcom/applovin/impl/b/a/d$a;

    return-object p0

    .line 121
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type provided: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/applovin/impl/b/a/d;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/applovin/impl/b/a/d;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 127
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "replacements"

    invoke-static {p1, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 129
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-string v4, ""

    .line 131
    invoke-static {v0, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getObjectAtIndex(Lorg/json/JSONArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<APP_NAME>"

    .line 132
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    iget-object v4, p0, Lcom/applovin/impl/b/a/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/applovin/impl/b/a/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/s$a;->b()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/b/a/d;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/q;->c()Ljava/util/Map;

    move-result-object v4

    const-string v5, "app_name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    :goto_1
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v4, "THIS_APP"

    .line 150
    invoke-static {v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "key"

    .line 158
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/applovin/impl/b/a/d$a;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/applovin/impl/b/a/d;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/b/a/d;->b(Ljava/lang/String;)Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/applovin/impl/b/a/d;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_initial_state"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/applovin/impl/b/a/d;->b:Lorg/json/JSONObject;

    const-string v1, "destination_state_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConsentFlowState{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isInitialState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/d;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "destinationStateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/applovin/impl/b/a/d;->d()Ljava/lang/String;

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
