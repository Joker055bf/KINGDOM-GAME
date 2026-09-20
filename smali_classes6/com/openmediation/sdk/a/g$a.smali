.class Lcom/openmediation/sdk/a/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/g;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/openmediation/sdk/a/g;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g$a;->b:Lcom/openmediation/sdk/a/g;

    iput-object p2, p0, Lcom/openmediation/sdk/a/g$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/a/g$a;->b:Lcom/openmediation/sdk/a/g;

    invoke-static {v0}, Lcom/openmediation/sdk/a/g;->e(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/promotion/PromotionAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/g$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/crosspromotion/sdk/promotion/PromotionAdListener;->onPromotionAdLoadSuccess(Ljava/lang/String;)V

    return-void
.end method
