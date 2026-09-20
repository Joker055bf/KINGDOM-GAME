.class public Lcom/applovin/impl/sdk/s$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private b:J

.field private c:Lcom/applovin/impl/sdk/s$e;

.field private d:Lcom/applovin/impl/sdk/s$e;

.field private e:Lcom/applovin/impl/sdk/s$e;

.field private final f:Landroid/app/ActivityManager;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 3

    .line 1187
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 1192
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1195
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1196
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v0, p0, Lcom/applovin/impl/sdk/s$h;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1200
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string v1, "DataProvider"

    const-string v2, "Unable to collect memory info."

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$h;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Long;
    .locals 9

    .line 1207
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->c:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->c:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 1214
    :cond_1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1217
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1218
    new-instance v2, Lcom/applovin/impl/sdk/s$e;

    iget-object v4, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->i(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/s$h;->c:Lcom/applovin/impl/sdk/s$e;

    .line 1219
    invoke-static {v2}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1223
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect available memory."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method protected b()Ljava/lang/Long;
    .locals 9

    .line 1232
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->d:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->d:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 1239
    :cond_1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1242
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1243
    new-instance v2, Lcom/applovin/impl/sdk/s$e;

    iget-object v4, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->i(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/s$h;->d:Lcom/applovin/impl/sdk/s$e;

    .line 1245
    invoke-static {v2}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1249
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect low memory threshold."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method protected c()Ljava/lang/Boolean;
    .locals 9

    .line 1258
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->e:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->e:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 1265
    :cond_1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1268
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->f:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1269
    new-instance v2, Lcom/applovin/impl/sdk/s$e;

    iget-object v4, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->i(Lcom/applovin/impl/sdk/s;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/s$h;->e:Lcom/applovin/impl/sdk/s$e;

    .line 1271
    invoke-static {v2}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1275
    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/s$h;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v2}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect has low memory."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public d()J
    .locals 2

    .line 1173
    iget-wide v0, p0, Lcom/applovin/impl/sdk/s$h;->b:J

    return-wide v0
.end method
