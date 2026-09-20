.class public final synthetic Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/auth/VKIDAuthParams;

.field public final synthetic f$1:Lcom/vk/id/StatParams;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/auth/VKIDAuthParams;

    iput-object p2, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/StatParams;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v1, p0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/StatParams;

    invoke-static {v0, v1}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;->$r8$lambda$0RwD7gcmF91fzxVoPQTjCQ5dwf8(Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
