.class public final synthetic Lcom/vk/id/network/http/ssl/SSLConfigurator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/network/http/ssl/SSLConfigurator;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/network/http/ssl/SSLConfigurator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/network/http/ssl/SSLConfigurator;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/network/http/ssl/SSLConfigurator$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/network/http/ssl/SSLConfigurator;

    invoke-static {v0}, Lcom/vk/id/network/http/ssl/SSLConfigurator;->$r8$lambda$E323uP5cT0Ccstpm_ptm-Wxa7fA(Lcom/vk/id/network/http/ssl/SSLConfigurator;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
