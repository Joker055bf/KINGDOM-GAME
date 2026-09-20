.class public final synthetic Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/huawei/hmf/tasks/OnFailureListener;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/huawei/hmf/tasks/OnFailureListener;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;->f$0:Lcom/huawei/hmf/tasks/OnFailureListener;

    iput-object p2, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;->f$0:Lcom/huawei/hmf/tasks/OnFailureListener;

    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda3;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->lambda$currentPlayerInfo$3(Lcom/huawei/hmf/tasks/OnFailureListener;Landroid/app/Activity;Ljava/lang/Exception;)V

    return-void
.end method
