.class public final synthetic Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4ftgs/channel/global/listener/IGetCodeListener;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/ui/LoginSelection;Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(ZILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->$r8$lambda$CWr5PJmK0vFehGIONys7kCqlhQ0(Lcom/t4ftgs/channel/global/ui/LoginSelection;Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method
