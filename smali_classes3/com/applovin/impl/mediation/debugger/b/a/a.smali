.class public Lcom/applovin/impl/mediation/debugger/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/impl/mediation/debugger/b/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/mediation/MaxAdFormat;

.field private final d:Lcom/applovin/impl/mediation/debugger/b/a/c;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/b/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/impl/sdk/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/mediation/debugger/b/c/b;",
            ">;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    const-string v1, ""

    .line 80
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->a:Ljava/lang/String;

    const-string v0, "display_name"

    .line 81
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->b:Ljava/lang/String;

    const-string v0, "format"

    const/4 v1, 0x0

    .line 82
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->c:Lcom/applovin/mediation/MaxAdFormat;

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v2, "waterfalls"

    invoke-static {p1, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->e:Ljava/util/List;

    const/4 v0, 0x0

    move-object v2, v1

    .line 88
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 90
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 93
    new-instance v4, Lcom/applovin/impl/mediation/debugger/b/a/c;

    iget-object v5, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->c:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v4, v3, p2, v5, p3}, Lcom/applovin/impl/mediation/debugger/b/a/c;-><init>(Lorg/json/JSONObject;Ljava/util/Map;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/p;)V

    .line 94
    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v4}, Lcom/applovin/impl/mediation/debugger/b/a/c;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iput-object v2, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->d:Lcom/applovin/impl/mediation/debugger/b/a/c;

    return-void
.end method

.method private g()Lcom/applovin/impl/mediation/debugger/b/a/c;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/debugger/b/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/b/a/a;)I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/mediation/debugger/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->c:Lcom/applovin/mediation/MaxAdFormat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/applovin/impl/mediation/debugger/b/a/a;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/b/a/a;->a(Lcom/applovin/impl/mediation/debugger/b/a/a;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/applovin/mediation/MaxAdFormat;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->c:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public e()Lcom/applovin/impl/mediation/debugger/b/a/c;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->d:Lcom/applovin/impl/mediation/debugger/b/a/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/b/a/a;->g()Lcom/applovin/impl/mediation/debugger/b/a/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n---------- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ----------\nIdentifier - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nFormat     - "

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
