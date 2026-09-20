.class public Lcom/applovin/impl/sdk/e/p;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/ad/i;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/applovin/impl/sdk/ad/d;

.field private final c:Lcom/applovin/impl/sdk/ad/b;

.field private final d:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskProcessAdResponse"

    .line 41
    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 47
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/p;->a:Lorg/json/JSONObject;

    .line 48
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/p;->b:Lcom/applovin/impl/sdk/ad/d;

    .line 49
    iput-object p3, p0, Lcom/applovin/impl/sdk/e/p;->c:Lcom/applovin/impl/sdk/ad/b;

    .line 50
    iput-object p4, p0, Lcom/applovin/impl/sdk/e/p;->d:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 9

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "undefined"

    .line 79
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applovin"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->g:Ljava/lang/String;

    const-string v2, "Starting task for AppLovin ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/e/s;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/p;->a:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/applovin/impl/sdk/e/p;->c:Lcom/applovin/impl/sdk/ad/b;

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    move-object v3, v0

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/e/s;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 87
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "vast"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->g:Ljava/lang/String;

    const-string v2, "Starting task for VAST ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->c:Lcom/applovin/impl/sdk/ad/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v0, v1, p0, v2}, Lcom/applovin/impl/sdk/e/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/r;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    :cond_3
    const-string v1, "js_tag"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->g:Ljava/lang/String;

    const-string v2, "Starting task for JS tag ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    new-instance v0, Lcom/applovin/impl/sdk/e/q;

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/p;->a:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/applovin/impl/sdk/e/p;->c:Lcom/applovin/impl/sdk/ad/b;

    iget-object v8, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    move-object v3, v0

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/e/q;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 103
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    .line 107
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to process ad of unknown type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_6
    new-instance p1, Lcom/applovin/impl/sdk/AppLovinError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ad type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x320

    invoke-direct {p1, v1, v0}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/p;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->d:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 123
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/p;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method public failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->d:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/i;

    if-eqz v1, :cond_1

    .line 133
    check-cast v0, Lcom/applovin/impl/sdk/ad/i;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/ad/i;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinError;->getCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->a:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "ads"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/p;->g:Ljava/lang/String;

    const-string v3, "Processing ad..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/p;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->g:Ljava/lang/String;

    const-string v2, "No ads were returned from the server"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/p;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/p;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/p;->a:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/p;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/Utils;->maybeHandleNoFillResponseForPublisher(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 73
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinError;->NO_FILL:Lcom/applovin/impl/sdk/AppLovinError;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/p;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    :goto_0
    return-void
.end method
