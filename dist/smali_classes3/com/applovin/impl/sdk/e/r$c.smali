.class final Lcom/applovin/impl/sdk/e/r$c;
.super Lcom/applovin/impl/sdk/e/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/r;-><init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 166
    invoke-virtual {p1}, Lcom/applovin/impl/c/e;->c()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/r$c;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r$c;->g:Ljava/lang/String;

    const-string v2, "Processing SDK JSON response..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "xml"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/r$c;->f:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->eI:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$c;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$c;->a(Lcom/applovin/impl/sdk/utils/t;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r$c;->g:Ljava/lang/String;

    const-string v2, "VAST response is over max length"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    sget-object v0, Lcom/applovin/impl/c/f;->e:Lcom/applovin/impl/c/f;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$c;->a(Lcom/applovin/impl/c/f;)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r$c;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r$c;->g:Ljava/lang/String;

    const-string v2, "No VAST response received."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4
    sget-object v0, Lcom/applovin/impl/c/f;->i:Lcom/applovin/impl/c/f;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/r$c;->a(Lcom/applovin/impl/c/f;)V

    :goto_0
    return-void
.end method
