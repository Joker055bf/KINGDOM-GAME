.class public final synthetic Lcom/vk/id/VKID$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/internal/di/VKIDDeps;

.field public final synthetic f$1:Lcom/vk/id/VKID;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/internal/di/VKIDDeps;Lcom/vk/id/VKID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/VKID$$ExternalSyntheticLambda4;->f$0:Lcom/vk/id/internal/di/VKIDDeps;

    iput-object p2, p0, Lcom/vk/id/VKID$$ExternalSyntheticLambda4;->f$1:Lcom/vk/id/VKID;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/id/VKID$$ExternalSyntheticLambda4;->f$0:Lcom/vk/id/internal/di/VKIDDeps;

    iget-object v1, p0, Lcom/vk/id/VKID$$ExternalSyntheticLambda4;->f$1:Lcom/vk/id/VKID;

    invoke-static {v0, v1}, Lcom/vk/id/VKID;->$r8$lambda$IArDIRE_wk96fDwVwKPZoqNmvDE(Lcom/vk/id/internal/di/VKIDDeps;Lcom/vk/id/VKID;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
