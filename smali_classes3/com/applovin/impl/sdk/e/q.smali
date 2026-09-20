.class public Lcom/applovin/impl/sdk/e/q;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ad/a;

.field private b:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private c:Lcom/applovin/impl/adview/d;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskProcessJavaScriptTagAd"

    .line 40
    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 42
    new-instance v0, Lcom/applovin/impl/sdk/ad/a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/applovin/impl/sdk/ad/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/p;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/q;->a:Lcom/applovin/impl/sdk/ad/a;

    .line 43
    iput-object p4, p0, Lcom/applovin/impl/sdk/e/q;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 45
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/p;->ar()Lcom/applovin/impl/mediation/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/mediation/h;->a(Lcom/applovin/impl/mediation/h$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/q;Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/d;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q;->c:Lcom/applovin/impl/adview/d;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/q;Lcom/applovin/sdk/AppLovinAdLoadListener;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/ad/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q;->a:Lcom/applovin/impl/sdk/ad/a;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/adview/d;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q;->c:Lcom/applovin/impl/adview/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/a/a;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->g()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->a:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ar()Lcom/applovin/impl/mediation/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/mediation/h;->b(Lcom/applovin/impl/mediation/h$a;)V

    .line 93
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->a:Lcom/applovin/impl/sdk/ad/a;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rendering AppLovin ad #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q;->a:Lcom/applovin/impl/sdk/ad/a;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/a;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/e/q$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/e/q$1;-><init>(Lcom/applovin/impl/sdk/e/q;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
