.class public final synthetic Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/network/useragent/UserAgentProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/network/useragent/UserAgentProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/network/useragent/UserAgentProvider;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/network/useragent/UserAgentProvider;

    invoke-static {v0}, Lcom/vk/id/network/useragent/UserAgentProvider;->$r8$lambda$IGstywmWCLs2zkQEjTw_O7KVZeQ(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
