.class public Lcom/chartboost/sdk/impl/w4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lorg/json/JSONObject;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Integer;

.field public final q:Lcom/chartboost/sdk/impl/v1;

.field public final r:Lcom/chartboost/sdk/impl/j4;

.field public final s:Lcom/chartboost/sdk/impl/g5;

.field public final t:Lcom/chartboost/sdk/impl/e3;

.field public final u:Lcom/chartboost/sdk/impl/q4;

.field public final v:Lcom/chartboost/sdk/impl/l5;

.field public final w:Lcom/chartboost/sdk/impl/f2;

.field public final x:Lcom/chartboost/sdk/impl/m2;

.field public final y:Lcom/chartboost/sdk/impl/t3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/e3;Lcom/chartboost/sdk/impl/q4;Lcom/chartboost/sdk/impl/v1;Lcom/chartboost/sdk/impl/g5;Lcom/chartboost/sdk/impl/l5;Lcom/chartboost/sdk/impl/j4;Lcom/chartboost/sdk/impl/f2;Lcom/chartboost/sdk/impl/m2;Lcom/chartboost/sdk/impl/t3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/chartboost/sdk/impl/w4;->t:Lcom/chartboost/sdk/impl/e3;

    .line 3
    iput-object p4, p0, Lcom/chartboost/sdk/impl/w4;->u:Lcom/chartboost/sdk/impl/q4;

    .line 4
    iput-object p5, p0, Lcom/chartboost/sdk/impl/w4;->q:Lcom/chartboost/sdk/impl/v1;

    .line 5
    iput-object p6, p0, Lcom/chartboost/sdk/impl/w4;->s:Lcom/chartboost/sdk/impl/g5;

    .line 6
    iput-object p7, p0, Lcom/chartboost/sdk/impl/w4;->v:Lcom/chartboost/sdk/impl/l5;

    .line 7
    iput-object p8, p0, Lcom/chartboost/sdk/impl/w4;->r:Lcom/chartboost/sdk/impl/j4;

    .line 8
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->h:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/chartboost/sdk/impl/w4;->i:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/chartboost/sdk/impl/w4;->w:Lcom/chartboost/sdk/impl/f2;

    .line 11
    iput-object p10, p0, Lcom/chartboost/sdk/impl/w4;->x:Lcom/chartboost/sdk/impl/m2;

    .line 12
    iput-object p11, p0, Lcom/chartboost/sdk/impl/w4;->y:Lcom/chartboost/sdk/impl/t3;

    .line 14
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string p2, "sdk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "google_sdk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, "Genymotion"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Android Simulator"

    .line 19
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->a:Ljava/lang/String;

    .line 23
    :goto_1
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string/jumbo p2, "unknown"

    goto :goto_2

    :cond_2
    move-object p2, p1

    :goto_2
    iput-object p2, p0, Lcom/chartboost/sdk/impl/w4;->k:Ljava/lang/String;

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->j:Ljava/lang/String;

    .line 25
    invoke-virtual {p10}, Lcom/chartboost/sdk/impl/m2;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->l:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Android "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->b:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->c:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->d:Ljava/lang/String;

    const-string p1, "9.2.0"

    .line 29
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->g:Ljava/lang/String;

    .line 30
    invoke-virtual {p10}, Lcom/chartboost/sdk/impl/m2;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->e:Ljava/lang/String;

    .line 31
    invoke-virtual {p10}, Lcom/chartboost/sdk/impl/m2;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->f:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p5}, Lcom/chartboost/sdk/impl/w4;->b(Lcom/chartboost/sdk/impl/v1;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->n:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p5}, Lcom/chartboost/sdk/impl/w4;->a(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->m:Lorg/json/JSONObject;

    .line 34
    invoke-static {}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->o:Ljava/lang/String;

    .line 35
    invoke-virtual {p4}, Lcom/chartboost/sdk/impl/q4;->a()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/w4;->p:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/f2;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->w:Lcom/chartboost/sdk/impl/f2;

    return-object v0
.end method

.method public final a(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/x1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/x1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/w4;->a(Lcom/chartboost/sdk/impl/v1;Lcom/chartboost/sdk/impl/x1;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object p1
.end method

.method public a(Lcom/chartboost/sdk/impl/v1;Lcom/chartboost/sdk/impl/x1;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/x1;->a(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public b()Lcom/chartboost/sdk/impl/m2;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->x:Lcom/chartboost/sdk/impl/m2;

    return-object v0
.end method

.method public final b(Lcom/chartboost/sdk/impl/v1;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/v1;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public c()Lcom/chartboost/sdk/impl/e3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->t:Lcom/chartboost/sdk/impl/e3;

    return-object v0
.end method

.method public d()Lcom/chartboost/sdk/impl/t3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->y:Lcom/chartboost/sdk/impl/t3;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->x:Lcom/chartboost/sdk/impl/m2;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/chartboost/sdk/impl/j4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->r:Lcom/chartboost/sdk/impl/j4;

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/impl/q4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->u:Lcom/chartboost/sdk/impl/q4;

    return-object v0
.end method

.method public h()Lcom/chartboost/sdk/impl/g5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->s:Lcom/chartboost/sdk/impl/g5;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->s:Lcom/chartboost/sdk/impl/g5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/g5;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public j()Lcom/chartboost/sdk/impl/l5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w4;->v:Lcom/chartboost/sdk/impl/l5;

    return-object v0
.end method
