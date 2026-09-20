.class Lcom/openmediation/sdk/a/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/a/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/i;->a(Landroid/app/Activity;Lcom/crosspromotion/sdk/bean/AdBean;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/openmediation/sdk/a/i;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/i$b;->a:Lcom/openmediation/sdk/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/a/i$b;->a:Lcom/openmediation/sdk/a/i;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/core/a;->n()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromotionAd show failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    invoke-static {}, Lcom/openmediation/sdk/a/j;->c()Lcom/openmediation/sdk/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/a/j;->d()V

    iget-object p1, p0, Lcom/openmediation/sdk/a/i$b;->a:Lcom/openmediation/sdk/a/i;

    const/16 v0, 0x133

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/openmediation/sdk/a/i;->a(Lcom/openmediation/sdk/a/i;Lcom/crosspromotion/sdk/utils/error/Error;)V

    iget-object p1, p0, Lcom/openmediation/sdk/a/i$b;->a:Lcom/openmediation/sdk/a/i;

    invoke-static {p1}, Lcom/openmediation/sdk/a/i;->d(Lcom/openmediation/sdk/a/i;)V

    return-void
.end method
