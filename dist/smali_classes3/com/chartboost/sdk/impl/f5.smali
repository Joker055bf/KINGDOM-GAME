.class public Lcom/chartboost/sdk/impl/f5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/chartboost/sdk/impl/f5;->c:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->d:I

    .line 4
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->e:I

    .line 5
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->f:I

    .line 6
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->g:I

    .line 9
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f5;->a:Landroid/content/SharedPreferences;

    .line 10
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f5;->f()I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/f5;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f5;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f5;->b:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/f5;->c:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->e:I

    .line 4
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->f:I

    .line 5
    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->g:I

    .line 6
    iget v0, p0, Lcom/chartboost/sdk/impl/f5;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/f5;->d:I

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f5;->g()V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/h3;)V
    .locals 2

    .line 8
    sget-object v0, Lcom/chartboost/sdk/impl/f5$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget p1, p0, Lcom/chartboost/sdk/impl/f5;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/chartboost/sdk/impl/f5;->g:I

    goto :goto_0

    .line 17
    :cond_1
    iget p1, p0, Lcom/chartboost/sdk/impl/f5;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/chartboost/sdk/impl/f5;->f:I

    goto :goto_0

    .line 18
    :cond_2
    iget p1, p0, Lcom/chartboost/sdk/impl/f5;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/chartboost/sdk/impl/f5;->e:I

    :goto_0
    return-void
.end method

.method public b(Lcom/chartboost/sdk/impl/h3;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/f5$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    iget p1, p0, Lcom/chartboost/sdk/impl/f5;->g:I

    return p1

    .line 8
    :cond_1
    iget p1, p0, Lcom/chartboost/sdk/impl/f5;->f:I

    return p1

    .line 9
    :cond_2
    iget p1, p0, Lcom/chartboost/sdk/impl/f5;->e:I

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/chartboost/sdk/impl/z0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/f5;->d:I

    return v0
.end method

.method public d()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/chartboost/sdk/impl/f5;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f5;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v1, "session_key"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f5;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lcom/chartboost/sdk/impl/f5;->d:I

    const-string v2, "session_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public h()Lcom/chartboost/sdk/impl/g5;
    .locals 9

    .line 1
    new-instance v8, Lcom/chartboost/sdk/impl/g5;

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f5;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f5;->d()J

    move-result-wide v2

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f5;->c()I

    move-result v4

    sget-object v0, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    .line 5
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/f5;->b(Lcom/chartboost/sdk/impl/h3;)I

    move-result v5

    sget-object v0, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    .line 6
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/f5;->b(Lcom/chartboost/sdk/impl/h3;)I

    move-result v6

    sget-object v0, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    .line 7
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/f5;->b(Lcom/chartboost/sdk/impl/h3;)I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/impl/g5;-><init>(Ljava/lang/String;JIIII)V

    return-object v8
.end method
