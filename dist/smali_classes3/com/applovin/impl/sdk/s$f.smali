.class public Lcom/applovin/impl/sdk/s$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:D


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 6

    .line 1153
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$f;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1157
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/applovin/impl/sdk/s$f;->g:F

    .line 1158
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/applovin/impl/sdk/s$f;->e:F

    .line 1159
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lcom/applovin/impl/sdk/s$f;->f:F

    .line 1160
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/applovin/impl/sdk/s$f;->d:I

    .line 1162
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 1163
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/applovin/impl/sdk/s$f;->b:I

    .line 1164
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/applovin/impl/sdk/s$f;->c:I

    .line 1166
    iget p1, p0, Lcom/applovin/impl/sdk/s$f;->b:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p0, Lcom/applovin/impl/sdk/s$f;->c:I

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1167
    iget p1, p0, Lcom/applovin/impl/sdk/s$f;->e:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/sdk/s$f;->h:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 1142
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$f;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1144
    iget v0, p0, Lcom/applovin/impl/sdk/s$f;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1145
    iget v0, p0, Lcom/applovin/impl/sdk/s$f;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1146
    iget v0, p0, Lcom/applovin/impl/sdk/s$f;->d:I

    return v0
.end method

.method public d()F
    .locals 1

    .line 1147
    iget v0, p0, Lcom/applovin/impl/sdk/s$f;->e:F

    return v0
.end method

.method public e()F
    .locals 1

    .line 1148
    iget v0, p0, Lcom/applovin/impl/sdk/s$f;->f:F

    return v0
.end method

.method public f()F
    .locals 1

    .line 1149
    iget v0, p0, Lcom/applovin/impl/sdk/s$f;->g:F

    return v0
.end method

.method public g()D
    .locals 2

    .line 1150
    iget-wide v0, p0, Lcom/applovin/impl/sdk/s$f;->h:D

    return-wide v0
.end method
