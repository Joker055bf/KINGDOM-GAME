.class public final Lcom/applovin/exoplayer2/ab$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/applovin/exoplayer2/ab$d;

.field public final d:Lcom/applovin/exoplayer2/ab$a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/exoplayer2/ab$d;Lcom/applovin/exoplayer2/ab$a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/ab$d;",
            "Lcom/applovin/exoplayer2/ab$a;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$f;->a:Landroid/net/Uri;

    .line 904
    iput-object p2, p0, Lcom/applovin/exoplayer2/ab$f;->b:Ljava/lang/String;

    .line 905
    iput-object p3, p0, Lcom/applovin/exoplayer2/ab$f;->c:Lcom/applovin/exoplayer2/ab$d;

    .line 906
    iput-object p4, p0, Lcom/applovin/exoplayer2/ab$f;->d:Lcom/applovin/exoplayer2/ab$a;

    .line 907
    iput-object p5, p0, Lcom/applovin/exoplayer2/ab$f;->e:Ljava/util/List;

    .line 908
    iput-object p6, p0, Lcom/applovin/exoplayer2/ab$f;->f:Ljava/lang/String;

    .line 909
    iput-object p7, p0, Lcom/applovin/exoplayer2/ab$f;->g:Ljava/util/List;

    .line 910
    iput-object p8, p0, Lcom/applovin/exoplayer2/ab$f;->h:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/exoplayer2/ab$d;Lcom/applovin/exoplayer2/ab$a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/applovin/exoplayer2/ab$1;)V
    .locals 0

    .line 859
    invoke-direct/range {p0 .. p8}, Lcom/applovin/exoplayer2/ab$f;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/exoplayer2/ab$d;Lcom/applovin/exoplayer2/ab$a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 918
    :cond_0
    instance-of v1, p1, Lcom/applovin/exoplayer2/ab$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 921
    :cond_1
    check-cast p1, Lcom/applovin/exoplayer2/ab$f;

    .line 923
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->b:Ljava/lang/String;

    .line 924
    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->c:Lcom/applovin/exoplayer2/ab$d;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->c:Lcom/applovin/exoplayer2/ab$d;

    .line 925
    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->d:Lcom/applovin/exoplayer2/ab$a;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->d:Lcom/applovin/exoplayer2/ab$a;

    .line 926
    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->e:Ljava/util/List;

    .line 927
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->f:Ljava/lang/String;

    .line 928
    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/applovin/exoplayer2/ab$f;->g:Ljava/util/List;

    .line 929
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->h:Ljava/lang/Object;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ab$f;->h:Ljava/lang/Object;

    .line 930
    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/applovin/exoplayer2/ab$f;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 936
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 937
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->c:Lcom/applovin/exoplayer2/ab$d;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ab$d;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 938
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->d:Lcom/applovin/exoplayer2/ab$a;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ab$a;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 939
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->e:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 940
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 941
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->g:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 942
    iget-object v1, p0, Lcom/applovin/exoplayer2/ab$f;->h:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
