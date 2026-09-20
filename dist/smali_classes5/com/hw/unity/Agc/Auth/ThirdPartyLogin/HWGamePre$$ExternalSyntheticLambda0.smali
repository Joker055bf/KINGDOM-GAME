.class public final synthetic Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    check-cast p1, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    invoke-static {v0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/HWGamePre;->lambda$Login$0(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;)V

    return-void
.end method
