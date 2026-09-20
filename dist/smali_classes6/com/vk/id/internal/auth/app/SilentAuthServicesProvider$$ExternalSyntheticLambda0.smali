.class public final synthetic Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    iput-object p2, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    iget-object v1, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, v1, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->$r8$lambda$nM-bIKqRzdmBgawoJACeY-h8YXI(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;

    move-result-object p1

    return-object p1
.end method
