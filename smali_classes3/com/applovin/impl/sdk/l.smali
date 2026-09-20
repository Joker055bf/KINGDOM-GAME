.class public Lcom/applovin/impl/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/l$b;,
        Lcom/applovin/impl/sdk/l$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Lcom/applovin/impl/sdk/y;

.field private final c:J

.field private final d:J

.field private final e:I

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Landroid/os/Handler;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Ljava/lang/Runnable;

.field private k:Lcom/applovin/impl/sdk/l$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/applovin/impl/sdk/l;->g:I

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BlackViewDetector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/l;->i:Landroid/os/HandlerThread;

    .line 51
    new-instance v0, Lcom/applovin/impl/sdk/l$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/l$1;-><init>(Lcom/applovin/impl/sdk/l;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/l;->j:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/applovin/impl/sdk/l;->a:Lcom/applovin/impl/sdk/p;

    .line 66
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    .line 67
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fI:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/l;->c:J

    .line 68
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fH:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/l;->d:J

    .line 69
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/sdk/l;->e:I

    return-void
.end method

.method private a(Landroid/view/View;Lcom/applovin/impl/sdk/l$b;)V
    .locals 8

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 243
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const-string v5, "BlackViewDetector"

    const/4 v6, 0x1

    if-lt v3, v4, :cond_3

    .line 248
    iget-object v3, p0, Lcom/applovin/impl/sdk/l;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/a;->b()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 252
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    const-string v0, "Failed to capture screenshot due to no active activity"

    invoke-virtual {p1, v5, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-interface {p2, v4}, Lcom/applovin/impl/sdk/l$b;->a(Z)V

    return-void

    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 259
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 260
    new-instance p1, Landroid/graphics/Rect;

    aget v4, v7, v4

    aget v7, v7, v6

    add-int/2addr v0, v4

    add-int/2addr v1, v7

    invoke-direct {p1, v4, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/l$4;

    invoke-direct {v1, p0, p2, v2}, Lcom/applovin/impl/sdk/l$4;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/l$b;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, p1, v2, v1, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 285
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to capture screenshot due to exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    invoke-interface {p2, v6}, Lcom/applovin/impl/sdk/l$b;->a(Z)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    const-string v0, "Unable to capture screenshots on views below API 26"

    invoke-virtual {p1, v5, v0}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_4
    invoke-interface {p2, v6}, Lcom/applovin/impl/sdk/l$b;->a(Z)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/applovin/impl/sdk/l;->b()V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 236
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/l;I)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/l;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/l;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/applovin/impl/sdk/l;->e:I

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/l;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/applovin/impl/sdk/l;->g:I

    return p1
.end method

.method private b()V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "BlackViewDetector"

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    const-string v2, "Monitored view no longer exists."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/l;->a()V

    return-void

    .line 124
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking for black view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_0

    .line 137
    :cond_3
    new-instance v1, Lcom/applovin/impl/sdk/l$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/applovin/impl/sdk/l$2;-><init>(Lcom/applovin/impl/sdk/l;II)V

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/l;->a(Landroid/view/View;Lcom/applovin/impl/sdk/l$b;)V

    return-void

    .line 131
    :cond_4
    :goto_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Monitored view is not visible due to dimensions (width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/applovin/impl/sdk/l;->g:I

    .line 133
    invoke-direct {p0}, Lcom/applovin/impl/sdk/l;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 181
    iget-wide v0, p0, Lcom/applovin/impl/sdk/l;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    .line 183
    iget v2, p0, Lcom/applovin/impl/sdk/l;->g:I

    if-le v2, v3, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/applovin/impl/sdk/l;->d()V

    .line 187
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/l;->a()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/l;->h:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 192
    iget-object v3, p0, Lcom/applovin/impl/sdk/l;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    const-string v1, "BlackViewDetector"

    const-string v2, "Monitoring handler was unexpectedly null"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/l;->a()V

    goto :goto_0

    .line 203
    :cond_3
    iget v0, p0, Lcom/applovin/impl/sdk/l;->g:I

    if-ne v0, v3, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/applovin/impl/sdk/l;->d()V

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/l;->a()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/l;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/applovin/impl/sdk/l;->c()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/l;)I
    .locals 2

    .line 21
    iget v0, p0, Lcom/applovin/impl/sdk/l;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/impl/sdk/l;->g:I

    return v0
.end method

.method private d()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 215
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detected black view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlackViewDetector"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/l$3;

    invoke-direct {v1, p0, v0}, Lcom/applovin/impl/sdk/l$3;-><init>(Lcom/applovin/impl/sdk/l;Landroid/view/View;)V

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/l$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/l;->k:Lcom/applovin/impl/sdk/l$a;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopped monitoring view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlackViewDetector"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 105
    iget-object v2, p0, Lcom/applovin/impl/sdk/l;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iput-object v1, p0, Lcom/applovin/impl/sdk/l;->h:Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 111
    iput-object v1, p0, Lcom/applovin/impl/sdk/l;->k:Lcom/applovin/impl/sdk/l$a;

    return-void
.end method

.method public a(Landroid/view/View;Lcom/applovin/impl/sdk/l$a;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->fG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "BlackViewDetector"

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Monitoring is already in progress for a view:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 83
    :cond_1
    iput-object p2, p0, Lcom/applovin/impl/sdk/l;->k:Lcom/applovin/impl/sdk/l$a;

    .line 84
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/l;->f:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 85
    iput p2, p0, Lcom/applovin/impl/sdk/l;->g:I

    .line 87
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/sdk/l;->b:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Started monitoring view: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/sdk/l;->i:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/applovin/impl/sdk/l;->i:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/l;->h:Landroid/os/Handler;

    .line 93
    iget-object p2, p0, Lcom/applovin/impl/sdk/l;->j:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/applovin/impl/sdk/l;->d:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
