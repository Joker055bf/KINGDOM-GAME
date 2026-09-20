.class public Lcom/applovin/impl/sdk/s$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private final b:Landroid/telephony/TelephonyManager;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/applovin/impl/sdk/s$e;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 4

    const-string v0, "DataProvider"

    .line 880
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$j;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/applovin/impl/sdk/s$j;->b:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    return-void

    .line 885
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/impl/sdk/s$j;->d:Ljava/lang/String;

    .line 890
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/s$j;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 894
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    const-string v3, "Unable to collect carrier"

    invoke-virtual {v2, v0, v3, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 899
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/s$j;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/s$j;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 903
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string v2, "Unable to collect get network operator"

    invoke-virtual {p1, v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 906
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/s$j;->c:Ljava/lang/String;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 909
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/s$j;->f:Ljava/lang/String;

    .line 910
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$j;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 844
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$j;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 8

    .line 919
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->h:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->h:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 927
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 931
    new-instance v7, Lcom/applovin/impl/sdk/s$e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$j;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->f(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v7, p0, Lcom/applovin/impl/sdk/s$j;->h:Lcom/applovin/impl/sdk/s$e;

    .line 933
    invoke-static {v7}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$j;->g:Ljava/lang/String;

    return-object v0
.end method
