.class Lcom/applovin/impl/b/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/a/b;->a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;

.field final synthetic c:Lcom/applovin/impl/b/a/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/a/b;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/applovin/impl/b/a/b$1;->c:Lcom/applovin/impl/b/a/b;

    iput-object p2, p0, Lcom/applovin/impl/b/a/b$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/impl/b/a/b$1;->b:Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/applovin/impl/b/a/b$1;->c:Lcom/applovin/impl/b/a/b;

    iget-object v1, p0, Lcom/applovin/impl/b/a/b$1;->a:Landroid/app/Activity;

    new-instance v2, Lcom/applovin/impl/b/a/b$1$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/b/a/b$1$1;-><init>(Lcom/applovin/impl/b/a/b$1;)V

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/b/a/b;->b(Lcom/applovin/impl/b/a/b;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
