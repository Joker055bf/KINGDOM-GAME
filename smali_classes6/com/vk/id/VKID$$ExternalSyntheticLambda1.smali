.class public final synthetic Lcom/vk/id/VKID$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/VKID;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/VKID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/VKID$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/VKID;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/VKID$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/VKID;

    invoke-static {v0}, Lcom/vk/id/VKID;->$r8$lambda$-GKvZBhEfLSKVK8XMngGx4O--A0(Lcom/vk/id/VKID;)Lcom/vk/id/AccessToken;

    move-result-object v0

    return-object v0
.end method
