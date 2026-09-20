.class public Lcom/applovin/impl/sdk/s$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$g;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 1335
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$g;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 1347
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$g;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->q:Lcom/applovin/impl/sdk/c/d;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 10

    .line 1354
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->r:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1357
    :cond_0
    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7fffffff

    .line 1358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    invoke-static {v0, v3, v4, v5}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-wide v4, 0x7fffffffffffffffL

    .line 1359
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-class v7, Ljava/lang/Long;

    iget-object v8, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    invoke-static {v0, v6, v7, v8}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const/4 v7, 0x0

    .line 1360
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-class v8, Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/applovin/impl/sdk/s$g;->b:Landroid/content/SharedPreferences;

    invoke-static {v0, v7, v8, v9}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1362
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v1

    :cond_1
    if-eqz v3, :cond_2

    .line 1366
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_2

    return-object v3

    :cond_2
    if-eqz v6, :cond_3

    .line 1370
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return-object v6

    :cond_3
    return-object v0
.end method
