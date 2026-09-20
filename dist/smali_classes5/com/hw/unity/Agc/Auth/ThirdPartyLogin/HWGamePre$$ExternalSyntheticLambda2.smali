.class public final synthetic Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/huawei/hmf/tasks/OnSuccessListener;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/huawei/hmf/tasks/OnSuccessListener;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;->f$0:Lcom/huawei/hmf/tasks/OnSuccessListener;

    iput-object p2, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;->f$0:Lcom/huawei/hmf/tasks/OnSuccessListener;

    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    check-cast p1, Lcom/huawei/hms/jos/games/player/Player;

    invoke-static {v0, v1, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->lambda$currentPlayerInfo$2(Lcom/huawei/hmf/tasks/OnSuccessListener;Landroid/app/Activity;Lcom/huawei/hms/jos/games/player/Player;)V

    return-void
.end method
