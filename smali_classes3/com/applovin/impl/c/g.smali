.class public Lcom/applovin/impl/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/c/g;->a:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/c/g;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Landroid/widget/ImageView;
    .locals 1

    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    const/16 p1, 0x8

    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/applovin/impl/sdk/utils/Utils;->setImageUrl(Ljava/lang/String;Landroid/widget/ImageView;Lcom/applovin/impl/sdk/p;)V

    return-object v0
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/g;
    .locals 5

    if-eqz p0, :cond_9

    if-eqz p1, :cond_8

    const-string v0, "StaticResource"

    .line 39
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 46
    :cond_0
    new-instance v1, Lcom/applovin/impl/c/g;

    invoke-direct {v1}, Lcom/applovin/impl/c/g;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/c/g;->c:Landroid/net/Uri;

    const-string v0, "IconClickThrough"

    .line 49
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/c/g;->d:Landroid/net/Uri;

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object p0

    const-string v3, "height"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    :cond_3
    sget-object p0, Lcom/applovin/impl/sdk/c/b;->eQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez v0, :cond_5

    if-lez v2, :cond_5

    int-to-float p1, v0

    int-to-float v3, v2

    div-float/2addr p1, v3

    float-to-double v3, p1

    .line 75
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 76
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lt v0, v2, :cond_4

    .line 81
    iput p0, v1, Lcom/applovin/impl/c/g;->e:I

    int-to-double p0, p0

    div-double/2addr p0, v3

    double-to-int p0, p0

    .line 82
    iput p0, v1, Lcom/applovin/impl/c/g;->f:I

    goto :goto_1

    .line 87
    :cond_4
    iput p0, v1, Lcom/applovin/impl/c/g;->f:I

    int-to-double p0, p0

    mul-double/2addr p0, v3

    double-to-int p0, p0

    .line 88
    iput p0, v1, Lcom/applovin/impl/c/g;->e:I

    goto :goto_1

    .line 93
    :cond_5
    iput p0, v1, Lcom/applovin/impl/c/g;->f:I

    iput p0, v1, Lcom/applovin/impl/c/g;->e:I

    :goto_1
    return-object v1

    .line 42
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p0

    const-string p1, "VastIndustryIcon"

    const-string v0, "Unable to create industry icon.  No valid image URL found."

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/applovin/impl/c/g;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/applovin/impl/c/g;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/applovin/impl/c/g;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/applovin/impl/c/g;->f:I

    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/applovin/impl/c/g;->a:Ljava/util/Set;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/c/k;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/applovin/impl/c/g;->b:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastIndustryIcon{imageUri=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/applovin/impl/c/g;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', clickUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/applovin/impl/c/g;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/applovin/impl/c/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/applovin/impl/c/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
