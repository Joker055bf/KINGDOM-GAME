.class public abstract Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;
.super Ljava/lang/Object;
.source "baseThirdParty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public Link(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 0

    return-void
.end method

.method public Login(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .locals 0

    return-void
.end method
