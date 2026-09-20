.class public Lcom/chartboost/sdk/impl/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 5
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v1;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier-name"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v1;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile-country-code"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v1;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile-network-code"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 8
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v1;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iso-country-code"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v1;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "phone-type"

    invoke-static {v1, p1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 10
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
