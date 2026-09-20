.class public Lcom/chartboost/sdk/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/h3;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/j;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/j;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/j;->d:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/j;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/j;->f:Z

    return-void
.end method

.method public static a()Lcom/chartboost/sdk/impl/j;
    .locals 8

    .line 1
    new-instance v7, Lcom/chartboost/sdk/impl/j;

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    const-string v2, "no native endpoint"

    const-string v3, "/auction/sdk/banner"

    const-string v4, "/banner/show"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/j;-><init>(Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method

.method public static c()Lcom/chartboost/sdk/impl/j;
    .locals 8

    .line 1
    new-instance v7, Lcom/chartboost/sdk/impl/j;

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    const-string v2, "/interstitial/get"

    const-string/jumbo v3, "webview/%s/interstitial/get"

    const-string v4, "/interstitial/show"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/j;-><init>(Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method

.method public static d()Lcom/chartboost/sdk/impl/j;
    .locals 8

    .line 1
    new-instance v7, Lcom/chartboost/sdk/impl/j;

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    const-string v2, "/reward/get"

    const-string/jumbo v3, "webview/%s/reward/get"

    const-string v4, "/reward/show"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/j;-><init>(Lcom/chartboost/sdk/impl/h3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
