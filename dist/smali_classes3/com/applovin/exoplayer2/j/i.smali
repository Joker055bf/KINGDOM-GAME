.class public Lcom/applovin/exoplayer2/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/j/i$a;
    }
.end annotation


# static fields
.field public static final N:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcom/applovin/exoplayer2/j/i;

.field public static final p:Lcom/applovin/exoplayer2/j/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final A:Z

.field public final B:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final I:I

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Lcom/applovin/exoplayer2/common/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/w<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static synthetic $r8$lambda$XEXyrD0mfOjEIhe3hNXulCn8aAI(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;
    .locals 0

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/i;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 671
    new-instance v0, Lcom/applovin/exoplayer2/j/i$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/i$a;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/i$a;->b()Lcom/applovin/exoplayer2/j/i;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    .line 676
    sput-object v0, Lcom/applovin/exoplayer2/j/i;->p:Lcom/applovin/exoplayer2/j/i;

    .line 1019
    new-instance v0, Lcom/applovin/exoplayer2/j/i$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/i$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/i;->N:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method protected constructor <init>(Lcom/applovin/exoplayer2/j/i$a;)V
    .locals 1

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->a(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->q:I

    .line 814
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->b(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->r:I

    .line 815
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->c(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->s:I

    .line 816
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->d(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->t:I

    .line 817
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->e(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->u:I

    .line 818
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->f(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->v:I

    .line 819
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->g(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->w:I

    .line 820
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->h(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->x:I

    .line 821
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->i(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->y:I

    .line 822
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->j(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->z:I

    .line 823
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->k(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->A:Z

    .line 824
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->l(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->B:Lcom/applovin/exoplayer2/common/a/s;

    .line 826
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->m(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->C:Lcom/applovin/exoplayer2/common/a/s;

    .line 827
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->n(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->D:I

    .line 828
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->o(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->E:I

    .line 829
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->p(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->F:I

    .line 830
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->q(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->G:Lcom/applovin/exoplayer2/common/a/s;

    .line 832
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->r(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i;->H:Lcom/applovin/exoplayer2/common/a/s;

    .line 833
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->s(Lcom/applovin/exoplayer2/j/i$a;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i;->I:I

    .line 834
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->t(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->J:Z

    .line 836
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->u(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->K:Z

    .line 837
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->v(Lcom/applovin/exoplayer2/j/i$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i;->L:Z

    .line 838
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/i$a;->w(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/w;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/i;->M:Lcom/applovin/exoplayer2/common/a/w;

    return-void
.end method

.method private static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/i;
    .locals 1

    .line 1020
    new-instance v0, Lcom/applovin/exoplayer2/j/i$a;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/i$a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/i$a;->b()Lcom/applovin/exoplayer2/j/i;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1023
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(I)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/applovin/exoplayer2/j/i;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 852
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 855
    :cond_1
    check-cast p1, Lcom/applovin/exoplayer2/j/i;

    .line 857
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->q:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->q:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->r:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->r:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->s:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->s:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->t:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->u:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->v:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->v:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->w:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->w:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->x:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->x:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->A:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->A:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->y:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->y:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->z:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->z:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->B:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->B:Lcom/applovin/exoplayer2/common/a/s;

    .line 868
    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->C:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->C:Lcom/applovin/exoplayer2/common/a/s;

    .line 870
    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->D:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->D:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->E:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->E:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->F:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->F:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->G:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->G:Lcom/applovin/exoplayer2/common/a/s;

    .line 874
    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->H:Lcom/applovin/exoplayer2/common/a/s;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/i;->H:Lcom/applovin/exoplayer2/common/a/s;

    .line 875
    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/common/a/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->I:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/i;->I:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->J:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->J:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->K:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->K:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->L:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/i;->L:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->M:Lcom/applovin/exoplayer2/common/a/w;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/i;->M:Lcom/applovin/exoplayer2/common/a/w;

    .line 881
    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/common/a/w;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 888
    iget v0, p0, Lcom/applovin/exoplayer2/j/i;->q:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 889
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->r:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 890
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->s:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 891
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->t:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 892
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->u:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 893
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->v:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 894
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->w:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 895
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->x:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 896
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->A:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 897
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->y:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 898
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->z:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 899
    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->B:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 901
    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->C:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 902
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->D:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 903
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->E:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 904
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->F:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 905
    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->G:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 907
    iget-object v2, p0, Lcom/applovin/exoplayer2/j/i;->H:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 908
    iget v2, p0, Lcom/applovin/exoplayer2/j/i;->I:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 909
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->J:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 911
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->K:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 912
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/i;->L:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 913
    iget-object v1, p0, Lcom/applovin/exoplayer2/j/i;->M:Lcom/applovin/exoplayer2/common/a/w;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/w;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
