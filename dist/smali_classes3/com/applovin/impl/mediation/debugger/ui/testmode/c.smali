.class public Lcom/applovin/impl/mediation/debugger/ui/testmode/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    .line 32
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->J:Lcom/applovin/impl/sdk/c/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->d:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->J:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;)V

    .line 35
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->c:Z

    .line 40
    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->K:Lcom/applovin/impl/sdk/c/d;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->b:Z

    .line 43
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->K:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v1, "test_mode_idfas"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->S()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->d()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->D()Z

    move-result v1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->k()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->R()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/q;->g()Z

    move-result v1

    .line 145
    :goto_0
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->containsCaseInsensitiveString(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v1, :cond_3

    .line 149
    invoke-static {}, Lcom/applovin/sdk/AppLovinSdkUtils;->isEmulator()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->b:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->K:Lcom/applovin/impl/sdk/c/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    return-void
.end method
