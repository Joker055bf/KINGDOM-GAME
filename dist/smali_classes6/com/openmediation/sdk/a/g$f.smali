.class Lcom/openmediation/sdk/a/g$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/crosspromotion/sdk/utils/error/Error;

.field final synthetic c:Lcom/openmediation/sdk/a/g;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g$f;->c:Lcom/openmediation/sdk/a/g;

    iput-object p2, p0, Lcom/openmediation/sdk/a/g$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/a/g$f;->b:Lcom/crosspromotion/sdk/utils/error/Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/a/g$f;->c:Lcom/openmediation/sdk/a/g;

    invoke-static {v0}, Lcom/openmediation/sdk/a/g;->a(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/banner/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/g$f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/g$f;->b:Lcom/crosspromotion/sdk/utils/error/Error;

    invoke-interface {v0, v1, v2}, Lcom/crosspromotion/sdk/banner/BannerAdListener;->onBannerAdShowFailed(Ljava/lang/String;Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method
