.class public Lcom/applovin/exoplayer2/j/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/applovin/exoplayer2/common/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/w<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 103
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->a:I

    .line 104
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->b:I

    .line 105
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->c:I

    .line 106
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->d:I

    .line 107
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->i:I

    .line 108
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->j:I

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->k:Z

    .line 110
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/j/i$a;->l:Lcom/applovin/exoplayer2/common/a/s;

    .line 112
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/j/i$a;->m:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v1, 0x0

    .line 113
    iput v1, p0, Lcom/applovin/exoplayer2/j/i$a;->n:I

    .line 114
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->o:I

    .line 115
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->p:I

    .line 116
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->q:Lcom/applovin/exoplayer2/common/a/s;

    .line 118
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->r:Lcom/applovin/exoplayer2/common/a/s;

    .line 119
    iput v1, p0, Lcom/applovin/exoplayer2/j/i$a;->s:I

    .line 120
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->t:Z

    .line 122
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->u:Z

    .line 123
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/i$a;->v:Z

    .line 124
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/w;->g()Lcom/applovin/exoplayer2/common/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->w:Lcom/applovin/exoplayer2/common/a/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/i$a;-><init>()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;->b(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/j/i$a;->b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 148
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->a:I

    const/4 v0, 0x7

    .line 151
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->r:I

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->b:I

    const/16 v0, 0x8

    .line 154
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->s:I

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->c:I

    const/16 v0, 0x9

    .line 157
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->t:I

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->d:I

    const/16 v0, 0xa

    .line 159
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->e:I

    const/16 v0, 0xb

    .line 162
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->v:I

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->f:I

    const/16 v0, 0xc

    .line 165
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->w:I

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->g:I

    const/16 v0, 0xd

    .line 168
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->x:I

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->h:I

    const/16 v0, 0xe

    .line 170
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->i:I

    const/16 v0, 0xf

    .line 172
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v1, v1, Lcom/applovin/exoplayer2/j/i;->z:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->j:I

    const/16 v0, 0x10

    .line 175
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/j/i;->A:Z

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->k:Z

    const/16 v0, 0x11

    .line 180
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 179
    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 178
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/s;->a([Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->l:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x1

    .line 185
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    .line 184
    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 186
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i$a;->a([Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->m:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x2

    .line 189
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v2, v2, Lcom/applovin/exoplayer2/j/i;->D:I

    .line 188
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->n:I

    const/16 v0, 0x12

    .line 193
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v2, v2, Lcom/applovin/exoplayer2/j/i;->E:I

    .line 192
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->o:I

    const/16 v0, 0x13

    .line 197
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v2, v2, Lcom/applovin/exoplayer2/j/i;->F:I

    .line 196
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->p:I

    const/16 v0, 0x14

    .line 201
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    .line 200
    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 199
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/s;->a([Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->q:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x3

    .line 207
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    .line 206
    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 205
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i$a;->a([Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/i$a;->r:Lcom/applovin/exoplayer2/common/a/s;

    const/4 v0, 0x4

    .line 211
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget v2, v2, Lcom/applovin/exoplayer2/j/i;->I:I

    .line 210
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->s:I

    const/4 v0, 0x5

    .line 215
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/j/i;->J:Z

    .line 214
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->t:Z

    const/16 v0, 0x15

    .line 220
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/j/i;->K:Z

    .line 219
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->u:Z

    const/16 v0, 0x16

    .line 223
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/exoplayer2/j/i;->o:Lcom/applovin/exoplayer2/j/i;

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/j/i;->L:Z

    .line 222
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/i$a;->v:Z

    const/16 v0, 0x17

    .line 230
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/i;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v1, [I

    .line 229
    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 228
    invoke-static {p1}, Lcom/applovin/exoplayer2/common/b/c;->a([I)Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/w;->a(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/w;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/i$a;->w:Lcom/applovin/exoplayer2/common/a/w;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->a:I

    return p0
.end method

.method private static a([Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->i()Lcom/applovin/exoplayer2/common/a/s$a;

    move-result-object v0

    .line 648
    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 649
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/common/a/s$a;->b(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s$a;->a()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 629
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "captioning"

    .line 635
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    .line 636
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    .line 639
    iput v0, p0, Lcom/applovin/exoplayer2/j/i$a;->s:I

    .line 640
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 642
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/s;->a(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/i$a;->r:Lcom/applovin/exoplayer2/common/a/s;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->c:I

    return p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->d:I

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->e:I

    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->f:I

    return p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->g:I

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->h:I

    return p0
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->i:I

    return p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->j:I

    return p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/j/i$a;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->l:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->m:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->n:I

    return p0
.end method

.method static synthetic o(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->o:I

    return p0
.end method

.method static synthetic p(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->p:I

    return p0
.end method

.method static synthetic q(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->q:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic r(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/s;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->r:Lcom/applovin/exoplayer2/common/a/s;

    return-object p0
.end method

.method static synthetic s(Lcom/applovin/exoplayer2/j/i$a;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/applovin/exoplayer2/j/i$a;->s:I

    return p0
.end method

.method static synthetic t(Lcom/applovin/exoplayer2/j/i$a;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->t:Z

    return p0
.end method

.method static synthetic u(Lcom/applovin/exoplayer2/j/i$a;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->u:Z

    return p0
.end method

.method static synthetic v(Lcom/applovin/exoplayer2/j/i$a;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/i$a;->v:Z

    return p0
.end method

.method static synthetic w(Lcom/applovin/exoplayer2/j/i$a;)Lcom/applovin/exoplayer2/common/a/w;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/i$a;->w:Lcom/applovin/exoplayer2/common/a/w;

    return-object p0
.end method


# virtual methods
.method public b(IIZ)Lcom/applovin/exoplayer2/j/i$a;
    .locals 0

    .line 398
    iput p1, p0, Lcom/applovin/exoplayer2/j/i$a;->i:I

    .line 399
    iput p2, p0, Lcom/applovin/exoplayer2/j/i$a;->j:I

    .line 400
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/i$a;->k:Z

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;
    .locals 2

    .line 524
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 525
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;->a(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;
    .locals 1

    .line 372
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 373
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/exoplayer2/j/i$a;->b(IIZ)Lcom/applovin/exoplayer2/j/i$a;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/applovin/exoplayer2/j/i;
    .locals 1

    .line 623
    new-instance v0, Lcom/applovin/exoplayer2/j/i;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/i;-><init>(Lcom/applovin/exoplayer2/j/i$a;)V

    return-object v0
.end method
