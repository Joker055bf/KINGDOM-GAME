.class Lcom/applovin/impl/sdk/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/l;II)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    iput p2, p0, Lcom/applovin/impl/sdk/l$2;->a:I

    iput p3, p0, Lcom/applovin/impl/sdk/l$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 143
    iget v0, p0, Lcom/applovin/impl/sdk/l$2;->a:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-static {v1}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/l;)I

    move-result v1

    div-int/2addr v0, v1

    .line 144
    iget v1, p0, Lcom/applovin/impl/sdk/l$2;->b:I

    iget-object v2, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-static {v2}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/l;)I

    move-result v2

    div-int/2addr v1, v2

    .line 145
    div-int/lit8 v2, v0, 0x2

    .line 146
    div-int/lit8 v3, v1, 0x2

    .line 147
    :goto_0
    iget v4, p0, Lcom/applovin/impl/sdk/l$2;->b:I

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 149
    :goto_1
    iget v5, p0, Lcom/applovin/impl/sdk/l$2;->a:I

    if-ge v4, v5, :cond_1

    .line 151
    iget-object v5, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v5, v6}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/l;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    iget-object v0, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/l;I)I

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/l;)V

    return-void

    :cond_0
    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/sdk/l;->d(Lcom/applovin/impl/sdk/l;)I

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-static {p1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/applovin/impl/sdk/l$2;->c:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->a()V

    :cond_0
    return-void
.end method
