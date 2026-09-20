.class public Lcom/applovin/impl/sdk/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private b:Lcom/applovin/impl/sdk/s$e;

.field private c:Lcom/applovin/impl/sdk/s$e;

.field private final d:Landroid/content/Intent;

.field private e:Landroid/os/BatteryManager;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 3

    .line 954
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$d;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/s$d;->d:Landroid/content/Intent;

    .line 958
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$d;->e:Landroid/os/BatteryManager;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 941
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$d;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 8

    .line 967
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->b:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->b:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 973
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->e:Landroid/os/BatteryManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 975
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    goto :goto_0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->d:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v2, "level"

    const/4 v3, -0x1

    .line 981
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 982
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$d;->d:Landroid/content/Intent;

    const-string v4, "scale"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ltz v0, :cond_4

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 991
    :goto_0
    new-instance v7, Lcom/applovin/impl/sdk/s$e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$d;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->d(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v7, p0, Lcom/applovin/impl/sdk/s$d;->b:Lcom/applovin/impl/sdk/s$e;

    .line 993
    invoke-static {v7}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method protected b()Ljava/lang/Integer;
    .locals 8

    .line 999
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->c:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->c:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1005
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->e:Landroid/os/BatteryManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 1007
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    goto :goto_0

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->d:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    .line 1013
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_3

    return-object v1

    .line 1018
    :cond_3
    :goto_0
    new-instance v7, Lcom/applovin/impl/sdk/s$e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$d;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$d;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->d(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v7, p0, Lcom/applovin/impl/sdk/s$d;->c:Lcom/applovin/impl/sdk/s$e;

    .line 1020
    invoke-static {v7}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
