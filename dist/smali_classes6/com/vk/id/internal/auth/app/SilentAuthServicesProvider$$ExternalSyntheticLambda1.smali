.class public final synthetic Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda1;->f$0:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    check-cast p1, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;

    invoke-static {v0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->$r8$lambda$Ra2P285cLOKfbvGXdcoQZS_n2Yk(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
