.class Lcom/applovin/impl/sdk/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/i;->scf(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;

.field final synthetic b:Lcom/applovin/impl/sdk/i;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/applovin/impl/sdk/i$1;->b:Lcom/applovin/impl/sdk/i;

    iput-object p2, p0, Lcom/applovin/impl/sdk/i$1;->a:Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlowCompleted(Lcom/applovin/sdk/AppLovinCFError;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/applovin/impl/sdk/i$1;->a:Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;->onFlowCompleted(Lcom/applovin/sdk/AppLovinCFError;)V

    return-void
.end method
