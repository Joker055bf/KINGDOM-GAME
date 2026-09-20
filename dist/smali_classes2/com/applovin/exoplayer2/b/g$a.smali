.class public final Lcom/applovin/exoplayer2/b/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/applovin/exoplayer2/b/g;


# direct methods
.method public static synthetic $r8$lambda$2fHBOCx5OXsvH4mQiXaUbLAEu9A(Lcom/applovin/exoplayer2/b/g$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/g$a;->b(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4zybNEL_VP-6LRTcNFqIbdumph8(Lcom/applovin/exoplayer2/b/g$a;Lcom/applovin/exoplayer2/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/g$a;->d(Lcom/applovin/exoplayer2/c/e;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7UNtG5NEHnlkUUCm7Wg9gwhItig(Lcom/applovin/exoplayer2/b/g$a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/b/g$a;->b(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Palrhq7BShBb8T74cn6eZ402R8Q(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/g$a;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TI2QvKK8YJRNtSFo7Lwzks6Xhvg(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/applovin/exoplayer2/b/g$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$afdBYfvjp56CLQI_67AR8BQ1YDE(Lcom/applovin/exoplayer2/b/g$a;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/b/g$a;->b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYuNIlFxpHDJTJilMh6it02x4s4(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/g$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eP-VkJhL7nuEghALxnLtdKs8Ohc(Lcom/applovin/exoplayer2/b/g$a;Lcom/applovin/exoplayer2/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/g$a;->c(Lcom/applovin/exoplayer2/c/e;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tfjQSCzDN8llfN3hYQk3_JnHjJQ(Lcom/applovin/exoplayer2/b/g$a;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/applovin/exoplayer2/b/g$a;->b(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7zI12UAErgHksZQ9iWrsc-7Oa8(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/g$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/applovin/exoplayer2/b/g;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 162
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    .line 163
    iput-object p2, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    return-void
.end method

.method private synthetic b(IJJ)V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/applovin/exoplayer2/b/g;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 212
    invoke-interface/range {v1 .. v6}, Lcom/applovin/exoplayer2/b/g;->a(IJJ)V

    return-void
.end method

.method private synthetic b(J)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/b/g;->a(J)V

    return-void
.end method

.method private synthetic b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->a(Lcom/applovin/exoplayer2/v;)V

    .line 193
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/b/g;->b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;JJ)V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/applovin/exoplayer2/b/g;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 180
    invoke-interface/range {v1 .. v6}, Lcom/applovin/exoplayer2/b/g;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic b(Z)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->a_(Z)V

    return-void
.end method

.method private synthetic c(Lcom/applovin/exoplayer2/c/e;)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/e;->a()V

    .line 230
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->d(Lcom/applovin/exoplayer2/c/e;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Exception;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic d(Lcom/applovin/exoplayer2/c/e;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->c(Lcom/applovin/exoplayer2/c/e;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Exception;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->b:Lcom/applovin/exoplayer2/b/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/g;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/g;->b(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 9

    .line 208
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    new-instance v8, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda4;-><init>(Lcom/applovin/exoplayer2/b/g$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/exoplayer2/b/g$a;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/c/e;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/exoplayer2/b/g$a;Lcom/applovin/exoplayer2/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda8;-><init>(Lcom/applovin/exoplayer2/b/g$a;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda7;-><init>(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 219
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda6;-><init>(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 176
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    new-instance v8, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/exoplayer2/b/g$a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/c/e;)V
    .locals 2

    .line 225
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/e;->a()V

    .line 226
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda5;-><init>(Lcom/applovin/exoplayer2/b/g$a;Lcom/applovin/exoplayer2/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/g$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/b/g$a$$ExternalSyntheticLambda9;-><init>(Lcom/applovin/exoplayer2/b/g$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
